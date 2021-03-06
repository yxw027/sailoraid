package ltuproject.sailoraid;

import android.Manifest;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.media.Image;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.app.ActivityCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutCompat;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.google.android.gms.maps.model.LatLng;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import ltuproject.sailoraid.bluetooth.BTHandler;
import ltuproject.sailoraid.bluetooth.BTLEConnection;
import ltuproject.sailoraid.datalog.SailLog;
import ltuproject.sailoraid.feedback.StateChecker;
import ltuproject.sailoraid.location.Locator;

import static ltuproject.sailoraid.FeedbackActivity.KM_TO_KNOTS;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.DATA_TYPE_COMPASS;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.DATA_TYPE_DRIFT;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.DATA_TYPE_ESTPOSITION;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.DATA_TYPE_HUMIDITY;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.DATA_TYPE_INCLINE;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.DATA_TYPE_POSITION;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.DATA_TYPE_PRESSURE;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.DATA_TYPE_RANGE;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.DATA_TYPE_SOG;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.DATA_TYPE_TEMPERATURE;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.DATA_TYPE_WAVES;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.STATE_CONNECTED;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.STATE_CONNECTING;
import static ltuproject.sailoraid.bluetooth.BTLEConnection.STATE_DISCONNECTED;

public class MainActivity extends AppCompatActivity {
    private final static String TAG = MainActivity.class.getSimpleName();
    static final int WP_REQUEST = 1;
    private static final int REQUEST_ENABLE_BT = 1;
    private static final int REQUEST_COARSE_LOCATION = 999;
    private static final int UNINITIALIZED = 9999;
    private static final String BOATNAME = "SailorAid";
    private boolean tryingToConnect = false;
    private AlertDialog.Builder popDialog;
    private AlertDialog alertpop;
    private ArrayAdapter<String> BTArrayAdapter;
    private BTHandler myBTHandler;
    private BluetoothDevice chosenDevice;
    private boolean hasPermission;
    private BTLEConnection mBluetoothLeService;
    private IntentFilter filter;
    private SailLog mLogService;
    private float direction;
    private ArrayList<LatLng> wpRoute = new ArrayList<LatLng>();
    private LatLng nextEstimate = new LatLng(0,0);
    private LatLng gpsPos = new LatLng(0,0);
    private StateChecker mMainStateChecker;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        this.requestWindowFeature(Window.FEATURE_NO_TITLE);
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_main);

        Button feedbackviewbtn = findViewById(R.id.feedbackviewbtn);
        Button bluetoothbtn = findViewById(R.id.btconbtn);
        Button bluetoothdiscbtn = findViewById(R.id.btdisconbtn);
        Button historybtn = findViewById(R.id.historyviewbtn);

        mMainStateChecker = new StateChecker(this);
        // Button to access the feedback view
        assert feedbackviewbtn != null;
        feedbackviewbtn.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                // feedback button function
                Intent intent = new Intent(MainActivity.this, FeedbackActivity.class);
                Bundle args = new Bundle();
                args.putSerializable("ARRAYLIST", wpRoute);
                intent.putExtra("bundle", args);
                startActivityForResult(intent, WP_REQUEST);
            }
        });

        assert bluetoothdiscbtn != null;
        bluetoothdiscbtn.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                // stat view button function
                tryingToConnect = false;
                if (mBluetoothLeService != null){
                    mBluetoothLeService.disconnect();
                }
            }
        });

        assert bluetoothbtn != null;
        bluetoothbtn.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                // stat view button function
                initBTConn();
            }
        });

        assert historybtn != null;
        historybtn.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                // stat view button function
                startActivity(new Intent(MainActivity.this,HistoryActivity.class));
            }
        });
    }

    // Code to manage Service lifecycle.
    private final ServiceConnection mServiceConnection = new ServiceConnection() {

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder service) {
            mBluetoothLeService = ((BTLEConnection.LocalBinder) service).getService();
            if (!mBluetoothLeService.initialize()) {
                Log.e(TAG, "Unable to initialize Bluetooth");
                finish();
            }
            mBluetoothLeService.setmBluetoothDevice(chosenDevice);
            Intent gattServiceIntent = new Intent(getApplicationContext(), BTLEConnection.class);
            if (tryingToConnect){
                gattServiceIntent.putExtra("connecting", "true");
            } else {
                gattServiceIntent.putExtra("connecting", "false");
            }
            startService(gattServiceIntent);

        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            mBluetoothLeService = null;
        }
    };

    public void initBTConn(){
        myBTHandler = new BTHandler(this);
        if(!myBTHandler.getBtAdapter().isEnabled()) {
            turnOn();
        }
        checkLocationPermission();
        if(hasPermission){
            setPopDialog();
            BTArrayAdapter.clear();
            alertpop = popDialog.show();
            myBTHandler.clearLeList();
            myBTHandler.scanLeDevice(mLeScanCallback, true);
        }
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch(requestCode) {
            case (WP_REQUEST) : {
                if (data != null){
                    if (resultCode == Activity.RESULT_OK) {
                        Bundle args = data.getBundleExtra("bundle");
                        if (args != null){
                            wpRoute = (ArrayList<LatLng>) args.getSerializable("ARRAYLIST");
                        }
                    }
                }
                break;
            }
        }
    }
    @Override
    public void onDestroy(){
        super.onDestroy();
        Intent gattServiceIntent = new Intent(getApplicationContext(), BTLEConnection.class);
        stopService(gattServiceIntent);
    }

    @Override
    public void onResume(){
        super.onResume();
        filter = new IntentFilter(BTLEConnection.ACTION_GATT_CONNECTED);
        filter.addAction(BTLEConnection.ACTION_GATT_DISCONNECTED);
        filter.addAction(BTLEConnection.ACTION_DATA_AVAILABLE);
        this.registerReceiver(mGattUpdateReceiver, filter);
        Intent gattServiceIntent = new Intent(getApplicationContext(), BTLEConnection.class);
        bindService(gattServiceIntent, mServiceConnection, BIND_AUTO_CREATE);
        if (mBluetoothLeService != null){
            setConnectionButtons(mBluetoothLeService.getConnectionStatus());
        } else{
            setConnectionButtons(STATE_DISCONNECTED);
        }
        if (mLogService == null){
            Intent logServiceIntent = new Intent(getApplicationContext(), SailLog.class);
            bindService(logServiceIntent, mLogServiceConnection, BIND_AUTO_CREATE);
        }
    }

    @Override
    public void onPause(){
        super.onPause();
        cleanPop();
        if (mGattUpdateReceiver != null){
            this.unregisterReceiver(mGattUpdateReceiver);
        }
    }
    /*
    Popup when searching for bluetooth devices
     */
    public void setPopDialog() {

        BTArrayAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1);
        LayoutInflater inflater = (LayoutInflater) this.getSystemService(LAYOUT_INFLATER_SERVICE);
        View Viewlayout = inflater.inflate(R.layout.bt_list, (ViewGroup) findViewById(R.id.bt_list));
        ListView myListView = Viewlayout.findViewById(R.id.BTList);
        myListView.setAdapter(BTArrayAdapter);
        myListView.setChoiceMode(AbsListView.CHOICE_MODE_SINGLE);
        myListView.setSelector(android.R.color.holo_blue_light);
        myListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
        {
            public void onItemClick(AdapterView<?> parent, View view,int position, long id) {
                //Highlight chosen item on the popup list
                String device = parent.getAdapter().getItem(position).toString();
                String lines[] = device.split("[\\r\\n]+");
                String deviceName = lines[0];
                String deviceAddress = lines[1];
                chosenDevice = myBTHandler.getDevice(deviceName, deviceAddress);
            }
        });
        popDialog = new AlertDialog.Builder(this);
        popDialog.setView(Viewlayout);
        popDialog.setTitle("Devices");
        popDialog.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        dialog.dismiss();
                    }
                }
        );
        popDialog.setPositiveButton("Connect",
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                        if (chosenDevice != null){
                            if (mBluetoothLeService != null){
                                mBluetoothLeService.close();
                                tryingToConnect = true;
                                Intent gattServiceIntent = new Intent(getApplicationContext(), BTLEConnection.class);
                                if (!mBluetoothLeService.isStarted()){
                                    startService(gattServiceIntent);
                                } else{
                                    mBluetoothLeService.connect(chosenDevice);
                                }
                            }
                            else {
                                Intent gattServiceIntent = new Intent(getApplicationContext(), BTLEConnection.class);
                                bindService(gattServiceIntent, mServiceConnection, BIND_AUTO_CREATE);
                            }
                        }
                    }
                });
        popDialog.create();
    }

    public void cleanPop(){
        if (popDialog != null){
            popDialog = null;
        }
        if (alertpop != null) {
            alertpop.dismiss();
            alertpop = null;
        }
    }

    public void turnOn(){
        Intent turnOn = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
        this.startActivityForResult(turnOn, REQUEST_ENABLE_BT);
        while(!myBTHandler.getBtAdapter().isEnabled()){
        }
    }

    public void turnOff(){
        myBTHandler.getBtAdapter().disable();
    }

    private final BroadcastReceiver mGattUpdateReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            final String action = intent.getAction();
            if (mBluetoothLeService.ACTION_GATT_CONNECTED.equals(action)) {
                setConnectionButtons(mBluetoothLeService.getConnectionStatus());
            } else if (mBluetoothLeService.ACTION_GATT_DISCONNECTED.equals(action)) {
                setConnectionButtons(mBluetoothLeService.getConnectionStatus());
            } else if (mBluetoothLeService.ACTION_DATA_AVAILABLE.equals(action)) {
                logData(intent.getStringExtra(mBluetoothLeService.EXTRA_DATA), intent.getStringExtra(mBluetoothLeService.EXTRA_TYPE));
            }
        }
    };

    private void setConnectionButtons(int connected) {
        TextView tv = findViewById(R.id.mainConText);
        Button btnCon = findViewById(R.id.btconbtn);
        Button btnDis = findViewById(R.id.btdisconbtn);
        LinearLayout ivCon = findViewById(R.id.main_connection_holder);
        if (connected == STATE_CONNECTED) {
            btnCon.setVisibility(View.GONE);
            btnDis.setVisibility(View.VISIBLE);
            tv.setText(R.string.connected);
            ivCon.setBackground(getDrawable(R.drawable.main_pico_connected));

        } else if (connected == STATE_DISCONNECTED){
            btnCon.setVisibility(View.VISIBLE);
            btnDis.setVisibility(View.GONE);
            tv.setText(R.string.disconnected);
            ivCon.setBackground(getDrawable(R.drawable.main_pico_disconnected));
        }

    }

    /*
    Check permissions during runtime for bluetooth discovery
     */
    protected void checkLocationPermission() {
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION)
                != PackageManager.PERMISSION_GRANTED) {

            ActivityCompat.requestPermissions(this,
                    new String[]{Manifest.permission.ACCESS_COARSE_LOCATION},
                    REQUEST_COARSE_LOCATION);
        } else {
            hasPermission = true;
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode,
                                           String permissions[], int[] grantResults) {
        switch (requestCode) {
            case REQUEST_COARSE_LOCATION: {
                if (grantResults.length > 0
                        && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                    hasPermission = true;
                } else {
                    hasPermission = false;
                }
                break;
            }
        }
    }

    /*
    Get results from Bluetooth LE device scan and adds to list on BTHandler and updates adapter so the item will be displayed on the popup window
     */
    private ScanCallback mLeScanCallback = new ScanCallback() {
        @Override
        public void onScanResult(int callbackType, ScanResult result) {
            super.onScanResult(callbackType, result);
            BluetoothDevice bd = result.getDevice();
            if (!myBTHandler.deviceExists(myBTHandler.getLeDeviceList(), bd)) {
                String dname = bd.getName();
                if (dname != null && dname.equals(BOATNAME)){
                    myBTHandler.addLeDeviceList(bd);
                    BTArrayAdapter.add(bd.getName() + "\n" + bd.getAddress());
                    BTArrayAdapter.notifyDataSetChanged();
                }
            } else {
                BTArrayAdapter.notifyDataSetChanged();
            }
        }

        @Override
        public void onBatchScanResults(List<ScanResult> results) {
            super.onBatchScanResults(results);
        }

        @Override
        public void onScanFailed(int errorCode) {
            super.onScanFailed(errorCode);
        }
    };

    /*
        Gets local binder from log service when the service is connected to this activity
     */
    private final ServiceConnection mLogServiceConnection = new ServiceConnection() {

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder service) {
            mLogService = ((SailLog.LocalBinder) service).getService();
        }
        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            mLogService = null;
        }
    };

    /*
        Log data when connected to the boat and logging is started from the feedback activity
     */
    private void logData(String data, String dataType) {
        if (data != null) {
            String time = new SimpleDateFormat("HHmmssSSS").format(new Date());
            if(dataType.equals(DATA_TYPE_INCLINE)){
                // Get Roll, pitch and yaw
                String[] accelerometer = data.split(":");
                mMainStateChecker.setInclineX(Float.parseFloat(accelerometer[1]));
                mMainStateChecker.setInclineY(Float.parseFloat(accelerometer[0]));
                mMainStateChecker.setBearingZ(Float.parseFloat(accelerometer[2]));
                mMainStateChecker.setWavePeriod(mMainStateChecker.getInclineY());

                if(mLogService != null){
                    if (mLogService.isLogging()){
                        mLogService.writeToLog(DATA_TYPE_INCLINE +":" +time  +":" +mMainStateChecker.getInclineX());
                    }
                }
            } else if(dataType.equals(DATA_TYPE_TEMPERATURE)){
                data = data.replace(',', '.');
                if (mLogService != null){
                    if (mLogService.isLogging()){
                        mLogService.writeToLog(DATA_TYPE_TEMPERATURE +":" +time +":" +data);
                    }
                }
            } else if(dataType.equals(DATA_TYPE_PRESSURE)){
                data = data.replace(',', '.');
                String[] loadCell = data.split(":");
                // Todo uncomment
                float maxPressure = Math.max(Float.parseFloat(loadCell[0]), Float.parseFloat(loadCell[1]));
                //float maxPressure = Float.parseFloat(loadCell[0])-18;
                mMainStateChecker.setMaxPressure(maxPressure-18);
                //mMainStateChecker.setMaxPressure(Float.parseFloat(loadCell[0])-18);
                if (mLogService != null){
                    if (mLogService.isLogging()){
                        mLogService.writeToLog(DATA_TYPE_PRESSURE +":" +time  +":" +mMainStateChecker.getMaxPressure());
                    }
                }
            } else if(dataType.equals(DATA_TYPE_HUMIDITY)){
                data = data.replace(',', '.');
                if(mLogService != null) {
                    if (mLogService.isLogging()){
                        mLogService.writeToLog(DATA_TYPE_HUMIDITY + ":" + time + ":" + data);
                    }
                }
            } else if (dataType.equals(DATA_TYPE_POSITION)) {
                data = data.replace(',', '.');
                String[] pos = data.split(":");
                float latitude = Float.parseFloat(pos[0]);
                float longitude = Float.parseFloat(pos[1]);
                float elevation = Float.parseFloat(pos[2]);
                // float speed = Float.parseFloat(pos[3])*KM_TO_KNOTS;
                mMainStateChecker.setSpeed(Float.parseFloat(pos[3])*KM_TO_KNOTS);
                this.direction = Float.parseFloat(pos[4]);
                if (latitude != 0f && longitude != 0f) {
                    LatLng currPos = new LatLng(latitude, longitude);
                    if (this.gpsPos.latitude != 0f && this.gpsPos.longitude != 0f){
                        //Calculate distance and speed from last point, possibly could filter moving avg
                        double dist = Locator.distance_on_geoid(currPos.latitude, currPos.longitude, this.gpsPos.latitude, this.gpsPos.longitude);
                        // Calculate perpendicular drift from the ship navigational bearing will update from previously calculated value to compare with the new values.
                        if (this.nextEstimate.latitude != 0f && this.nextEstimate.longitude != 0f){
                            if(mLogService != null) {
                                if (mLogService.isLogging()) {
                                    mLogService.writeToLog(DATA_TYPE_ESTPOSITION + ":" + time + ":" + this.nextEstimate.latitude + ":" + this.nextEstimate.longitude + ":" + direction);
                                }
                            }
                            mMainStateChecker.setDrift(Locator.distance_on_geoid(this.nextEstimate.latitude, this.nextEstimate.longitude, latitude, longitude));
                        }
                        this.nextEstimate = Locator.calcNextEstimatePos(new LatLng(latitude,longitude), dist, direction);
                    }
                    this.gpsPos = currPos;
                    if(mLogService != null) {
                        if (mLogService.isLogging()){
                            mLogService.writeToLog(DATA_TYPE_POSITION + ":" + time + ":" + latitude + ":" + longitude + ":" +direction);
                            mLogService.writeToLog(DATA_TYPE_COMPASS + ":" +time +":" +direction);
                            mLogService.writeToLog(DATA_TYPE_SOG + ":" +time +":" +mMainStateChecker.getSpeed());
                            mLogService.writeToLog(DATA_TYPE_DRIFT + ":" +time +":" +mMainStateChecker.getDrift());
                            mLogService.writeToLog(DATA_TYPE_WAVES +":" +time +":" +mMainStateChecker.getWavePeriod());
                        }
                    }
                }
            } else if (dataType.equals(DATA_TYPE_RANGE)){
                data = data.replace(',', '.');
                mMainStateChecker.setRange(Float.parseFloat(data));
                if(mLogService != null) {
                    if (mLogService.isLogging()){
                        mLogService.writeToLog(DATA_TYPE_RANGE + ":" + time + ":" + mMainStateChecker.getRange());
                    }
                }
            }
        }
    }
}
