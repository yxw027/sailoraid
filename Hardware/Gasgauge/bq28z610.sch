EESchema Schematic File Version 2
LIBS:2sBatteryCharger-rescue
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
LIBS:bq28z610lib
LIBS:2sBatteryCharger-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L CSD16412Q5A-RESCUE-2sBatteryCharger Qz3
U 1 1 5A1E695F
P 7400 1850
F 0 "Qz3" H 7200 2150 50  0000 L CNN
F 1 "CSD16412Q5A" H 7200 1600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TDSON-8-1_HandSoldering" H 7400 2050 50  0001 C CIN
F 3 "" V 7400 1850 50  0001 L CNN
	1    7400 1850
	-1   0    0    -1  
$EndComp
$Comp
L CSD16412Q5A-RESCUE-2sBatteryCharger Qz2
U 1 1 5A1E6966
P 6500 1850
F 0 "Qz2" H 6300 2150 50  0000 L CNN
F 1 "CSD16412Q5A" H 6300 1600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TDSON-8-1_HandSoldering" H 6500 2050 50  0001 C CIN
F 3 "" V 6500 1850 50  0001 L CNN
	1    6500 1850
	1    0    0    -1  
$EndComp
$Comp
L bq28z610 U2
U 1 1 5A1E696D
P 5750 3900
F 0 "U2" H 6150 5200 60  0000 C CNN
F 1 "bq28z610" H 5750 2800 60  0000 C CNN
F 2 "Housings_SON:Texas_S-PDSO-N12" H 6000 3800 60  0001 C CNN
F 3 "" H 6000 3800 60  0001 C CNN
	1    5750 3900
	1    0    0    -1  
$EndComp
$Comp
L C Cz4
U 1 1 5A1E6974
P 4400 3350
F 0 "Cz4" H 4425 3450 50  0000 L CNN
F 1 "0.1u" H 4425 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4438 3200 50  0001 C CNN
F 3 "" H 4400 3350 50  0001 C CNN
	1    4400 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR22
U 1 1 5A1E697B
P 4400 3500
F 0 "#PWR22" H 4400 3250 50  0001 C CNN
F 1 "GND" H 4400 3350 50  0000 C CNN
F 2 "" H 4400 3500 50  0001 C CNN
F 3 "" H 4400 3500 50  0001 C CNN
	1    4400 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR23
U 1 1 5A1E6981
P 4550 3950
F 0 "#PWR23" H 4550 3700 50  0001 C CNN
F 1 "GND" H 4550 3800 50  0000 C CNN
F 2 "" H 4550 3950 50  0001 C CNN
F 3 "" H 4550 3950 50  0001 C CNN
	1    4550 3950
	1    0    0    -1  
$EndComp
$Comp
L C Cz5
U 1 1 5A1E6987
P 4550 3800
F 0 "Cz5" H 4575 3900 50  0000 L CNN
F 1 "0.1u" H 4575 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4588 3650 50  0001 C CNN
F 3 "" H 4550 3800 50  0001 C CNN
	1    4550 3800
	1    0    0    -1  
$EndComp
$Comp
L Thermistor_NTC TH1
U 1 1 5A1E698E
P 4900 4050
F 0 "TH1" V 4725 4050 50  0000 C CNN
F 1 "NTC" V 5025 4050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" H 4900 4100 50  0001 C CNN
F 3 "" H 4900 4100 50  0001 C CNN
	1    4900 4050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR27
U 1 1 5A1E6995
P 4700 4200
F 0 "#PWR27" H 4700 3950 50  0001 C CNN
F 1 "GND" H 4700 4050 50  0000 C CNN
F 2 "" H 4700 4200 50  0001 C CNN
F 3 "" H 4700 4200 50  0001 C CNN
	1    4700 4200
	1    0    0    -1  
$EndComp
$Comp
L R Rz6
U 1 1 5A1E699B
P 4850 4450
F 0 "Rz6" V 4930 4450 50  0000 C CNN
F 1 "100" V 4850 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4780 4450 50  0001 C CNN
F 3 "" H 4850 4450 50  0001 C CNN
	1    4850 4450
	0    1    1    0   
