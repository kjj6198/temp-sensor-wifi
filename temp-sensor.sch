EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Temparature Sensor + Wifi + Attiny85"
Date "2021-11-30"
Rev "1"
Comp "Kalan"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Battery_Cell BT?
U 1 1 61A67C5E
P 2000 3200
F 0 "BT?" H 2118 3296 50  0000 L CNN
F 1 "Battery_Cell" H 2118 3205 50  0000 L CNN
F 2 "" V 2000 3260 50  0001 C CNN
F 3 "~" V 2000 3260 50  0001 C CNN
	1    2000 3200
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U?
U 1 1 61A69749
P 4750 2750
F 0 "U?" H 4221 2796 50  0000 R CNN
F 1 "ATtiny85-20PU" H 4221 2705 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4750 2750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 4750 2750 50  0001 C CNN
	1    4750 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61A6AABD
P 4750 1850
F 0 "#PWR?" H 4750 1700 50  0001 C CNN
F 1 "+3.3V" H 4765 2023 50  0000 C CNN
F 2 "" H 4750 1850 50  0001 C CNN
F 3 "" H 4750 1850 50  0001 C CNN
	1    4750 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A6B2A0
P 2500 4350
F 0 "#PWR?" H 2500 4100 50  0001 C CNN
F 1 "GND" H 2505 4177 50  0000 C CNN
F 2 "" H 2500 4350 50  0001 C CNN
F 3 "" H 2500 4350 50  0001 C CNN
	1    2500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1850 4750 2150
Text GLabel 2500 4250 1    50   Input ~ 0
GND
Wire Wire Line
	2500 4250 2500 4350
Text GLabel 2000 3500 3    50   Input ~ 0
GND
Wire Wire Line
	2000 3300 2000 3500
$Comp
L Regulator_Linear:TC1262-33 U?
U 1 1 61A6D18E
P 3050 1650
F 0 "U?" H 3050 1892 50  0000 C CNN
F 1 "TC1262-33" H 3050 1801 50  0000 C CNN
F 2 "" H 3050 1875 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21373C.pdf" H 3050 1350 50  0001 C CNN
	1    3050 1650
	1    0    0    -1  
$EndComp
Text GLabel 3050 2100 3    50   Input ~ 0
GND
Wire Wire Line
	3050 1950 3050 2100
Wire Wire Line
	2000 3000 2000 1650
Wire Wire Line
	2000 1650 2750 1650
Wire Wire Line
	3350 1650 3550 1650
Wire Wire Line
	4400 1650 4400 1850
Wire Wire Line
	4400 1850 4750 1850
Connection ~ 4750 1850
Connection ~ 3550 1650
Wire Wire Line
	3550 1650 4400 1650
Wire Wire Line
	3550 1800 3550 1650
Wire Wire Line
	3550 2100 3550 2250
Text GLabel 3550 2250 3    50   Input ~ 0
GND
$Comp
L Device:C C?
U 1 1 61A6F27A
P 3550 1950
F 0 "C?" H 3665 1996 50  0000 L CNN
F 1 "0.1uF" H 3665 1905 50  0000 L CNN
F 2 "" H 3588 1800 50  0001 C CNN
F 3 "~" H 3550 1950 50  0001 C CNN
	1    3550 1950
	1    0    0    -1  
$EndComp
Connection ~ 4750 2150
Wire Wire Line
	4750 2150 4750 2200
$Comp
L power:GND #PWR?
U 1 1 61A7129D
P 4750 3450
F 0 "#PWR?" H 4750 3200 50  0001 C CNN
F 1 "GND" H 4755 3277 50  0000 C CNN
F 2 "" H 4750 3450 50  0001 C CNN
F 3 "" H 4750 3450 50  0001 C CNN
	1    4750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3350 4750 3450
$Comp
L Sensor_Humidity:SHTC3 U?
U 1 1 61A76649
P 6400 2550
F 0 "U?" H 6644 2596 50  0000 L CNN
F 1 "SHTC3" H 6644 2505 50  0000 L CNN
F 2 "Sensor_Humidity:Sensirion_DFN-4-1EP_2x2mm_P1mm_EP0.7x1.6mm" H 6600 2200 50  0001 C CNN
F 3 "https://www.sensirion.com/fileadmin/user_upload/customers/sensirion/Dokumente/0_Datasheets/Humidity/Sensirion_Humidity_Sensors_SHTC3_Datasheet.pdf" H 6100 3000 50  0001 C CNN
	1    6400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2450 6100 2450
Wire Wire Line
	5350 2550 6100 2550
Wire Wire Line
	6100 2550 6100 2650
$Comp
L power:+3.3V #PWR?
U 1 1 61A799AE
P 6500 3050
F 0 "#PWR?" H 6500 2900 50  0001 C CNN
F 1 "+3.3V" H 6515 3223 50  0000 C CNN
F 2 "" H 6500 3050 50  0001 C CNN
F 3 "" H 6500 3050 50  0001 C CNN
	1    6500 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 2850 6500 3050
$Comp
L power:GND #PWR?
U 1 1 61A7A14B
P 6500 2050
F 0 "#PWR?" H 6500 1800 50  0001 C CNN
F 1 "GND" H 6505 1877 50  0000 C CNN
F 2 "" H 6500 2050 50  0001 C CNN
F 3 "" H 6500 2050 50  0001 C CNN
	1    6500 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 2050 6500 2250
$EndSCHEMATC
