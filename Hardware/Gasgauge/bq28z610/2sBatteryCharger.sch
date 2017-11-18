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
LIBS:bq28z610lib
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
L CSD16412Q5A Q1
U 1 1 59F6FD9D
P 5200 1200
F 0 "Q1" H 5000 1500 50  0000 L CNN
F 1 "CSD16412Q5A" H 5000 950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TDSON-8-1_HandSoldering" H 5200 1400 50  0001 C CIN
F 3 "" V 5200 1200 50  0001 L CNN
	1    5200 1200
	-1   0    0    -1  
$EndComp
$Comp
L CSD16412Q5A Q2
U 1 1 59F700C2
P 4300 1200
F 0 "Q2" H 4100 1500 50  0000 L CNN
F 1 "CSD16412Q5A" H 4100 950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TDSON-8-1_HandSoldering" H 4300 1400 50  0001 C CIN
F 3 "" V 4300 1200 50  0001 L CNN
	1    4300 1200
	1    0    0    -1  
$EndComp
$Comp
L bq28z610 U1
U 1 1 59F7067B
P 3550 3250
F 0 "U1" H 3950 4550 60  0000 C CNN
F 1 "bq28z610" H 3550 2150 60  0000 C CNN
F 2 "Housings_SON:Texas_S-PDSO-N12" H 3800 3150 60  0001 C CNN
F 3 "" H 3800 3150 60  0001 C CNN
	1    3550 3250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59F7075B
P 2200 2700
F 0 "C1" H 2225 2800 50  0000 L CNN
F 1 "0.1uF" H 2225 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2238 2550 50  0001 C CNN
F 3 "" H 2200 2700 50  0001 C CNN
	1    2200 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59F707A1
P 2200 2850
F 0 "#PWR01" H 2200 2600 50  0001 C CNN
F 1 "GND" H 2200 2700 50  0000 C CNN
F 2 "" H 2200 2850 50  0001 C CNN
F 3 "" H 2200 2850 50  0001 C CNN
	1    2200 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59F7084E
P 2350 3300
F 0 "#PWR02" H 2350 3050 50  0001 C CNN
F 1 "GND" H 2350 3150 50  0000 C CNN
F 2 "" H 2350 3300 50  0001 C CNN
F 3 "" H 2350 3300 50  0001 C CNN
	1    2350 3300
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59F70804
P 2350 3150
F 0 "C2" H 2375 3250 50  0000 L CNN
F 1 "0.1uF" H 2375 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2388 3000 50  0001 C CNN
F 3 "" H 2350 3150 50  0001 C CNN
	1    2350 3150
	1    0    0    -1  
$EndComp
$Comp
L Thermistor_NTC TH1
U 1 1 59F7091E
P 2700 3400
F 0 "TH1" V 2525 3400 50  0000 C CNN
F 1 "Thermistor_NTC" V 2825 3400 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S02B-XH-A_02x2.50mm_Angled" H 2700 3450 50  0001 C CNN
F 3 "" H 2700 3450 50  0001 C CNN
	1    2700 3400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 59F70E5A
