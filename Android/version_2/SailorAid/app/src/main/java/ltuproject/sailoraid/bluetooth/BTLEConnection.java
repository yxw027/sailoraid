package ltuproject.sailoraid.bluetooth;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.StringDef;
import android.util.Log;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import ltuproject.sailoraid.R;

import static android.bluetooth.BluetoothGatt.GATT_SUCCESS;
import static java.lang.Thread.sleep;

/**
 * Created by Henrik on 2017-09-13.
 */

public class BTLEConnection extends Service {
    private final static String TAG = BTLEConnection.class.getSimpleName();

    private BluetoothManager mBluetoothManager;
    private BluetoothAdapter mBluetoothAdapter;
    private String mBluetoothDeviceAddress;
    private BluetoothGatt mBluetoothGatt;
    private List<BluetoothGattService> supportedGattServices;
    private BluetoothGattService mGattService;
    private ArrayList<BluetoothGattService> mServiceList;
    private List<BluetoothGattCharacteristic> mCharacteristicList;
    private BluetoothGattCharacteristic mNotifyCharacteristic;
    public static final String DATA_TYPE_INCLINE = "Incline";
    public static final String DATA_TYPE_POSITION = "Position";
    public static final String DATA_TYPE_PRESSURE = "Pressure";
    public static final String DATA_TYPE_HUMIDITY = "Humidity";
    public static final String DATA_TYPE_TEMPERATURE = "Temperature";
    public static final String DATA_TYPE_COMPASS = "Compass";
    public static final String DATA_TYPE_FREE_FALL = "Free fall";
    public static final String DATA_TYPE_SOG = "Speed";

    private int mConnectionState = STATE_DISCONNECTED;

    private static final int STATE_DISCONNECTED = 0;
    private static final int STATE_CONNECTING = 1;
    private static final int STATE_CONNECTED = 2;

    public final static String ACTION_GATT_CONNECTED =
            "ltuproject.sailoraid.bluetooth.BTLEConnection.ACTION_GATT_CONNECTED";
    public final static String ACTION_GATT_DISCONNECTED =
            "ltuproject.sailoraid.bluetooth.BTLEConnection.ACTION_GATT_DISCONNECTED";
    public final static String ACTION_GATT_SERVICES_DISCOVERED =
            "ltuproject.sailoraid.bluetooth.BTLEConnection.ACTION_GATT_SERVICES_DISCOVERED";
    public final static String ACTION_GATT_SERVICE_NOTIFIED =
            "ltuproject.sailoraid.bluetooth.BTLEConnection.ACTION_GATT_SERVICE_NOTIFIED";
    public final static String ACTION_DATA_AVAILABLE =
            "ltuproject.sailoraid.bluetooth.BTLEConnection.ACTION_DATA_AVAILABLE";
    public final static String EXTRA_DATA =
            "ltuproject.sailoraid.bluetooth.BTLEConnection.EXTRA_DATA";
    public final static String EXTRA_TYPE =
            "ltuproject.sailoraid.bluetooth.BTLEConnection.EXTRA_TYPE";

    public final static UUID UUID_HEART_RATE_MEASUREMENT =
            UUID.fromString(SampleGattAttributes.HEART_RATE_MEASUREMENT);
    public final static UUID UUID_ACCELEROMETER_MEASUREMENT =
            UUID.fromString(SampleGattAttributes.ACCELEROMETER_MEASUREMENT);
    public final static UUID UUID_FREE_FALL_MEASUREMENT =
            UUID.fromString(SampleGattAttributes.FREE_FALL_MEASUREMENT);
    public final static UUID UUID_GPS_MEASUREMENT =
            UUID.fromString(SampleGattAttributes.NUCLEO_GPS_MEASUREMENT);
    public final static UUID UUID_IMU_ACCEL_MEASUREMENT =
            UUID.fromString(SampleGattAttributes.IMU_ACCEL_MEASUREMENT);
    public final static UUID UUID_IMU_GYRO_MEASUREMENT =
            UUID.fromString(SampleGattAttributes.IMU_GYRO_MEASUREMENT);
    public final static UUID UUID_TEMP_MEASUREMENT =
            UUID.fromString(SampleGattAttributes.TEMP_MEASUREMENT);
    public final static UUID UUID_PRESSURE_MEASUREMENT =
            UUID.fromString(SampleGattAttributes.PRESSURE_MEASUREMENT);
    public final static UUID UUID_HUMIDITY_MEASUREMENT =
            UUID.fromString(SampleGattAttributes.HUMIDITY_MEASUREMENT);
    public final static UUID UUID_COMPASS_MEASUREMENT =
            UUID.fromString(SampleGattAttributes.COMPASS_MEASUREMENT);


