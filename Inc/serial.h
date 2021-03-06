/*
 * serial.h
 *
 *  Created on: Sep 21, 2017
 *      Author: jsjolund
 */

#ifndef SERIAL_H_
#define SERIAL_H_

#include "main.h"
#include "limits.h"
#include "hal_types.h"
#include "stm32f4xx_hal.h"
#include "shell.h"
#include "gps.h"
#include "state.h"

#define RX_BUFFER_MAX 512
#define TX_BUFFER_MAX 512

void SerialInit(UART_HandleTypeDef *usbHuartHandle, UART_HandleTypeDef *gpsHuartHandle);
void SerialUsbTransmit(char *ptr, int len);
void GPSdebugPrint(BOOL onoff);

#endif /* SERIAL_H_ */
