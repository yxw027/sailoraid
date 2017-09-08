EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:IMU_Circuit
LIBS:IMU_Circuit-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LSM6DSL U?
U 1 1 59AE6811
P 7050 4200
F 0 "U?" H 7500 4700 60  0000 C CNN
F 1 "LSM6DSL" H 7500 4600 60  0000 C CNN
F 2 "" H 7500 4650 60  0001 C CNN
F 3 "" H 7500 4650 60  0001 C CNN
	1    7050 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59AE6948
P 7050 2700
F 0 "#PWR01" H 7050 2450 50  0001 C CNN
F 1 "GND" H 7050 2550 50  0000 C CNN
F 2 "" H 7050 2700 50  0001 C CNN
F 3 "" H 7050 2700 50  0001 C CNN
	1    7050 2700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 59AE6A62
P 7950 2300
F 0 "C?" H 7960 2370 50  0000 L CNN
F 1 "220nF" H 7960 2220 50  0000 L CNN
F 2 "" H 7950 2300 50  0001 C CNN
F 3 "" H 7950 2300 50  0001 C CNN
	1    7950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2650 7150 2600
Wire Wire Line
	6950 3650 6950 3600
Wire Wire Line
	6950 3600 7150 3600
Wire Wire Line
	7150 3600 7150 3650
Wire Wire Line
	6950 4750 6950 4800
Wire Wire Line
	6950 4800 7150 4800
Wire Wire Line
	7150 4800 7150 4750
Wire Wire Line
	7050 4800 7050 4850
Connection ~ 7050 4800
Wire Wire Line
	7050 3600 7050 3550
Connection ~ 7050 3600
Wire Wire Line
	7950 3900 7950 4250
Wire Wire Line
	7950 4250 7900 4250
Wire Wire Line
	7900 4150 7950 4150
Connection ~ 7950 4150
Wire Wire Line
	7900 4050 7950 4050
Connection ~ 7950 4050
Connection ~ 7950 3950
$Comp
L C_Small C?
U 1 1 59AE745B
P 9000 2050
F 0 "C?" H 9010 2120 50  0000 L CNN
F 1 "100nF" H 9010 1970 50  0000 L CNN
F 2 "" H 9000 2050 50  0001 C CNN
F 3 "" H 9000 2050 50  0001 C CNN
	1    9000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1900 9000 1950
$Comp
L CP1_Small C?
U 1 1 59AE76A3
P 8700 2050
F 0 "C?" H 8710 2120 50  0000 L CNN
F 1 "10uF" H 8710 1970 50  0000 L CNN
F 2 "" H 8700 2050 50  0001 C CNN
F 3 "" H 8700 2050 50  0001 C CNN
	1    8700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2200 9000 2150
$Comp
L GND #PWR02
U 1 1 59AE77C4
P 8850 2250
F 0 "#PWR02" H 8850 2000 50  0001 C CNN
F 1 "GND" H 8850 2100 50  0000 C CNN
F 2 "" H 8850 2250 50  0001 C CNN
F 3 "" H 8850 2250 50  0001 C CNN
	1    8850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2200 9000 2200
Wire Wire Line
	8700 2200 8700 2150
Wire Wire Line
	8700 1950 8700 1900
Wire Wire Line
	8850 2250 8850 2200
Connection ~ 8850 2200
Wire Wire Line
	8700 1900 9000 1900
Wire Wire Line
	8850 1900 8850 1850
Connection ~ 8850 1900
Text Notes 8550 1650 0    60   ~ 0
LSM303AGR VDD\nDecoup. Cap.
$Comp
L C_Small C?
U 1 1 59AE8809
P 9750 2050
F 0 "C?" H 9760 2120 50  0000 L CNN
F 1 "100nF" H 9760 1970 50  0000 L CNN
F 2 "" H 9750 2050 50  0001 C CNN
F 3 "" H 9750 2050 50  0001 C CNN
	1    9750 2050
	1    0    0    -1  
$EndComp
Text Notes 9500 1650 0    60   ~ 0
LSM303AGR VDD_IO\nDecoup. Cap.
$Comp
L GND #PWR03
U 1 1 59AE8CF4
P 9750 2200
F 0 "#PWR03" H 9750 1950 50  0001 C CNN
F 1 "GND" H 9750 2050 50  0000 C CNN
F 2 "" H 9750 2200 50  0001 C CNN
F 3 "" H 9750 2200 50  0001 C CNN
	1    9750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2200 9750 2150
Wire Wire Line
	9750 1950 9750 1900
Wire Wire Line
	7900 3950 7950 3950
Wire Wire Line
	6950 1500 6950 1450
Wire Wire Line
	6950 1450 7150 1450
Wire Wire Line
	7150 1450 7150 1500
Wire Wire Line
	7050 1400 7050 1450
