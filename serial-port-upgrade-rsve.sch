EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "RSVE, higher baudrates for the serial port of the Atari ST"
Date "2022-11-08"
Rev "v0.0.0-draft"
Comp "Remake by Sporniket"
Comment1 ""
Comment2 ""
Comment3 "https://github.com/sporniket/atari-st-mod-serial-port-upgrade-rsve"
Comment4 "original repository"
$EndDescr
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 636BE735
P 1500 2000
F 0 "J2" H 1500 2100 50  0000 C CNN
F 1 "MFP TDO" H 1500 1900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1500 2000 50  0001 C CNN
F 3 "~" H 1500 2000 50  0001 C CNN
	1    1500 2000
	-1   0    0    -1  
$EndComp
Text Label 1900 2000 2    50   ~ 0
tid
Wire Wire Line
	1700 2000 1900 2000
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 636BFAE3
P 1500 1500
F 0 "J1" H 1500 1600 50  0000 C CNN
F 1 "MFP RC" H 1500 1400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1500 1500 50  0001 C CNN
F 3 "~" H 1500 1500 50  0001 C CNN
	1    1500 1500
	-1   0    0    -1  
$EndComp
Text Label 1900 1500 2    50   ~ 0
tua
Wire Wire Line
	1900 1500 1700 1500
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 636C3721
P 3500 1500
F 0 "J5" H 3500 1600 50  0000 C CNN
F 1 "Led" H 3500 1300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3500 1500 50  0001 C CNN
F 3 "~" H 3500 1500 50  0001 C CNN
	1    3500 1500
	-1   0    0    -1  
$EndComp
Text Label 3950 1500 2    50   ~ 0
led+
Text Label 3950 1600 2    50   ~ 0
led-
Wire Wire Line
	3950 1600 3700 1600
Wire Wire Line
	3700 1500 3950 1500
Text Notes 1100 1250 0    79   ~ 0
Piggy-back connectors
Text Notes 3300 1250 0    79   ~ 0
LED connector
$Comp
L 74x4040:12-STAGE_BINARY_RIPPLE_COUNTER_PHY U2
U 1 1 636ACCB0
P 2750 6050
F 0 "U2" H 2400 6700 50  0000 L TNN
F 1 "12-STAGE_BINARY_RIPPLE_COUNTER_PHY" H 2400 6600 50  0000 L TNB
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 2400 6800 50  0001 L TNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT4040.pdf" H 2400 6900 50  0001 L TNN
	1    2750 6050
	-1   0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP14 X1
U 1 1 636AE527
P 3500 4500
F 0 "X1" H 3300 4750 50  0000 L CNN
F 1 "1,8432 MHz" H 3550 4250 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-14" H 3950 4150 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 3400 4500 50  0001 C CNN
	1    3500 4500
	1    0    0    -1  
$EndComp
$Comp
L gal16v8:GAL16V8_PHY U1
U 1 1 636AFBCF
P 5000 5950
F 0 "U1" H 4550 6700 50  0000 L TNN
F 1 "GAL16V8_PHY" H 4550 6600 50  0000 L TNB
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 4550 6800 50  0001 L TNN
F 3 "" H 4550 6900 50  0001 L TNN
	1    5000 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4500 4050 4500
Wire Wire Line
	4050 4500 4050 5500
Wire Wire Line
	4050 5500 4250 5500
Wire Wire Line
	3400 5800 4250 5800
Wire Wire Line
	3400 5900 4250 5900
Wire Wire Line
	3400 6000 4250 6000
Wire Wire Line
	3400 6100 4250 6100
NoConn ~ 3400 5700
NoConn ~ 3400 6200
NoConn ~ 3400 6300
Wire Wire Line
	3400 6400 3850 6400
NoConn ~ 2100 5800
NoConn ~ 2100 5900
NoConn ~ 2100 6100
NoConn ~ 2100 6400
NoConn ~ 5750 5600
NoConn ~ 5750 5700
NoConn ~ 5750 5800
NoConn ~ 5750 5900
$Comp
L power:VCC #PWR06
U 1 1 636B7AE9
P 1250 5700
F 0 "#PWR06" H 1250 5550 50  0001 C CNN
F 1 "VCC" H 1250 5850 50  0000 C CNN
F 2 "" H 1250 5700 50  0001 C CNN
F 3 "" H 1250 5700 50  0001 C CNN
	1    1250 5700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 636B8645
