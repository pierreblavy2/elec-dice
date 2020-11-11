EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev "1"
Comp ""
Comment1 "Design for JLCPCB 1-2 Layer Service"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR0101
U 1 1 5F76D78B
P 1500 900
F 0 "#PWR0101" H 1500 750 50  0001 C CNN
F 1 "+5V" H 1515 1073 50  0000 C CNN
F 2 "" H 1500 900 50  0001 C CNN
F 3 "" H 1500 900 50  0001 C CNN
	1    1500 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F76DE06
P 1500 2100
F 0 "#PWR0102" H 1500 1850 50  0001 C CNN
F 1 "GND" H 1505 1927 50  0000 C CNN
F 2 "" H 1500 2100 50  0001 C CNN
F 3 "" H 1500 2100 50  0001 C CNN
	1    1500 2100
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU AT1
U 1 1 5F76C90C
P 1500 1500
F 0 "AT1" H 1250 2100 50  0000 R CNN
F 1 "ATtiny85-20PU" H 1600 1650 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1500 1500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 1500 1500 50  0001 C CNN
	1    1500 1500
	1    0    0    -1  
$EndComp
NoConn ~ 2100 1700
$Sheet
S 1000 2500 1000 350 
U 5F77F7A0
F0 "Digit 1" 50
F1 "digit.sch" 50
F2 "data_next" O R 2000 2550 50 
F3 "data_in" I L 1000 2550 50 
F4 "data_clock" I L 1000 2650 50 
F5 "update_clock" I L 1000 2750 50 
$EndSheet
$Sheet
S 2200 2500 1000 350 
U 5F79E62E
F0 "Digit 2" 50
F1 "digit.sch" 50
F2 "data_next" O R 3200 2550 50 
F3 "data_in" I L 2200 2550 50 
F4 "data_clock" I L 2200 2650 50 
F5 "update_clock" I L 2200 2750 50 
$EndSheet
$Sheet
S 3350 2500 1000 350 
U 5F79E775
F0 "Digit 3" 50
F1 "digit.sch" 50
F2 "data_next" O R 4350 2550 50 
F3 "data_in" I L 3350 2550 50 
F4 "data_clock" I L 3350 2650 50 
F5 "update_clock" I L 3350 2750 50 
$EndSheet
Wire Wire Line
	2000 2550 2200 2550
Wire Wire Line
	3200 2550 3350 2550
Wire Wire Line
	1000 2650 900  2650
Wire Wire Line
	900  2650 900  2750
Wire Wire Line
	3300 2750 3350 2750
Wire Wire Line
	2200 2750 2150 2750
Text Label 550  2550 0    50   ~ 0
D_data
Text Label 550  2650 0    50   ~ 0
D_clocks
Wire Wire Line
	900  2650 550  2650
Connection ~ 900  2650
Wire Wire Line
	550  2550 1000 2550
Text Label 2200 1600 0    50   ~ 0
D_data
Text Label 2200 1500 0    50   ~ 0
D_clocks
Text Label 2200 1400 0    50   ~ 0
S_switch
Wire Wire Line
	2100 1400 2200 1400
Wire Wire Line
	2100 1500 2200 1500
Wire Wire Line
	2100 1600 2200 1600
Text Label 2200 1300 0    50   ~ 0
S_clocks
Text Label 2200 1200 0    50   ~ 0
S_data
Wire Wire Line
	2200 1300 2100 1300
Wire Wire Line
	2200 1200 2100 1200
$Sheet
S 1000 3350 1100 350 
U 5F7A8442
F0 "Input" 50
F1 "input8.sch" 50
F2 "data_next" O R 2100 3400 50 
F3 "data_in" I L 1000 3400 50 
F4 "data_clock" I L 1000 3500 50 
F5 "update_clock" I L 1000 3600 50 
F6 "switch_out" O R 2100 3600 50 
$EndSheet
Wire Wire Line
	2100 3400 2350 3400
NoConn ~ 2350 3400
Wire Wire Line
	550  3400 1000 3400
Wire Wire Line
	1000 3500 900  3500
Text Label 550  3400 0    50   ~ 0
S_data
Text Label 550  3500 0    50   ~ 0
S_clocks
Wire Wire Line
	1000 3600 900  3600
Wire Wire Line
	900  3600 900  3500
Connection ~ 900  3500
Wire Wire Line
	900  3500 550  3500
Connection ~ 900  2750
Wire Wire Line
	900  2750 900  3050
Text Label 2350 3600 0    50   ~ 0
S_switch
Wire Wire Line
	2350 3600 2100 3600
$Sheet
S 3000 1000 550  250 
U 5F7DE09B
F0 "Power" 50
F1 "power.sch" 50
F2 "+5V" O R 3550 1050 50 
F3 "0V" O R 3550 1150 50 
$EndSheet
Wire Wire Line
	3550 1050 3700 1050
Wire Wire Line
	3550 1150 3700 1150
Wire Wire Line
	3700 1150 3700 1250
$Comp
L power:GND #PWR0103
U 1 1 5F7EC214
P 3700 1250
F 0 "#PWR0103" H 3700 1000 50  0001 C CNN
F 1 "GND" H 3705 1077 50  0000 C CNN
F 2 "" H 3700 1250 50  0001 C CNN
F 3 "" H 3700 1250 50  0001 C CNN
	1    3700 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5F7EC45C
P 3700 1050
F 0 "#PWR0104" H 3700 900 50  0001 C CNN
F 1 "+5V" H 3715 1223 50  0000 C CNN
F 2 "" H 3700 1050 50  0001 C CNN
F 3 "" H 3700 1050 50  0001 C CNN
	1    3700 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2550 4450 2550
NoConn ~ 4450 2550
Wire Wire Line
	900  2750 1000 2750
Wire Wire Line
	900  3050 2150 3050
Wire Wire Line
	2150 2750 2150 3050
Connection ~ 2150 3050
Wire Wire Line
	2150 2750 2150 2650
Wire Wire Line
	2150 2650 2200 2650
Connection ~ 2150 2750
Wire Wire Line
	3300 2750 3300 3050
Wire Wire Line
	2150 3050 3300 3050
Wire Wire Line
	3300 2750 3300 2650
Wire Wire Line
	3300 2650 3350 2650
Connection ~ 3300 2750
Text Notes 2600 1550 0    50   ~ 0
digits
Wire Notes Line
	2600 1450 2600 1600
Wire Notes Line
	2600 1400 2600 1150
Text Notes 2600 1350 0    50   ~ 0
input\nswitches
$EndSCHEMATC