$EndComp
$Comp
L R Rz7
U 1 1 5A1E69A2
P 4850 4850
F 0 "Rz7" V 4930 4850 50  0000 C CNN
F 1 "100" V 4850 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4780 4850 50  0001 C CNN
F 3 "" H 4850 4850 50  0001 C CNN
	1    4850 4850
	0    1    1    0   
$EndComp
$Comp
L D_Schottky Dz1
U 1 1 5A1E69A9
P 4150 4600
F 0 "Dz1" H 4150 4700 50  0000 C CNN
F 1 "DZ1" H 4150 4500 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323F" H 4150 4600 50  0001 C CNN
F 3 "" H 4150 4600 50  0001 C CNN
	1    4150 4600
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR21
U 1 1 5A1E69B0
P 4150 4750
F 0 "#PWR21" H 4150 4550 50  0001 C CNN
F 1 "GNDPWR" H 4150 4620 50  0000 C CNN
F 2 "" H 4150 4700 50  0001 C CNN
F 3 "" H 4150 4700 50  0001 C CNN
	1    4150 4750
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky Dz2
U 1 1 5A1E69B6
P 4550 5000
F 0 "Dz2" H 4550 5100 50  0000 C CNN
F 1 "DZ2" H 4550 4900 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323F" H 4550 5000 50  0001 C CNN
F 3 "" H 4550 5000 50  0001 C CNN
	1    4550 5000
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR24
U 1 1 5A1E69BD
P 4550 5150
F 0 "#PWR24" H 4550 4950 50  0001 C CNN
F 1 "GNDPWR" H 4550 5020 50  0000 C CNN
F 2 "" H 4550 5100 50  0001 C CNN
F 3 "" H 4550 5100 50  0001 C CNN
	1    4550 5150
	1    0    0    -1  
$EndComp
$Comp
L R Rz1
U 1 1 5A1E69C3
P 3700 4450
F 0 "Rz1" V 3780 4450 50  0000 C CNN
F 1 "100" V 3700 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3630 4450 50  0001 C CNN
F 3 "" H 3700 4450 50  0001 C CNN
	1    3700 4450
	0    1    1    0   
$EndComp
$Comp
L R Rz2
U 1 1 5A1E69CA
P 3700 4850
F 0 "Rz2" V 3780 4850 50  0000 C CNN
F 1 "100" V 3700 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3630 4850 50  0001 C CNN
F 3 "" H 3700 4850 50  0001 C CNN
	1    3700 4850
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 J4
U 1 1 5A1E69D1
P 3400 4600
F 0 "J4" H 3400 4700 50  0000 C CNN
F 1 "SCL/SDA" H 3400 4400 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S02B-XH-A_02x2.50mm_Angled" H 3400 4600 50  0001 C CNN
F 3 "" H 3400 4600 50  0001 C CNN
	1    3400 4600
	1    0    0    -1  
$EndComp
$Comp
L C Cz3
U 1 1 5A1E69D8
P 4150 3650
F 0 "Cz3" H 4175 3750 50  0000 L CNN
F 1 "0.1u" H 4175 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4188 3500 50  0001 C CNN
F 3 "" H 4150 3650 50  0001 C CNN
	1    4150 3650
	0    1    1    0   
$EndComp
$Comp
L R Rz4
U 1 1 5A1E69DF
P 4150 5750
F 0 "Rz4" V 4230 5750 50  0000 C CNN
F 1 "1-3m" V 4150 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_2512" V 4080 5750 50  0001 C CNN
F 3 "" H 4150 5750 50  0001 C CNN
	1    4150 5750
	0    -1   -1   0   
$EndComp
$Comp
L GNDPWR #PWR20
U 1 1 5A1E69E6
P 3900 5750
F 0 "#PWR20" H 3900 5550 50  0001 C CNN
F 1 "GNDPWR" H 3900 5620 50  0000 C CNN
F 2 "" H 3900 5700 50  0001 C CNN
F 3 "" H 3900 5700 50  0001 C CNN
	1    3900 5750
	1    0    0    -1  