Connection ~ 7050 1450
Text Label 6200 1850 2    60   ~ 0
I2C1_CL
Text Label 6200 4050 2    60   ~ 0
I2C1_CL
Text Label 6200 1950 2    60   ~ 0
I2C1_DA
Text Label 6200 4150 2    60   ~ 0
I2C1_DA
$Comp
L GND #PWR04
U 1 1 59AEAB2A
P 7050 4850
F 0 "#PWR04" H 7050 4600 50  0001 C CNN
F 1 "GND" H 7050 4700 50  0000 C CNN
F 2 "" H 7050 4850 50  0001 C CNN
F 3 "" H 7050 4850 50  0001 C CNN
	1    7050 4850
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 59AEADF5
P 8850 4200
F 0 "C?" H 8860 4270 50  0000 L CNN
F 1 "100nF" H 8860 4120 50  0000 L CNN
F 2 "" H 8850 4200 50  0001 C CNN
F 3 "" H 8850 4200 50  0001 C CNN
	1    8850 4200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 59AEAE47
P 9700 4200
F 0 "C?" H 9710 4270 50  0000 L CNN
F 1 "100nF" H 9710 4120 50  0000 L CNN
F 2 "" H 9700 4200 50  0001 C CNN
F 3 "" H 9700 4200 50  0001 C CNN
	1    9700 4200
	1    0    0    -1  
$EndComp
Text Notes 8550 3800 0    60   ~ 0
LSM6DSL VDD\nDecoup. Cap.
Text Notes 9500 3800 0    60   ~ 0
LSM6DSL VDD_IO\nDecoup. Cap.
Wire Wire Line
	8850 4300 8850 4350
Wire Wire Line
	9700 4300 9700 4350
Wire Wire Line
	8850 4100 8850 4050
Wire Wire Line
	9700 4100 9700 4050
$Comp
L +3V3 #PWR05
U 1 1 59AED7D9
P 9750 1900
F 0 "#PWR05" H 9750 1750 50  0001 C CNN
F 1 "+3V3" H 9750 2040 50  0000 C CNN
F 2 "" H 9750 1900 50  0001 C CNN
F 3 "" H 9750 1900 50  0001 C CNN
	1    9750 1900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR06
U 1 1 59AED815
P 8850 1850
F 0 "#PWR06" H 8850 1700 50  0001 C CNN
F 1 "+3V3" H 8850 1990 50  0000 C CNN
F 2 "" H 8850 1850 50  0001 C CNN
F 3 "" H 8850 1850 50  0001 C CNN
	1    8850 1850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR07
U 1 1 59AED883
P 7050 1400
F 0 "#PWR07" H 7050 1250 50  0001 C CNN
F 1 "+3V3" H 7050 1540 50  0000 C CNN
F 2 "" H 7050 1400 50  0001 C CNN
F 3 "" H 7050 1400 50  0001 C CNN
	1    7050 1400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR08
U 1 1 59AED96E
P 7950 1850
F 0 "#PWR08" H 7950 1700 50  0001 C CNN
F 1 "+3V3" H 7950 1990 50  0000 C CNN
F 2 "" H 7950 1850 50  0001 C CNN
F 3 "" H 7950 1850 50  0001 C CNN
	1    7950 1850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR09
U 1 1 59AEDBD9
P 7050 3550
F 0 "#PWR09" H 7050 3400 50  0001 C CNN
F 1 "+3V3" H 7050 3690 50  0000 C CNN
F 2 "" H 7050 3550 50  0001 C CNN
F 3 "" H 7050 3550 50  0001 C CNN
	1    7050 3550
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR010
U 1 1 59AEDC1C
P 7950 3900
F 0 "#PWR010" H 7950 3750 50  0001 C CNN
F 1 "+3V3" H 7950 4040 50  0000 C CNN
F 2 "" H 7950 3900 50  0001 C CNN
F 3 "" H 7950 3900 50  0001 C CNN
	1    7950 3900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR011
U 1 1 59AEDE3F
P 8850 4050
F 0 "#PWR011" H 8850 3900 50  0001 C CNN
F 1 "+3V3" H 8850 4190 50  0000 C CNN
F 2 "" H 8850 4050 50  0001 C CNN
F 3 "" H 8850 4050 50  0001 C CNN
	1    8850 4050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR012
U 1 1 59AEDEFA
P 9700 4050
F 0 "#PWR012" H 9700 3900 50  0001 C CNN
F 1 "+3V3" H 9700 4190 50  0000 C CNN
F 2 "" H 9700 4050 50  0001 C CNN
F 3 "" H 9700 4050 50  0001 C CNN
	1    9700 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 59AEE41D
P 8850 4350
F 0 "#PWR013" H 8850 4100 50  0001 C CNN
F 1 "GND" H 8850 4200 50  0000 C CNN
F 2 "" H 8850 4350 50  0001 C CNN
F 3 "" H 8850 4350 50  0001 C CNN
	1    8850 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 59AEE447