P 2500 3550
F 0 "#PWR03" H 2500 3300 50  0001 C CNN
F 1 "GND" H 2500 3400 50  0000 C CNN
F 2 "" H 2500 3550 50  0001 C CNN
F 3 "" H 2500 3550 50  0001 C CNN
	1    2500 3550
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 59F70E8A
P 2650 3800
F 0 "R6" V 2730 3800 50  0000 C CNN
F 1 "100" V 2650 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2580 3800 50  0001 C CNN
F 3 "" H 2650 3800 50  0001 C CNN
	1    2650 3800
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 59F70F37
P 2650 4200
F 0 "R7" V 2730 4200 50  0000 C CNN
F 1 "100" V 2650 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2580 4200 50  0001 C CNN
F 3 "" H 2650 4200 50  0001 C CNN
	1    2650 4200
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D1
U 1 1 59F70FCC
P 1950 3950
F 0 "D1" H 1950 4050 50  0000 C CNN
F 1 "D_Schottky" H 1950 3850 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 1950 3950 50  0001 C CNN
F 3 "" H 1950 3950 50  0001 C CNN
	1    1950 3950
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR04
U 1 1 59F710A0
P 1950 4100
F 0 "#PWR04" H 1950 3900 50  0001 C CNN
F 1 "GNDPWR" H 1950 3970 50  0000 C CNN
F 2 "" H 1950 4050 50  0001 C CNN
F 3 "" H 1950 4050 50  0001 C CNN
	1    1950 4100
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D2
U 1 1 59F710F2
P 2350 4350
F 0 "D2" H 2350 4450 50  0000 C CNN
F 1 "D_Schottky" H 2350 4250 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 2350 4350 50  0001 C CNN
F 3 "" H 2350 4350 50  0001 C CNN
	1    2350 4350
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR05
U 1 1 59F7118D
P 2350 4500
F 0 "#PWR05" H 2350 4300 50  0001 C CNN
F 1 "GNDPWR" H 2350 4370 50  0000 C CNN
F 2 "" H 2350 4450 50  0001 C CNN
F 3 "" H 2350 4450 50  0001 C CNN
	1    2350 4500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59F711C0
P 1500 3800
F 0 "R1" V 1580 3800 50  0000 C CNN
F 1 "100" V 1500 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1430 3800 50  0001 C CNN
F 3 "" H 1500 3800 50  0001 C CNN
	1    1500 3800
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 59F713C6
P 1500 4200
F 0 "R2" V 1580 4200 50  0000 C CNN
F 1 "100" V 1500 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1430 4200 50  0001 C CNN
F 3 "" H 1500 4200 50  0001 C CNN
	1    1500 4200
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 J2
U 1 1 59F7144E
P 1000 4050
F 0 "J2" H 1000 4150 50  0000 C CNN
F 1 "SCL/SDA" H 1000 3850 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S02B-XH-A_02x2.50mm_Angled" H 1000 4050 50  0001 C CNN
F 3 "" H 1000 4050 50  0001 C CNN
	1    1000 4050
	-1   0    0    1   
$EndComp
$Comp
L C C5
U 1 1 59F71762
P 1950 3000
F 0 "C5" H 1975 3100 50  0000 L CNN
F 1 "0.1uF" H 1975 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1988 2850 50  0001 C CNN
F 3 "" H 1950 3000 50  0001 C CNN
	1    1950 3000
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 59F718DE
P 1950 5100
F 0 "R4" V 2030 5100 50  0000 C CNN
F 1 "1-3m" V 1950 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_2512" V 1880 5100 50  0001 C CNN
F 3 "" H 1950 5100 50  0001 C CNN
	1    1950 5100
	0    -1   -1   0   
$EndComp
$Comp
L GNDPWR #PWR06
U 1 1 59F71EFB
P 1700 5100
F 0 "#PWR06" H 1700 4900 50  0001 C CNN
F 1 "GNDPWR" H 1700 4970 50  0000 C CNN
F 2 "" H 1700 5050 50  0001 C CNN
F 3 "" H 1700 5050 50  0001 C CNN
	1    1700 5100
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59F727AC
P 1700 4850
F 0 "R3" V 1780 4850 50  0000 C CNN
F 1 "100" V 1700 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1630 4850 50  0001 C CNN
F 3 "" H 1700 4850 50  0001 C CNN
	1    1700 4850
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 59F72932
P 2200 4850
F 0 "R5" V 2280 4850 50  0000 C CNN
F 1 "100" V 2200 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2130 4850 50  0001 C CNN
F 3 "" H 2200 4850 50  0001 C CNN
	1    2200 4850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 59F72A46
P 2450 2350
F 0 "#PWR07" H 2450 2100 50  0001 C CNN
F 1 "GND" H 2450 2200 50  0000 C CNN
F 2 "" H 2450 2350 50  0001 C CNN
F 3 "" H 2450 2350 50  0001 C CNN
	1    2450 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 59F72AAA