    private Context contx;
    private int listIterator = 0;
    private int serviceIterator = 0;

    public BTLEConnection(Context contx, BluetoothAdapter btAdapter) {
        this.contx = contx;
        this.mBluetoothAdapter = btAdapter;
        mServiceList = new ArrayList<BluetoothGattService>();

    }

    // Various callback methods defined by the BLE API.
    public final BluetoothGattCallback mGattCallback =
            new BluetoothGattCallback() {
                @Override
                public void onConnectionStateChange(BluetoothGatt gatt, int status,
                                                    int newState) {
                    String intentAction;
                    if (newState == BluetoothProfile.STATE_CONNECTED) {
                        intentAction = ACTION_GATT_CONNECTED;
                        mConnectionState = STATE_CONNECTED;
                        mBluetoothGatt = gatt;
                        broadcastUpdate(intentAction);
                        Log.i(TAG, "Connected to GATT server.");
                        Log.i(TAG, "Attempting to start service discovery:" +
                                mBluetoothGatt.discoverServices());

                    } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
                        intentAction = ACTION_GATT_DISCONNECTED;
                        mConnectionState = STATE_DISCONNECTED;
                        Log.i(TAG, "Disconnected from GATT server.");
                        broadcastUpdate(intentAction);
                    }
                }

                @Override
                // New services discovered
                public void onServicesDiscovered(BluetoothGatt gatt, int status) {
                    if (status == GATT_SUCCESS) {
                        broadcastUpdate(ACTION_GATT_SERVICES_DISCOVERED);
                    } else {
                        Log.w(TAG, "onServicesDiscovered received: " + status);
                    }
                }

                @Override
                // Result of a characteristic read operation
                public void onCharacteristicRead(BluetoothGatt gatt,
                                                 BluetoothGattCharacteristic characteristic,
                                                 int status) {
                    if (status == GATT_SUCCESS) {
                        broadcastUpdate(ACTION_DATA_AVAILABLE, characteristic);
                        final int charaProp = characteristic.getProperties();
                        if ((charaProp | BluetoothGattCharacteristic.PROPERTY_NOTIFY) > 0) {
                            mNotifyCharacteristic = characteristic;
                            setCharacteristicNotification(characteristic, true);
                        }
                    }
                }

                @Override
                public void onCharacteristicChanged(BluetoothGatt gatt,
                                                    BluetoothGattCharacteristic characteristic) {
                    broadcastUpdate(ACTION_DATA_AVAILABLE, characteristic);
                }