P 9700 4350
F 0 "#PWR014" H 9700 4100 50  0001 C CNN
F 1 "GND" H 9700 4200 50  0000 C CNN
F 2 "" H 9700 4350 50  0001 C CNN
F 3 "" H 9700 4350 50  0001 C CNN
	1    9700 4350
	1    0    0    -1  
$EndComp
$Comp
L LSM303AGR U?
U 1 1 59AEB7F4
P 7050 2050
F 0 "U?" H 7450 2550 60  0000 C CNN
F 1 "LSM303AGR" H 7450 2450 60  0000 C CNN
F 2 "" H 7050 2300 60  0001 C CNN
F 3 "" H 7050 2300 60  0001 C CNN
	1    7050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2600 6950 2650
Wire Wire Line
	6950 2650 7150 2650
Wire Wire Line
	7050 2650 7050 2700
Connection ~ 7050 2650
Wire Wire Line
	7900 2150 7950 2150
Wire Wire Line
	7950 2150 7950 2200
Wire Wire Line
	7950 2400 7950 2450
Wire Wire Line
	7950 2050 7900 2050
Wire Wire Line
	7950 1850 7950 2050
Wire Wire Line
	7900 1950 7950 1950
Connection ~ 7950 1950
$Comp
L GND #PWR015
U 1 1 59AEED02
P 7950 2450
F 0 "#PWR015" H 7950 2200 50  0001 C CNN
F 1 "GND" H 7950 2300 50  0000 C CNN
F 2 "" H 7950 2450 50  0001 C CNN
F 3 "" H 7950 2450 50  0001 C CNN
	1    7950 2450
	1    0    0    -1  
$EndComp
Text HLabel 1900 1700 0    60   Input ~ 0
I2C1_CL
Text HLabel 1900 1800 0    60   BiDi ~ 0
I2C1_DA
Text Label 2050 1700 0    60   ~ 0
I2C1_CL
Wire Wire Line
	1900 1700 2750 1700
Wire Wire Line
	1900 1800 2750 1800
Text Label 2050 1800 0    60   ~ 0
I2C1_DA
Text HLabel 1900 1250 0    60   Input ~ 0
+3V3
Text HLabel 1900 1350 0    60   Input ~ 0
GND
Wire Wire Line
	1900 1250 2000 1250
Wire Wire Line
	1950 1250 1950 1200
Wire Wire Line
	1900 1350 2000 1350
Wire Wire Line
	1950 1350 1950 1400
$Comp
L GND #PWR016
U 1 1 59AF43F3
P 1950 1400
F 0 "#PWR016" H 1950 1150 50  0001 C CNN
F 1 "GND" H 1950 1250 50  0000 C CNN
F 2 "" H 1950 1400 50  0001 C CNN
F 3 "" H 1950 1400 50  0001 C CNN
	1    1950 1400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR017
U 1 1 59AF4417
P 1950 1200
F 0 "#PWR017" H 1950 1050 50  0001 C CNN
F 1 "+3V3" H 1950 1340 50  0000 C CNN
F 2 "" H 1950 1200 50  0001 C CNN
F 3 "" H 1950 1200 50  0001 C CNN
	1    1950 1200
	1    0    0    -1  
$EndComp
Text Label 6200 2050 2    60   ~ 0
LSM303AGR_INT_MAG
Text Label 6200 2150 2    60   ~ 0
LSM303AGR_INT_1_XL
Text Label 6200 2250 2    60   ~ 0
LSM303AGR_INT_1_XL
Text Label 6200 4250 2    60   ~ 0
LSM6DSL_INT1
Text Label 6200 4350 2    60   ~ 0
LSM6DSL_INT2
Text Notes 1300 2400 0    60   ~ 0
I2C1 och I2C2 är ihopkopplade \nsom standard på IKS01A2. Vi får \nvälja vilken vi ska använda och \nså kan vi strunta i den andra.
Text Label 2750 1700 0    60   ~ 0
I2C2_CL
Text Label 2750 1800 0    60   ~ 0
I2C2_DA
$Comp
L PWR_FLAG #FLG?
U 1 1 59B2957C
P 2000 1250
F 0 "#FLG?" H 2000 1325 50  0001 C CNN
F 1 "PWR_FLAG" V 2000 1550 50  0000 C CNN
F 2 "" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0001 C CNN
	1    2000 1250
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 59B295A6
P 2000 1350
F 0 "#FLG?" H 2000 1425 50  0001 C CNN
F 1 "PWR_FLAG" V 2000 1650 50  0000 C CNN
F 2 "" H 2000 1350 50  0001 C CNN
F 3 "" H 2000 1350 50  0001 C CNN
	1    2000 1350
	0    1    1    0   
$EndComp
Connection ~ 1950 1250
Connection ~ 1950 1350
$EndSCHEMATC