P 2450 5100
F 0 "#PWR08" H 2450 4850 50  0001 C CNN
F 1 "GND" H 2450 4950 50  0000 C CNN
F 2 "" H 2450 5100 50  0001 C CNN
F 3 "" H 2450 5100 50  0001 C CNN
	1    2450 5100
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 59F731E7
P 4750 2300
F 0 "C8" H 4775 2400 50  0000 L CNN
F 1 "0.1uF" H 4775 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4788 2150 50  0001 C CNN
F 3 "" H 4750 2300 50  0001 C CNN
	1    4750 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59F735F8
P 4750 2450
F 0 "#PWR09" H 4750 2200 50  0001 C CNN
F 1 "GND" H 4750 2300 50  0000 C CNN
F 2 "" H 4750 2450 50  0001 C CNN
F 3 "" H 4750 2450 50  0001 C CNN
	1    4750 2450
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 59F7375C
P 5150 2350
F 0 "C10" H 5175 2450 50  0000 L CNN
F 1 "1uF" H 5175 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5188 2200 50  0001 C CNN
F 3 "" H 5150 2350 50  0001 C CNN
	1    5150 2350
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 59F7384F
P 5500 2150
F 0 "R12" V 5580 2150 50  0000 C CNN
F 1 "100" V 5500 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5430 2150 50  0001 C CNN
F 3 "" H 5500 2150 50  0001 C CNN
	1    5500 2150
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 59F7393E
P 5500 2550
F 0 "R13" V 5580 2550 50  0000 C CNN
F 1 "5" V 5500 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5430 2550 50  0001 C CNN
F 3 "" H 5500 2550 50  0001 C CNN
	1    5500 2550
	0    1    1    0   
$EndComp
$Comp
L Fuse F1
U 1 1 59F73D0E
P 5900 1950
F 0 "F1" V 5980 1950 50  0000 C CNN
F 1 "Fuse" V 5825 1950 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_lateral_Type-II" V 5830 1950 50  0001 C CNN
F 3 "" H 5900 1950 50  0001 C CNN
	1    5900 1950
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 59F74B83
P 5700 1300
F 0 "R14" V 5780 1300 50  0000 C CNN
F 1 "10M" V 5700 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5630 1300 50  0001 C CNN
F 3 "" H 5700 1300 50  0001 C CNN
	1    5700 1300
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 59F757D3
P 5000 3000
F 0 "R11" V 5080 3000 50  0000 C CNN
F 1 "5.1k" V 5000 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4930 3000 50  0001 C CNN
F 3 "" H 5000 3000 50  0001 C CNN
	1    5000 3000
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 59F75CCD
P 3800 1350
F 0 "R9" V 3880 1350 50  0000 C CNN
F 1 "10M" V 3800 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3730 1350 50  0001 C CNN
F 3 "" H 3800 1350 50  0001 C CNN
	1    3800 1350
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 59F7651A
P 4450 650
F 0 "C6" H 4475 750 50  0000 L CNN
F 1 "0.1uF" H 4475 550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4488 500 50  0001 C CNN
F 3 "" H 4450 650 50  0001 C CNN
	1    4450 650 
	0    1    1    0   
$EndComp
$Comp
L C C9
U 1 1 59F765DD
P 5050 650
F 0 "C9" H 5075 750 50  0000 L CNN
F 1 "0.1uF" H 5075 550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5088 500 50  0001 C CNN
F 3 "" H 5050 650 50  0001 C CNN
	1    5050 650 
	0    1    1    0   
$EndComp
$Comp
L 2N7002 Q3
U 1 1 59F76D1E
P 3250 1300
F 0 "Q3" H 3450 1375 50  0000 L CNN
F 1 "2N7002" H 3450 1300 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3450 1225 50  0001 L CIN
F 3 "" H 3250 1300 50  0001 L CNN
	1    3250 1300
	1    0    0    1   