$EndComp
$Comp
L R Rz3
U 1 1 5A1E69EC
P 3900 5500
F 0 "Rz3" V 3980 5500 50  0000 C CNN
F 1 "100" V 3900 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3830 5500 50  0001 C CNN
F 3 "" H 3900 5500 50  0001 C CNN
	1    3900 5500
	-1   0    0    1   
$EndComp
$Comp
L R Rz5
U 1 1 5A1E69F3
P 4400 5500
F 0 "Rz5" V 4480 5500 50  0000 C CNN
F 1 "100" V 4400 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 5500 50  0001 C CNN
F 3 "" H 4400 5500 50  0001 C CNN
	1    4400 5500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR25
U 1 1 5A1E69FA
P 4650 3000
F 0 "#PWR25" H 4650 2750 50  0001 C CNN
F 1 "GND" H 4650 2850 50  0000 C CNN
F 2 "" H 4650 3000 50  0001 C CNN
F 3 "" H 4650 3000 50  0001 C CNN
	1    4650 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR26
U 1 1 5A1E6A00
P 4650 5750
F 0 "#PWR26" H 4650 5500 50  0001 C CNN
F 1 "GND" H 4650 5600 50  0000 C CNN
F 2 "" H 4650 5750 50  0001 C CNN
F 3 "" H 4650 5750 50  0001 C CNN
	1    4650 5750
	1    0    0    -1  
$EndComp
$Comp
L C Cz8
U 1 1 5A1E6A06
P 6950 2950
F 0 "Cz8" H 6975 3050 50  0000 L CNN
F 1 "0.1u" H 6975 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6988 2800 50  0001 C CNN
F 3 "" H 6950 2950 50  0001 C CNN
	1    6950 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR30
U 1 1 5A1E6A0D
P 6950 3100
F 0 "#PWR30" H 6950 2850 50  0001 C CNN
F 1 "GND" H 6950 2950 50  0000 C CNN
F 2 "" H 6950 3100 50  0001 C CNN
F 3 "" H 6950 3100 50  0001 C CNN
	1    6950 3100
	1    0    0    -1  
$EndComp
$Comp
L C Cz10
U 1 1 5A1E6A13
P 7350 3000
F 0 "Cz10" H 7375 3100 50  0000 L CNN
F 1 "1u" H 7375 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7388 2850 50  0001 C CNN
F 3 "" H 7350 3000 50  0001 C CNN
	1    7350 3000
	1    0    0    -1  
$EndComp
$Comp
L R Rz12
U 1 1 5A1E6A1A
P 7700 2800
F 0 "Rz12" V 7780 2800 50  0000 C CNN
F 1 "100" V 7700 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_2512" V 7630 2800 50  0001 C CNN
F 3 "" H 7700 2800 50  0001 C CNN
	1    7700 2800
	0    1    1    0   
$EndComp
$Comp
L R Rz13
U 1 1 5A1E6A21
P 7700 3200
F 0 "Rz13" V 7780 3200 50  0000 C CNN
F 1 "5" V 7700 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_2512" V 7630 3200 50  0001 C CNN
F 3 "" H 7700 3200 50  0001 C CNN
	1    7700 3200
	0    1    1    0   
$EndComp
$Comp
L Fuse F1
U 1 1 5A1E6A28
P 8100 2600
F 0 "F1" V 8180 2600 50  0000 C CNN
F 1 "Fuse" V 8025 2600 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_lateral_Type-II" V 8030 2600 50  0001 C CNN
F 3 "" H 8100 2600 50  0001 C CNN
	1    8100 2600
	1    0    0    -1  
$EndComp
$Comp
L R Rz14
U 1 1 5A1E6A2F
P 7900 1950
F 0 "Rz14" V 7980 1950 50  0000 C CNN
F 1 "10M" V 7900 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7830 1950 50  0001 C CNN
F 3 "" H 7900 1950 50  0001 C CNN
	1    7900 1950
	0    -1   -1   0   
