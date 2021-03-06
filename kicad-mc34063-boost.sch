EESchema Schematic File Version 4
EELAYER 30 0
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
L Regulator_Switching:MC34063AD U?
U 1 1 5F0E8CC0
P 4400 2150
F 0 "U?" H 4400 2617 50  0000 C CNN
F 1 "MC34063AD" H 4400 2526 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4450 1700 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC34063A-D.PDF" H 4900 2050 50  0001 C CNN
	1    4400 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F0E960A
P 4400 2650
F 0 "#PWR?" H 4400 2400 50  0001 C CNN
F 1 "GND" H 4405 2477 50  0000 C CNN
F 2 "" H 4400 2650 50  0001 C CNN
F 3 "" H 4400 2650 50  0001 C CNN
	1    4400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F0EA608
P 4000 2550
F 0 "#PWR?" H 4000 2300 50  0001 C CNN
F 1 "GND" H 4005 2377 50  0000 C CNN
F 2 "" H 4000 2550 50  0001 C CNN
F 3 "" H 4000 2550 50  0001 C CNN
	1    4000 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F0E9FF3
P 4000 2450
F 0 "C?" H 3800 2500 50  0000 L CNN
F 1 "{CT}" H 3900 2400 50  0000 R CNN
F 2 "" H 4000 2450 50  0001 C CNN
F 3 "~" H 4000 2450 50  0001 C CNN
	1    4000 2450
	1    0    0    -1  
$EndComp
Text GLabel 3550 1600 0    50   Input ~ 0
VIN
$Comp
L power:GND #PWR?
U 1 1 5F0ECA89
P 3750 1900
F 0 "#PWR?" H 3750 1650 50  0001 C CNN
F 1 "GND" H 3755 1727 50  0000 C CNN
F 2 "" H 3750 1900 50  0001 C CNN
F 3 "" H 3750 1900 50  0001 C CNN
	1    3750 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1950 4000 1600
$Comp
L Device:R_Small R?
U 1 1 5F0ED97C
P 4400 1600
F 0 "R?" V 4204 1600 50  0000 C CNN
F 1 "{Rsc}" V 4295 1600 50  0000 C CNN
F 2 "" H 4400 1600 50  0001 C CNN
F 3 "~" H 4400 1600 50  0001 C CNN
	1    4400 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 1600 4300 1600
Connection ~ 4000 1600
Wire Wire Line
	4800 1950 4800 1600
Wire Wire Line
	4800 1600 4500 1600
$Comp
L Device:R_Small R?
U 1 1 5F0EE556
P 5000 1800
F 0 "R?" H 4941 1754 50  0000 R CNN
F 1 "180" H 4941 1845 50  0000 R CNN
F 2 "" H 5000 1800 50  0001 C CNN
F 3 "~" H 5000 1800 50  0001 C CNN
	1    5000 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 1700 5000 1600
Wire Wire Line
	5000 1600 4800 1600
Connection ~ 4800 1600
Wire Wire Line
	4800 2050 5000 2050
Wire Wire Line
	5000 2050 5000 1900
$Comp
L Device:L_Small L?
U 1 1 5F0EEFA8
P 5300 1900
F 0 "L?" H 5348 1946 50  0000 L CNN
F 1 "{Lmin}" H 5348 1855 50  0000 L CNN
F 2 "" H 5300 1900 50  0001 C CNN
F 3 "~" H 5300 1900 50  0001 C CNN
	1    5300 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1800 5300 1600
Wire Wire Line
	5300 1600 5000 1600
Connection ~ 5000 1600
Wire Wire Line
	4800 2150 5300 2150
Wire Wire Line
	5300 2150 5300 2000
$Comp
L power:GND #PWR?
U 1 1 5F0EFA71
P 4950 2350
F 0 "#PWR?" H 4950 2100 50  0001 C CNN
F 1 "GND" H 4955 2177 50  0000 C CNN
F 2 "" H 4950 2350 50  0001 C CNN
F 3 "" H 4950 2350 50  0001 C CNN
	1    4950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2350 4800 2350
$Comp
L Device:D_Schottky_Small D?
U 1 1 5F0F074F
P 5300 2400
F 0 "D?" V 5346 2330 50  0000 R CNN
F 1 "D_Schottky_Small" V 5255 2330 50  0000 R CNN
F 2 "" V 5300 2400 50  0001 C CNN
F 3 "~" V 5300 2400 50  0001 C CNN
	1    5300 2400
	0    -1   -1   0   
$EndComp
Connection ~ 5300 2150
$Comp
L Device:R_Small R?
U 1 1 5F0F1CCF
P 5050 2650
F 0 "R?" V 5150 2650 50  0000 C CNN
F 1 "{R2}" V 5250 2650 50  0000 C CNN
F 2 "" H 5050 2650 50  0001 C CNN
F 3 "~" H 5050 2650 50  0001 C CNN
	1    5050 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F0F2A48
P 4800 2850
F 0 "R?" H 4950 2800 50  0000 R CNN
F 1 "{R1}" H 5000 2900 50  0000 R CNN
F 2 "" H 4800 2850 50  0001 C CNN
F 3 "~" H 4800 2850 50  0001 C CNN
	1    4800 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F0F6B2F
P 4800 2950
F 0 "#PWR?" H 4800 2700 50  0001 C CNN
F 1 "GND" H 4805 2777 50  0000 C CNN
F 2 "" H 4800 2950 50  0001 C CNN
F 3 "" H 4800 2950 50  0001 C CNN
	1    4800 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5F0F9DD4
P 3750 1800
F 0 "C?" H 3550 1800 50  0000 L CNN
F 1 "100u" H 3650 1700 50  0000 R CNN
F 2 "" H 3750 1800 50  0001 C CNN
F 3 "~" H 3750 1800 50  0001 C CNN
	1    3750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1600 3750 1600
Wire Wire Line
	3750 1700 3750 1600
Connection ~ 3750 1600
Wire Wire Line
	3750 1600 4000 1600
$Comp
L Device:CP_Small C?
U 1 1 5F103824
P 5300 2850
F 0 "C?" H 5400 2900 50  0000 L CNN
F 1 "100u" H 5400 2800 50  0000 L CNN
F 2 "" H 5300 2850 50  0001 C CNN
F 3 "~" H 5300 2850 50  0001 C CNN
	1    5300 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F105083
P 5300 2950
F 0 "#PWR?" H 5300 2700 50  0001 C CNN
F 1 "GND" H 5305 2777 50  0000 C CNN
F 2 "" H 5300 2950 50  0001 C CNN
F 3 "" H 5300 2950 50  0001 C CNN
	1    5300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2750 5300 2650
Connection ~ 5300 2650
Text GLabel 5500 2650 2    50   Input ~ 0
VOUT
Wire Wire Line
	5500 2650 5300 2650
Wire Wire Line
	5300 2150 5300 2300
Wire Wire Line
	5300 2500 5300 2650
Wire Wire Line
	4800 2450 4800 2650
Wire Wire Line
	4950 2650 4800 2650
Connection ~ 4800 2650
Wire Wire Line
	4800 2650 4800 2750
Wire Wire Line
	5150 2650 5300 2650
$EndSCHEMATC