                @Override
                public void onDescriptorWrite(BluetoothGatt gatt,
                                              BluetoothGattDescriptor descriptor,
                                              int status) {
                    if (status == GATT_SUCCESS) {
                        broadcastUpdate(ACTION_GATT_SERVICE_NOTIFIED);
                    }
                }
            };

    public void setmGattService(BluetoothGattService service) {
        mGattService = service;
        mServiceList.add(mGattService);
    }

    public void registerGattNotifications() {
        if (!(mServiceList.isEmpty())) {
            if (mCharacteristicList == null || mCharacteristicList.isEmpty() || (listIterator >= mCharacteristicList.size())) {
                try {
                    listIterator = 0;
                    mCharacteristicList =
                            mServiceList.get(serviceIterator).getCharacteristics();
                    serviceIterator += 1;
                } catch (IndexOutOfBoundsException e) {
                    return; // FIXME: Should this do something else
                }
            }
            if (serviceIterator <= mServiceList.size()) {
                if (!mCharacteristicList.isEmpty() && listIterator < mCharacteristicList.size()) {
                    BluetoothGattCharacteristic characteristic = mCharacteristicList.get(listIterator);
                    listIterator += 1;
                    if (characteristic.getUuid().equals(UUID_FREE_FALL_MEASUREMENT)) {
                        characteristic = mCharacteristicList.get(listIterator);
                    }
                    final int charaProp = characteristic.getProperties();
                    if ((charaProp | BluetoothGattCharacteristic.PROPERTY_READ) > 0) {
                        // If there is an active notification on a characteristic, clear
                        // it first so it doesn't update the data field on the user interface.
                        if (mNotifyCharacteristic != null) {
                            //setCharacteristicNotification(mNotifyCharacteristic, false);
                            mNotifyCharacteristic = null;
                        }
                        readCharacteristic(characteristic);
                    } else if ((charaProp | BluetoothGattCharacteristic.PROPERTY_NOTIFY) > 0) {
                        setCharacteristicNotification(characteristic, true);
                    }

                }
            }

        }
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    public BluetoothGattCallback getGattCallback() {
        return mGattCallback;
    }

    private void broadcastUpdate(final String action) {
        final Intent intent = new Intent(action);
        contx.sendBroadcast(intent);
    }

    public List<BluetoothGattService> getSupportedGattServices() {
        if (mBluetoothGatt == null) return null;

        return mBluetoothGatt.getServices();
    }

    public void readCharacteristic(BluetoothGattCharacteristic characteristic) {
        if (mBluetoothAdapter == null || mBluetoothGatt == null) {
            Log.w(TAG, "BluetoothAdapter not initialized");
            return;
        }
        mBluetoothGatt.readCharacteristic(characteristic);
    }

    /**
     * Enables or disables notification on a give characteristic.
     *
     * @param characteristic Characteristic to act on.
     * @param enabled        If true, enable notification.  False otherwise.
     */
    public void setCharacteristicNotification(BluetoothGattCharacteristic characteristic,
                                              boolean enabled) {
        if (mBluetoothAdapter == null || mBluetoothGatt == null) {
            Log.w(TAG, "BluetoothAdapter not initialized");
            return;
        }
        // mBluetoothGatt.setCharacteristicNotification(characteristic, enabled);

        // This is specific to Heart Rate Measurement.
        if (UUID_HEART_RATE_MEASUREMENT.equals(characteristic.getUuid())
                || UUID_ACCELEROMETER_MEASUREMENT.equals(characteristic.getUuid())
                || UUID_PRESSURE_MEASUREMENT.equals(characteristic.getUuid())
                || UUID_HUMIDITY_MEASUREMENT.equals(characteristic.getUuid())
                || UUID_TEMP_MEASUREMENT.equals(characteristic.getUuid())
                //|| UUID_FREE_FALL_MEASUREMENT.equals(characteristic.getUuid())
                || UUID_GPS_MEASUREMENT.equals(characteristic.getUuid())
                || UUID_COMPASS_MEASUREMENT.equals(characteristic.getUuid())) {
            mBluetoothGatt.setCharacteristicNotification(characteristic, enabled);
            BluetoothGattDescriptor descriptor = characteristic.getDescriptor(
                    UUID.fromString(SampleGattAttributes.CLIENT_CHARACTERISTIC_CONFIG));
            if (descriptor != null) {
                characteristic.addDescriptor(descriptor);
                descriptor.setValue(BluetoothGattDescriptor.ENABLE_INDICATION_VALUE);
                descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                mBluetoothGatt.writeDescriptor(descriptor);
            }
        }
    }

    private float[] bytesToFloats(byte[] input) {
        if (input.length % 4 != 0)
            throw new RuntimeException("Cannot read float array from byte array of length " + input.length);
        float[] output = new float[input.length / 4];
        for (int i = 0, j = 0; i < input.length; i += 4, j++) {
            output[j] = Float.intBitsToFloat((input[i] & 0xFF) | ((input[i + 1] & 0xFF) << 8) | ((input[i + 2] & 0xFF) << 16) | ((input[i + 3] & 0xFF) << 24));
        }
        return output;
    }

    private void broadcastUpdate(final String action,
                                 final BluetoothGattCharacteristic characteristic) {
        final Intent intent = new Intent(action);

        // This is special handling for the Heart Rate Measurement profile. Data
        // parsing is carried out as per profile specifications.
        if (UUID_HEART_RATE_MEASUREMENT.equals(characteristic.getUuid())) {
            int flag = characteristic.getProperties();
            int format = -1;
            if ((flag & 0x01) != 0) {
                format = BluetoothGattCharacteristic.FORMAT_UINT16;
                Log.d(TAG, "Heart rate format UINT16.");
            } else {
                format = BluetoothGattCharacteristic.FORMAT_UINT8;
                Log.d(TAG, "Heart rate format UINT8.");
            }
            final int heartRate = characteristic.getIntValue(format, 1);
            Log.d(TAG, String.format("Received heart rate: %d", heartRate));
            intent.putExtra(EXTRA_TYPE, "Heart");
            intent.putExtra(EXTRA_DATA, String.valueOf(heartRate));

        } else if (UUID_ACCELEROMETER_MEASUREMENT.equals(characteristic.getUuid())) {
            float[] euler = bytesToFloats(characteristic.getValue());
            float roll = euler[0];
            float pitch = euler[1];
            float yaw = euler[2];
            intent.putExtra(EXTRA_TYPE, DATA_TYPE_INCLINE);
            intent.putExtra(EXTRA_DATA, String.valueOf(roll) +":" +String.valueOf(pitch) + ":" + String.valueOf(yaw));

        } else if (UUID_FREE_FALL_MEASUREMENT.equals(characteristic.getUuid())) {
            int flag = characteristic.getProperties();
            final byte[] freeFallInc = characteristic.getValue();
            intent.putExtra(EXTRA_TYPE, DATA_TYPE_FREE_FALL);
            intent.putExtra(EXTRA_DATA, String.valueOf(freeFallInc[1]));

        } else if (UUID_TEMP_MEASUREMENT.equals(characteristic.getUuid())) {
            float temperature = bytesToFloats(characteristic.getValue())[0];
            intent.putExtra(EXTRA_TYPE, DATA_TYPE_TEMPERATURE);
            intent.putExtra(EXTRA_DATA, String.valueOf(temperature));

        } else if (UUID_PRESSURE_MEASUREMENT.equals(characteristic.getUuid())) {
            float pressure = bytesToFloats(characteristic.getValue())[0];
            intent.putExtra(EXTRA_TYPE, DATA_TYPE_PRESSURE);
            intent.putExtra(EXTRA_DATA, String.valueOf(pressure));

        } else if (UUID_HUMIDITY_MEASUREMENT.equals(characteristic.getUuid())) {
            float humidity = bytesToFloats(characteristic.getValue())[0];
            intent.putExtra(EXTRA_TYPE, DATA_TYPE_HUMIDITY);
            intent.putExtra(EXTRA_DATA, String.valueOf(humidity));

        } else if (UUID_GPS_MEASUREMENT.equals(characteristic.getUuid())) {
            float[] coords = bytesToFloats(characteristic.getValue());
            float lon = coords[0];
            float lat = coords[1];
            float elev = coords[2];
            float speed = coords[3];
            float direction = coords[4];
            intent.putExtra(EXTRA_TYPE, DATA_TYPE_POSITION);
            intent.putExtra(EXTRA_DATA, String.format("%f:%f:%f", lat, lon, elev));
        } else if (UUID_COMPASS_MEASUREMENT.equals(characteristic.getUuid())){
            // Yaw might still be used as it is but should be added compass values to this
            float[] euler = bytesToFloats(characteristic.getValue());
            float roll = euler[0];
            float pitch = euler[1];
            float yaw = euler[2];
            intent.putExtra(EXTRA_TYPE, DATA_TYPE_COMPASS);
            intent.putExtra(EXTRA_DATA, String.valueOf(yaw));
        }
        contx.sendBroadcast(intent);
    }
}