$EndComp
$Comp
L R Rz11
U 1 1 5A1E6A36
P 7200 3650
F 0 "Rz11" V 7280 3650 50  0000 C CNN
F 1 "5.1k" V 7200 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7130 3650 50  0001 C CNN
F 3 "" H 7200 3650 50  0001 C CNN
	1    7200 3650
	-1   0    0    1   
$EndComp
$Comp
L R Rz9
U 1 1 5A1E6A3D
P 6000 2000
F 0 "Rz9" V 6080 2000 50  0000 C CNN
F 1 "10M" V 6000 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5930 2000 50  0001 C CNN
F 3 "" H 6000 2000 50  0001 C CNN
	1    6000 2000
	1    0    0    -1  
$EndComp
$Comp
L C Cz6
U 1 1 5A1E6A44
P 6650 1300
F 0 "Cz6" H 6675 1400 50  0000 L CNN
F 1 "0.1u" H 6675 1200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6688 1150 50  0001 C CNN
F 3 "" H 6650 1300 50  0001 C CNN
	1    6650 1300
	0    1    1    0   
$EndComp
$Comp
L C Cz9
U 1 1 5A1E6A4B
P 7250 1300
F 0 "Cz9" H 7275 1400 50  0000 L CNN
F 1 "0.1u" H 7275 1200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7288 1150 50  0001 C CNN
F 3 "" H 7250 1300 50  0001 C CNN
	1    7250 1300
	0    1    1    0   
$EndComp
$Comp
L 2N7002-RESCUE-2sBatteryCharger Qz1
U 1 1 5A1E6A52
P 5450 1950
F 0 "Qz1" H 5650 2025 50  0000 L CNN
F 1 "2N7002" H 5650 1950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5650 1875 50  0001 L CIN
F 3 "" H 5450 1950 50  0001 L CNN
	1    5450 1950
	1    0    0    1   
$EndComp
$Comp
L R Rz8
U 1 1 5A1E6A59
P 5000 1950
F 0 "Rz8" V 5080 1950 50  0000 C CNN
F 1 "10k" V 5000 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4930 1950 50  0001 C CNN
F 3 "" H 5000 1950 50  0001 C CNN
	1    5000 1950
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR28
U 1 1 5A1E6A60
P 4750 2050
F 0 "#PWR28" H 4750 1850 50  0001 C CNN
F 1 "GNDPWR" H 4750 1920 50  0000 C CNN
F 2 "" H 4750 2000 50  0001 C CNN
F 3 "" H 4750 2000 50  0001 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
$Comp
L R Rz10
U 1 1 5A1E6A66
P 6700 4250
F 0 "Rz10" V 6780 4250 50  0000 C CNN
F 1 "10" V 6700 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6630 4250 50  0001 C CNN
F 3 "" H 6700 4250 50  0001 C CNN
	1    6700 4250
	-1   0    0    1   
$EndComp
$Comp
L R Rz15
U 1 1 5A1E6A6D
P 7900 3650
F 0 "Rz15" V 7980 3650 50  0000 C CNN
F 1 "5.1k" V 7900 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7830 3650 50  0001 C CNN
F 3 "" H 7900 3650 50  0001 C CNN
	1    7900 3650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR29
U 1 1 5A1E6A74
P 6900 3950
F 0 "#PWR29" H 6900 3700 50  0001 C CNN
F 1 "GND" H 6900 3800 50  0000 C CNN
F 2 "" H 6900 3950 50  0001 C CNN
F 3 "" H 6900 3950 50  0001 C CNN
	1    6900 3950
	1    0    0    -1  
$EndComp
$Comp
L C Cz1
U 1 1 5A1E6A7A
P 3900 2200
F 0 "Cz1" H 3925 2300 50  0000 L CNN
F 1 "0.1u" H 3925 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3938 2050 50  0001 C CNN
F 3 "" H 3900 2200 50  0001 C CNN
	1    3900 2200
	1    0    0    -1  