$EndComp
$Comp
L R R8
U 1 1 59F7771D
P 2800 1300
F 0 "R8" V 2880 1300 50  0000 C CNN
F 1 "10k" V 2800 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2730 1300 50  0001 C CNN
F 3 "" H 2800 1300 50  0001 C CNN
	1    2800 1300
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR010
U 1 1 59F779B9
P 2550 1400
F 0 "#PWR010" H 2550 1200 50  0001 C CNN
F 1 "GNDPWR" H 2550 1270 50  0000 C CNN
F 2 "" H 2550 1350 50  0001 C CNN
F 3 "" H 2550 1350 50  0001 C CNN
	1    2550 1400
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 59F78D5D
P 4500 3600
F 0 "R10" V 4580 3600 50  0000 C CNN
F 1 "10" V 4500 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 3600 50  0001 C CNN
F 3 "" H 4500 3600 50  0001 C CNN
	1    4500 3600
	-1   0    0    1   
$EndComp
$Comp
L R R15
U 1 1 59F79675
P 5700 3000
F 0 "R15" V 5780 3000 50  0000 C CNN
F 1 "5.1k" V 5700 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5630 3000 50  0001 C CNN
F 3 "" H 5700 3000 50  0001 C CNN
	1    5700 3000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 59F79993
P 4700 3300
F 0 "#PWR011" H 4700 3050 50  0001 C CNN
F 1 "GND" H 4700 3150 50  0000 C CNN
F 2 "" H 4700 3300 50  0001 C CNN
F 3 "" H 4700 3300 50  0001 C CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 59F7B2DA
P 1000 3100
F 0 "J1" H 1000 3200 50  0000 C CNN
F 1 "PACK" H 1000 2900 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S02B-XH-A_02x2.50mm_Angled" H 1000 3100 50  0001 C CNN
F 3 "" H 1000 3100 50  0001 C CNN
	1    1000 3100
	-1   0    0    1   
$EndComp
$Comp
L C C3
U 1 1 59F9C989
P 1700 1550
F 0 "C3" H 1725 1650 50  0000 L CNN
F 1 "0.1uF" H 1725 1450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1738 1400 50  0001 C CNN
F 3 "" H 1700 1550 50  0001 C CNN
	1    1700 1550
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 59F9CB0D
P 1700 2000
F 0 "C4" H 1725 2100 50  0000 L CNN
F 1 "0.1uF" H 1725 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1738 1850 50  0001 C CNN
F 3 "" H 1700 2000 50  0001 C CNN
	1    1700 2000
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR012
U 1 1 59F9CEA0
P 1700 2150
F 0 "#PWR012" H 1700 1950 50  0001 C CNN
F 1 "GNDPWR" H 1700 2020 50  0000 C CNN
F 2 "" H 1700 2100 50  0001 C CNN
F 3 "" H 1700 2100 50  0001 C CNN
	1    1700 2150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J4
U 1 1 59F9E260
P 6450 2800
F 0 "J4" H 6450 2900 50  0000 C CNN
F 1 "BAT1" H 6450 2600 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S02B-XH-A_02x2.50mm_Angled" H 6450 2800 50  0001 C CNN
F 3 "" H 6450 2800 50  0001 C CNN
	1    6450 2800
	1    0    0    1   
$EndComp
$Comp
L Conn_01x02 J3
U 1 1 59F9E406
P 6450 2400
F 0 "J3" H 6450 2500 50  0000 C CNN
F 1 "BAT2" H 6450 2200 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S02B-XH-A_02x2.50mm_Angled" H 6450 2400 50  0001 C CNN
F 3 "" H 6450 2400 50  0001 C CNN
	1    6450 2400
	1    0    0    1   