P 7000 5500
F 0 "#PWR05" H 7000 5350 50  0001 C CNN
F 1 "VCC" H 7000 5650 50  0000 C CNN
F 2 "" H 7000 5500 50  0001 C CNN
F 3 "" H 7000 5500 50  0001 C CNN
	1    7000 5500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 636B91B4
P 3500 4000
F 0 "#PWR03" H 3500 3850 50  0001 C CNN
F 1 "VCC" H 3500 4150 50  0000 C CNN
F 2 "" H 3500 4000 50  0001 C CNN
F 3 "" H 3500 4000 50  0001 C CNN
	1    3500 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 636B9A82
P 3850 6400
F 0 "#PWR08" H 3850 6150 50  0001 C CNN
F 1 "GND" H 3850 6250 50  0000 C CNN
F 2 "" H 3850 6400 50  0001 C CNN
F 3 "" H 3850 6400 50  0001 C CNN
	1    3850 6400
	1    0    0    -1  
$EndComp
Connection ~ 3850 6400
Wire Wire Line
	3850 6400 4250 6400
$Comp
L power:GND #PWR09
U 1 1 636BA470
P 6250 6400
F 0 "#PWR09" H 6250 6150 50  0001 C CNN
F 1 "GND" H 6250 6250 50  0000 C CNN
F 2 "" H 6250 6400 50  0001 C CNN
F 3 "" H 6250 6400 50  0001 C CNN
	1    6250 6400
	1    0    0    -1  
$EndComp
Text Label 1850 6300 0    50   ~ 0
cp
Text Label 1850 6200 0    50   ~ 0
mr
Wire Wire Line
	1850 6200 2100 6200
Wire Wire Line
	1850 6300 2100 6300
Text Label 6000 6300 2    50   ~ 0
mr
Text Label 6000 6200 2    50   ~ 0
cp
Wire Wire Line
	5750 6200 6000 6200
Wire Wire Line
	5750 6300 6000 6300
Wire Wire Line
	5750 6400 6250 6400
Wire Wire Line
	2100 5700 1350 5700
Text Label 1850 6000 0    50   ~ 0
q7
Text Label 4000 6200 0    50   ~ 0
q7
Text Label 4050 4500 0    50   ~ 0
clk
Text Label 4000 6300 0    50   ~ 0
clk
Wire Wire Line
	4000 6200 4250 6200
Wire Wire Line
	4000 6300 4250 6300
Wire Wire Line
	3500 4200 3500 4000
$Comp
L power:VCC #PWR07
U 1 1 636BCA49
P 3750 5700
F 0 "#PWR07" H 3750 5550 50  0001 C CNN
F 1 "VCC" H 3750 5850 50  0000 C CNN
F 2 "" H 3750 5700 50  0001 C CNN
F 3 "" H 3750 5700 50  0001 C CNN
	1    3750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5700 4250 5700
Text Label 4000 5600 0    50   ~ 0
tid
Wire Wire Line
	4000 5600 4250 5600
Text Label 6000 6100 2    50   ~ 0
tua
Wire Wire Line
	6000 6100 5750 6100
Text Label 6000 6000 2    50   ~ 0
led-
Wire Wire Line
	6000 6000 5750 6000
NoConn ~ 3200 4500
$Comp
L power:GND #PWR04
U 1 1 636C5432
P 3500 5000
F 0 "#PWR04" H 3500 4750 50  0001 C CNN
F 1 "GND" H 3500 4850 50  0000 C CNN
F 2 "" H 3500 5000 50  0001 C CNN
F 3 "" H 3500 5000 50  0001 C CNN
	1    3500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4800 3500 5000
Wire Wire Line
	5750 5500 6250 5500
$Comp
L Device:R_Small_US R1
U 1 1 636C7414
P 6250 5700
F 0 "R1" H 6300 5750 50  0000 L CNN
F 1 "1K" H 6300 5650 50  0000 L CNN
F 2 "commons-passives_THT:Passive_THT_resistor_W2.54mm_L10.16mm" H 6250 5700 50  0001 C CNN
F 3 "~" H 6250 5700 50  0001 C CNN
	1    6250 5700
	1    0    0    -1  