$EndComp
$Comp
L C Cz2
U 1 1 5A1E6A81
P 3900 2650
F 0 "Cz2" H 3925 2750 50  0000 L CNN
F 1 "0.1u" H 3925 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3938 2500 50  0001 C CNN
F 3 "" H 3900 2650 50  0001 C CNN
	1    3900 2650
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR19
U 1 1 5A1E6A88
P 3900 2800
F 0 "#PWR19" H 3900 2600 50  0001 C CNN
F 1 "GNDPWR" H 3900 2670 50  0000 C CNN
F 2 "" H 3900 2750 50  0001 C CNN
F 3 "" H 3900 2750 50  0001 C CNN
	1    3900 2800
	1    0    0    -1  
$EndComp
Text Label 3400 4450 0    60   ~ 0
SCL
Text Label 3400 4850 0    60   ~ 0
SDA
Text Label 3650 1650 0    60   ~ 0
PACK+
Text Label 3500 5750 0    60   ~ 0
PACK-
$Comp
L C Cz7
U 1 1 5A1E6AA0
P 6900 3800
F 0 "Cz7" H 6925 3900 50  0000 L CNN
F 1 "2.2u" H 6925 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6938 3650 50  0001 C CNN
F 3 "" H 6900 3800 50  0001 C CNN
	1    6900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2800 5100 2800
Wire Wire Line
	5000 2800 5000 2500
Wire Wire Line
	5000 2500 5750 2500
Wire Wire Line
	5100 4050 5050 4050
Wire Wire Line
	4750 4050 4700 4050
Wire Wire Line
	4700 4050 4700 4200
Wire Wire Line
	5100 4450 5000 4450
Wire Wire Line
	5100 4850 5000 4850
Wire Wire Line
	3850 4850 4700 4850
Wire Wire Line
	3900 3200 5100 3200
Wire Wire Line
	4300 3650 5100 3650
Wire Wire Line
	3850 4450 4700 4450
Connection ~ 4150 4450
Connection ~ 4550 4850
Wire Wire Line
	3000 4450 3550 4450
Wire Wire Line
	3000 4850 3550 4850
Connection ~ 4400 3200
Connection ~ 4550 3650
Wire Wire Line
	3900 5750 3900 5650
Wire Wire Line
	3900 3200 3900 5350
Wire Wire Line
	4000 3650 3900 3650
Connection ~ 3900 3650
Wire Wire Line
	4400 5650 4400 5750
Wire Wire Line
	4400 5350 4400 3650
Connection ~ 4400 3650
Wire Wire Line
	4650 2800 4650 3000
Connection ~ 5000 2800
Connection ~ 4400 5750
Wire Wire Line
	6400 2800 7550 2800
Wire Wire Line
	6400 3200 7550 3200
Connection ~ 6950 2800
Wire Wire Line
	7350 2800 7350 2850
Wire Wire Line
	7350 3200 7350 3150
Connection ~ 7350 2800
Connection ~ 7350 3200
Wire Wire Line
	7850 3200 7850 2950
Wire Wire Line
	7850 2950 8450 2950
Wire Wire Line
	7850 2800 8000 2800
Wire Wire Line
	8000 2800 8000 3050
Wire Wire Line
	8000 3050 8450 3050
Wire Wire Line
	8100 2950 8100 2750
Wire Wire Line
	7700 1650 7800 1650
Wire Wire Line
	7800 1300 7800 1850
Wire Wire Line
	7700 1750 8100 1750
Wire Wire Line
	7800 1850 7700 1850
Connection ~ 7800 1750
Wire Wire Line
	8100 1750 8100 2450
Wire Wire Line
	7750 1950 7700 1950
Wire Wire Line
	8050 1950 8050 1750
Connection ~ 8050 1750
Wire Wire Line
	7000 1950 7100 1950
Wire Wire Line
	7000 1650 7000 1950
Wire Wire Line
	7000 1850 7100 1850