$EndComp
Text Label 1200 3800 0    60   ~ 0
SCL
Text Label 1200 4200 0    60   ~ 0
SDA
Text Label 1200 3000 0    60   ~ 0
PACK+
Text Label 1200 3100 0    60   ~ 0
PACK-
$Comp
L LM2596 U2
U 1 1 59FA639D
P 8100 1300
F 0 "U2" H 8350 950 60  0000 C CNN
F 1 "LM2596" H 8150 1650 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-5_TabPin3" H 8100 1300 60  0001 C CNN
F 3 "" H 8100 1300 60  0001 C CNN
	1    8100 1300
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR013
U 1 1 59FA7C51
P 8700 1750
F 0 "#PWR013" H 8700 1550 50  0001 C CNN
F 1 "GNDPWR" H 8700 1620 50  0000 C CNN
F 2 "" H 8700 1700 50  0001 C CNN
F 3 "" H 8700 1700 50  0001 C CNN
	1    8700 1750
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 59FA7D7D
P 9250 1300
F 0 "L1" V 9200 1300 50  0000 C CNN
F 1 "33uH" V 9325 1300 50  0000 C CNN
F 2 "Inductors_SMD:L_12x12mm_h8mm" H 9250 1300 50  0001 C CNN
F 3 "" H 9250 1300 50  0001 C CNN
	1    9250 1300
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky D3
U 1 1 59FA7DF0
P 9000 1550
F 0 "D3" H 9000 1650 50  0000 C CNN
F 1 "D_Schottky" H 9000 1450 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 9000 1550 50  0001 C CNN
F 3 "" H 9000 1550 50  0001 C CNN
	1    9000 1550
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR014
U 1 1 59FA859A
P 9000 1750
F 0 "#PWR014" H 9000 1550 50  0001 C CNN
F 1 "GNDPWR" H 9000 1620 50  0000 C CNN
F 2 "" H 9000 1700 50  0001 C CNN
F 3 "" H 9000 1700 50  0001 C CNN
	1    9000 1750
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR015
U 1 1 59FA8939
P 9550 1750
F 0 "#PWR015" H 9550 1550 50  0001 C CNN
F 1 "GNDPWR" H 9550 1620 50  0000 C CNN
F 2 "" H 9550 1700 50  0001 C CNN
F 3 "" H 9550 1700 50  0001 C CNN
	1    9550 1750
	1    0    0    -1  
$EndComp
Text Label 9900 1300 2    60   ~ 0
INlatch
$Comp
L Q_PMOS_GSD Q4
U 1 1 59FA9C41
P 8300 2750
F 0 "Q4" H 8500 2800 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 8500 2700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8500 2850 50  0001 C CNN
F 3 "" H 8300 2750 50  0001 C CNN
	1    8300 2750
	0    1    -1   0   
$EndComp
$Comp
L R R16
U 1 1 59FA9E81
P 7950 2900
F 0 "R16" V 8030 2900 50  0000 C CNN
F 1 "100k" V 7950 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7880 2900 50  0001 C CNN
F 3 "" H 7950 2900 50  0001 C CNN
	1    7950 2900
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q5
U 1 1 59FAAAC4
P 8400 3500
F 0 "Q5" H 8600 3575 50  0000 L CNN
F 1 "2N3904" H 8600 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23" H 8600 3425 50  0001 L CIN
F 3 "" H 8400 3500 50  0001 L CNN
	1    8400 3500
	-1   0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR016
U 1 1 59FAB670
P 8300 3900
F 0 "#PWR016" H 8300 3700 50  0001 C CNN
F 1 "GNDPWR" H 8300 3770 50  0000 C CNN
F 2 "" H 8300 3850 50  0001 C CNN
F 3 "" H 8300 3850 50  0001 C CNN
	1    8300 3900
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 59FAB702
P 8700 3100
F 0 "R17" V 8780 3100 50  0000 C CNN
F 1 "100k" V 8700 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8630 3100 50  0001 C CNN
F 3 "" H 8700 3100 50  0001 C CNN
	1    8700 3100
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 59FAC559
P 9200 3500
F 0 "SW1" H 9250 3600 50  0000 L CNN
F 1 "SW_Push" H 9200 3440 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_0.80mmDrill" H 9200 3700 50  0001 C CNN
F 3 "" H 9200 3700 50  0001 C CNN
	1    9200 3500
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q6
U 1 1 59FAC718
P 9800 3700
F 0 "Q6" H 10000 3775 50  0000 L CNN
F 1 "2N3904" H 10000 3700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23" H 10000 3625 50  0001 L CIN
F 3 "" H 9800 3700 50  0001 L CNN
	1    9800 3700
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR017
U 1 1 59FAD2A0
P 9500 4200
F 0 "#PWR017" H 9500 4000 50  0001 C CNN
F 1 "GNDPWR" H 9500 4070 50  0000 C CNN
F 2 "" H 9500 4150 50  0001 C CNN
F 3 "" H 9500 4150 50  0001 C CNN
	1    9500 4200
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 59FAE33F
P 9500 3100
F 0 "R18" V 9580 3100 50  0000 C CNN
F 1 "1M" V 9500 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9430 3100 50  0001 C CNN
F 3 "" H 9500 3100 50  0001 C CNN
	1    9500 3100
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 59FAE57D
P 9900 3100
F 0 "R19" V 9980 3100 50  0000 C CNN
F 1 "100k" V 9900 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9830 3100 50  0001 C CNN
F 3 "" H 9900 3100 50  0001 C CNN
	1    9900 3100
	1    0    0    -1  