$EndComp
Text Label 6250 6000 0    50   ~ 0
led+
Wire Wire Line
	6250 6000 6250 5800
Wire Wire Line
	6250 5600 6250 5500
Connection ~ 6250 5500
Wire Wire Line
	6250 5500 6750 5500
$Comp
L Device:C_Small C1
U 1 1 636C98EC
P 6750 5700
F 0 "C1" H 6850 5750 50  0000 L CNN
F 1 "0.1uF" H 6850 5650 50  0000 L CNN
F 2 "commons-passives_THT:Passive_THT_capacitor_mlcc_W2.54mm_L7.62mm" H 6750 5700 50  0001 C CNN
F 3 "~" H 6750 5700 50  0001 C CNN
	1    6750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 6400 6750 6400
Wire Wire Line
	6750 6400 6750 5800
Connection ~ 6250 6400
Wire Wire Line
	6750 5600 6750 5500
Wire Wire Line
	6750 5500 7000 5500
Connection ~ 6750 5500
Wire Wire Line
	1850 6000 2100 6000
Wire Wire Line
	1700 2500 1850 2500
Wire Wire Line
	1700 3000 1850 3000
$Comp
L power:VCC #PWR01
U 1 1 636CDC21
P 1850 2500
F 0 "#PWR01" H 1850 2350 50  0001 C CNN
F 1 "VCC" H 1850 2650 50  0000 C CNN
F 2 "" H 1850 2500 50  0001 C CNN
F 3 "" H 1850 2500 50  0001 C CNN
	1    1850 2500
	1    0    0    -1  
$EndComp
Connection ~ 1850 2500
$Comp
L power:GND #PWR02
U 1 1 636CE17C
P 1850 3000
F 0 "#PWR02" H 1850 2750 50  0001 C CNN
F 1 "GND" H 1850 2850 50  0000 C CNN
F 2 "" H 1850 3000 50  0001 C CNN
F 3 "" H 1850 3000 50  0001 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
Connection ~ 1850 3000
$Comp
L power:PWR_FLAG #FLG01
U 1 1 636CE8AD
P 2200 2500
F 0 "#FLG01" H 2200 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 2650 50  0000 C CNN
F 2 "" H 2200 2500 50  0001 C CNN
F 3 "~" H 2200 2500 50  0001 C CNN
	1    2200 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 636CED94
P 1500 2500
F 0 "J3" H 1500 2600 50  0000 C CNN
F 1 "VCC" H 1500 2400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1500 2500 50  0001 C CNN
F 3 "~" H 1500 2500 50  0001 C CNN
	1    1500 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 2500 2200 2500
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 636D0B66
P 1500 3000
F 0 "J4" H 1500 3100 50  0000 C CNN
F 1 "GND" H 1500 2900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1500 3000 50  0001 C CNN
F 3 "~" H 1500 3000 50  0001 C CNN
	1    1500 3000
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 636D193A
P 2200 3000
F 0 "#FLG02" H 2200 3075 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 3150 50  0000 C CNN
F 2 "" H 2200 3000 50  0001 C CNN
F 3 "~" H 2200 3000 50  0001 C CNN
	1    2200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3000 2200 3000
$Comp
L Device:C_Small C2
U 1 1 63708C50
P 1350 5900
F 0 "C2" H 1450 5950 50  0000 L CNN
F 1 "0.1uF" H 1450 5850 50  0000 L CNN
F 2 "commons-passives_THT:Passive_THT_capacitor_mlcc_W2.54mm_L7.62mm" H 1350 5900 50  0001 C CNN
F 3 "~" H 1350 5900 50  0001 C CNN
	1    1350 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 63709630
P 1350 6100
F 0 "#PWR010" H 1350 5850 50  0001 C CNN
F 1 "GND" H 1350 5950 50  0000 C CNN
F 2 "" H 1350 6100 50  0001 C CNN
F 3 "" H 1350 6100 50  0001 C CNN
	1    1350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 5800 1350 5700
Connection ~ 1350 5700
Wire Wire Line
	1350 5700 1250 5700
Wire Wire Line
	1350 6100 1350 6000
$EndSCHEMATC