Wire Wire Line
	7000 1750 7100 1750
Connection ~ 7000 1850
Wire Wire Line
	7000 1650 7100 1650
Connection ~ 7000 1750
Wire Wire Line
	6800 1650 6900 1650
Wire Wire Line
	6900 1650 6900 1950
Wire Wire Line
	6900 1750 6800 1750
Wire Wire Line
	6900 1850 6800 1850
Connection ~ 6900 1750
Wire Wire Line
	6900 1950 6800 1950
Connection ~ 6900 1850
Wire Wire Line
	6900 1800 7000 1800
Connection ~ 7000 1800
Connection ~ 6900 1800
Wire Wire Line
	6200 1950 6150 1950
Wire Wire Line
	6150 1950 6150 2250
Wire Wire Line
	5550 2250 7200 2250
Wire Wire Line
	7200 2250 7200 3500
Wire Wire Line
	7200 3800 7200 4850
Wire Wire Line
	7200 4850 6400 4850
Wire Wire Line
	3650 1650 6200 1650
Wire Wire Line
	6100 1300 6100 1850
Wire Wire Line
	6100 1850 6200 1850
Connection ~ 6100 1750
Wire Wire Line
	6000 1650 6000 1850
Wire Wire Line
	6000 2150 6000 2250
Connection ~ 6150 2250
Wire Wire Line
	6800 1300 7100 1300
Wire Wire Line
	7400 1300 7800 1300
Connection ~ 7800 1650
Wire Wire Line
	6100 1300 6500 1300
Connection ~ 6100 1650
Wire Wire Line
	5550 2150 5550 2250
Connection ~ 6000 2250
Wire Wire Line
	5550 1750 5550 1650
Wire Wire Line
	5250 1950 5150 1950
Wire Wire Line
	4850 1950 4750 1950
Wire Wire Line
	4750 1950 4750 2050
Wire Wire Line
	6400 4450 6700 4450
Wire Wire Line
	6700 4450 6700 4400
Wire Wire Line
	6700 4100 6700 2400
Wire Wire Line
	6700 2400 5850 2400
Wire Wire Line
	5850 2400 5850 1650
Connection ~ 5850 1650
Connection ~ 6000 1650
Wire Wire Line
	7750 1950 7750 2600
Wire Wire Line
	7750 2600 7900 2600
Wire Wire Line
	7900 2600 7900 3500
Wire Wire Line
	6400 4050 7900 4050
Wire Wire Line
	7900 4050 7900 3800
Wire Wire Line
	6400 3650 6900 3650
Connection ~ 4650 5750
Connection ~ 5550 1650
Wire Wire Line
	4300 5750 8100 5750
Connection ~ 3900 5750
Wire Wire Line
	8450 3450 8100 3450
Wire Wire Line
	8100 3450 8100 5750
Wire Wire Line
	8450 3350 8100 3350
Wire Wire Line
	8100 3350 8100 3050
Connection ~ 8100 3050
Connection ~ 8100 2950
Wire Wire Line
	3900 2050 3650 2050
Wire Wire Line
	3900 2350 3900 2500
Wire Wire Line
	6200 1750 6100 1750
Wire Wire Line
	5750 2500 5750 2600
Wire Wire Line
	3500 5750 4000 5750
Wire Wire Line
	3650 2050 3650 1650
Text HLabel 3500 5750 0    60   Input ~ 0
PACK-
Text HLabel 3650 1650 0    60   Input ~ 0
PACK+
Text HLabel 8450 3450 2    60   Input ~ 0
1N
Text HLabel 8450 3350 2    60   Input ~ 0
1P
Text HLabel 8450 3050 2    60   Input ~ 0
2N
Text HLabel 8450 2950 2    60   Input ~ 0
2P
Wire Wire Line
	3000 4450 3000 4600
Wire Wire Line
	3000 4600 3200 4600
Wire Wire Line
	3000 4850 3000 4700
Wire Wire Line
	3000 4700 3200 4700
$EndSCHEMATC