$EndComp
Text Label 7600 2650 0    60   ~ 0
INlatch
Text Label 10350 2650 2    60   ~ 0
OUTlatch
$Comp
L Conn_01x02 J5
U 1 1 59FAF59B
P 10550 2750
F 0 "J5" H 10550 2850 50  0000 C CNN
F 1 "OUTPUT" H 10550 2550 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S02B-XH-A_02x2.50mm_Angled" H 10550 2750 50  0001 C CNN
F 3 "" H 10550 2750 50  0001 C CNN
	1    10550 2750
	1    0    0    1   
$EndComp
$Comp
L GNDPWR #PWR018
U 1 1 59FAF6A5
P 10250 2850
F 0 "#PWR018" H 10250 2650 50  0001 C CNN
F 1 "GNDPWR" H 10250 2720 50  0000 C CNN
F 2 "" H 10250 2800 50  0001 C CNN
F 3 "" H 10250 2800 50  0001 C CNN
	1    10250 2850
	1    0    0    -1  
$EndComp
Text Label 7350 1100 0    60   ~ 0
PACK+
$Comp
L GNDPWR #PWR019
U 1 1 59FA71BD
P 7350 1600
F 0 "#PWR019" H 7350 1400 50  0001 C CNN
F 1 "GNDPWR" H 7350 1470 50  0000 C CNN
F 2 "" H 7350 1550 50  0001 C CNN
F 3 "" H 7350 1550 50  0001 C CNN
	1    7350 1600
	1    0    0    -1  
$EndComp
$Comp
L CP C11
U 1 1 59FB5418
P 7350 1300
F 0 "C11" H 7375 1400 50  0000 L CNN
F 1 "680uF" H 7375 1200 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10" H 7388 1150 50  0001 C CNN
F 3 "" H 7350 1300 50  0001 C CNN
	1    7350 1300
	1    0    0    -1  
$EndComp
$Comp
L CP C13
U 1 1 59FB5EC9
P 9550 1550
F 0 "C13" H 9575 1650 50  0000 L CNN
F 1 "220uF" H 9575 1450 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.8" H 9588 1400 50  0001 C CNN
F 3 "" H 9550 1550 50  0001 C CNN
	1    9550 1550
	1    0    0    -1  
$EndComp
$Comp
L CP C12
U 1 1 59FB73A3
P 9500 3950
F 0 "C12" H 9525 4050 50  0000 L CNN
F 1 "47uF" H 9525 3850 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.3" H 9538 3800 50  0001 C CNN
F 3 "" H 9500 3950 50  0001 C CNN
	1    9500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2150 2900 2150
Wire Wire Line
	2800 2150 2800 1850
Wire Wire Line
	2800 1850 3550 1850
Wire Wire Line
	3550 1850 3550 1950
Wire Wire Line
	2900 3400 2850 3400
Wire Wire Line
	2550 3400 2500 3400
Wire Wire Line
	2500 3400 2500 3550
Wire Wire Line
	2900 3800 2800 3800
Wire Wire Line
	2900 4200 2800 4200
Wire Wire Line
	1650 4200 2500 4200
Wire Wire Line
	1700 2550 2900 2550
Wire Wire Line
	2100 3000 2900 3000
Wire Wire Line
	1650 3800 2500 3800
Connection ~ 1950 3800
Connection ~ 2350 4200
Wire Wire Line
	1350 3800 1200 3800
Wire Wire Line
	1200 3800 1200 3950
Wire Wire Line
	1200 4050 1200 4200
Wire Wire Line
	1200 4200 1350 4200
Connection ~ 2200 2550
Connection ~ 2350 3000
Wire Wire Line
	600  5100 1800 5100
Wire Wire Line
	1700 5100 1700 5000
Wire Wire Line
	1700 2550 1700 4700
Wire Wire Line
	1800 3000 1700 3000
Connection ~ 1700 3000
Wire Wire Line
	2200 5000 2200 5100
Wire Wire Line
	2200 4700 2200 3000
Connection ~ 2200 3000
Wire Wire Line
	2450 2150 2450 2350
Connection ~ 2800 2150
Connection ~ 2200 5100
Wire Wire Line
	4200 2150 5350 2150
Wire Wire Line
	4200 2550 5350 2550
Connection ~ 4750 2150
Wire Wire Line
	5150 2150 5150 2200
Wire Wire Line
	5150 2550 5150 2500
Connection ~ 5150 2150
Connection ~ 5150 2550
Wire Wire Line
	5650 2550 5650 2300
Wire Wire Line
	5650 2300 6250 2300
Wire Wire Line
	5650 2150 5800 2150
Wire Wire Line
	5800 2150 5800 2400
Wire Wire Line
	5800 2400 6250 2400
Wire Wire Line
	5900 2300 5900 2100
Wire Wire Line
	5500 1000 5600 1000
Wire Wire Line
	5600 650  5600 1200
Wire Wire Line
	5500 1100 5900 1100
Wire Wire Line
	5600 1200 5500 1200
Connection ~ 5600 1100
Wire Wire Line
	5900 1100 5900 1800
Wire Wire Line
	5550 1300 5500 1300
Wire Wire Line
	5850 1300 5850 1100
Connection ~ 5850 1100
Wire Wire Line
	4800 1300 4900 1300
Wire Wire Line
	4800 1000 4800 1300
Wire Wire Line
	4800 1200 4900 1200
Wire Wire Line
	4800 1100 4900 1100
Connection ~ 4800 1200
Wire Wire Line
	4800 1000 4900 1000
Connection ~ 4800 1100
Wire Wire Line
	4600 1000 4700 1000
Wire Wire Line
	4700 1000 4700 1300
Wire Wire Line
	4700 1100 4600 1100
Wire Wire Line
	4700 1200 4600 1200
Connection ~ 4700 1100
Wire Wire Line
	4700 1300 4600 1300
Connection ~ 4700 1200
Wire Wire Line
	4700 1150 4800 1150
Connection ~ 4800 1150
Connection ~ 4700 1150
Wire Wire Line
	4000 1300 3950 1300
Wire Wire Line
	3950 1300 3950 1600
Wire Wire Line
	3350 1600 5000 1600
Wire Wire Line
	5000 1600 5000 2850
Wire Wire Line
	5000 3150 5000 4200
Wire Wire Line
	5000 4200 4200 4200
Wire Wire Line
	1450 1000 4000 1000
Wire Wire Line
	3900 650  3900 1200
Wire Wire Line
	3900 1200 4000 1200
Connection ~ 3900 1100
Wire Wire Line
	3800 1000 3800 1200
Wire Wire Line
	3800 1500 3800 1600
Connection ~ 3950 1600
Wire Wire Line
	4600 650  4900 650 
Wire Wire Line
	5200 650  5600 650 
Connection ~ 5600 1000
Wire Wire Line
	3900 650  4300 650 
Connection ~ 3900 1000
Wire Wire Line
	3350 1500 3350 1600
Connection ~ 3800 1600
Wire Wire Line
	3350 1100 3350 1000
Wire Wire Line
	3050 1300 2950 1300
Wire Wire Line
	2650 1300 2550 1300
Wire Wire Line
	2550 1300 2550 1400
Wire Wire Line
	4200 3800 4500 3800
Wire Wire Line
	4500 3800 4500 3750
Wire Wire Line
	4500 3450 4500 1750
Wire Wire Line
	4500 1750 3650 1750
Wire Wire Line
	3650 1750 3650 1000
Connection ~ 3650 1000
Connection ~ 3800 1000
Wire Wire Line
	5550 1300 5550 1950
Wire Wire Line
	5550 1950 5700 1950
Wire Wire Line
	5700 1950 5700 2850
Wire Wire Line
	4200 3400 5700 3400
Wire Wire Line
	5700 3400 5700 3150
Wire Wire Line
	4200 3000 4700 3000
Connection ~ 2450 5100
Wire Wire Line
	1450 3000 1200 3000
Wire Wire Line
	1450 1000 1450 3000
Connection ~ 3350 1000
Wire Wire Line
	2100 5100 5900 5100
Wire Wire Line
	600  5100 600  3500
Wire Wire Line
	600  3500 1250 3500
Connection ~ 1700 5100
Wire Wire Line
	1200 3100 1250 3100
Wire Wire Line
	1250 3100 1250 3500
Wire Wire Line
	6250 2800 5900 2800
Wire Wire Line
	5900 2800 5900 5100
Wire Wire Line
	6250 2700 5900 2700
Wire Wire Line
	5900 2700 5900 2400
Connection ~ 5900 2400
Connection ~ 5900 2300
Wire Wire Line
	1700 1400 1450 1400
Connection ~ 1450 1400
Wire Wire Line
	1700 1700 1700 1850
Wire Wire Line
	7350 1150 7350 1100
Wire Wire Line
	7350 1100 7700 1100
Wire Wire Line
	7350 1450 7350 1600
Wire Wire Line
	7350 1500 7700 1500
Connection ~ 7350 1500
Wire Wire Line
	8700 1500 8700 1750
Wire Wire Line
	8650 1300 9100 1300
Wire Wire Line
	9000 1300 9000 1400
Wire Wire Line
	9000 1700 9000 1750
Connection ~ 9000 1300
Wire Wire Line
	9400 1300 9900 1300
Wire Wire Line
	9550 1100 9550 1400
Wire Wire Line
	9550 1700 9550 1750
Wire Wire Line
	8650 1500 8700 1500
Wire Wire Line
	9550 1100 8650 1100
Connection ~ 9550 1300
Wire Wire Line
	7950 2400 7950 2750
Wire Wire Line
	7600 2650 8100 2650
Wire Wire Line
	7950 3050 7950 3150
Wire Wire Line
	7950 3150 8300 3150
Wire Wire Line
	8300 2950 8300 3300
Connection ~ 8300 3150
Wire Wire Line
	8300 3700 8300 3900
Wire Wire Line
	8500 2650 10350 2650
Wire Wire Line
	8700 2650 8700 2950
Wire Wire Line
	8600 3500 9000 3500
Wire Wire Line
	8700 3500 8700 3250
Connection ~ 8700 3500
Wire Wire Line
	9400 3500 9900 3500
Wire Wire Line
	9600 3700 9500 3700
Wire Wire Line
	9500 3250 9500 3800
Wire Wire Line
	9500 4100 9500 4200
Wire Wire Line
	9500 4150 9900 4150
Wire Wire Line
	9900 4150 9900 3900
Connection ~ 9500 4150
Connection ~ 9500 3700
Wire Wire Line
	9500 2650 9500 2950
Connection ~ 8700 2650
Wire Wire Line
	9900 3500 9900 3250
Wire Wire Line
	9900 2950 9900 2400
Wire Wire Line
	9900 2400 7950 2400
Connection ~ 7950 2650
Connection ~ 9500 2650
Wire Wire Line
	10350 2750 10250 2750
Wire Wire Line
	10250 2750 10250 2850
Wire Wire Line
	4000 1100 3900 1100
$Comp
L C C7
U 1 1 59F79851
P 4700 3150
F 0 "C7" H 4725 3250 50  0000 L CNN
F 1 "2.2uF" H 4725 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4738 3000 50  0001 C CNN
F 3 "" H 4700 3150 50  0001 C CNN
	1    4700 3150
	1    0    0    -1  
$EndComp
$EndSCHEMATC