EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 46 46
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
L Device:Battery BT?
U 1 1 5F7E35DC
P 550 1150
AR Path="/5F7E35DC" Ref="BT?"  Part="1" 
AR Path="/5F7DE09B/5F7E35DC" Ref="BT1"  Part="1" 
AR Path="/5F79196E/5F7E35DC" Ref="BT1"  Part="1" 
F 0 "BT1" H 658 1196 50  0000 L CNN
F 1 "Battery" H 658 1105 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2468_2xAAA" V 550 1210 50  0001 C CNN
F 3 "~" V 550 1210 50  0001 C CNN
	1    550  1150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW?
U 1 1 5F7E35E2
P 1300 750
AR Path="/5F7E35E2" Ref="SW?"  Part="1" 
AR Path="/5F7DE09B/5F7E35E2" Ref="S_PW1"  Part="1" 
AR Path="/5F79196E/5F7E35E2" Ref="SW_power1"  Part="1" 
F 0 "SW_power1" H 1400 950 50  0000 R CNN
F 1 "SW_power1" H 1450 550 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 1300 750 50  0001 C CNN
F 3 "~" H 1300 750 50  0001 C CNN
	1    1300 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	550  950  550  750 
Wire Wire Line
	550  750  1100 750 
Wire Wire Line
	1500 650  1850 650 
Wire Wire Line
	1850 650  1850 1050
Text HLabel 2550 1050 2    50   Output ~ 0
+5V
Text HLabel 2550 1350 2    50   Output ~ 0
0V
$Comp
L pierre:5V_OSJK PW_reg1
U 1 1 5F803CBB
P 2150 1200
F 0 "PW_reg1" H 2200 1483 50  0000 C CNN
F 1 "5V_OSJK" H 2200 950 50  0001 C CNN
F 2 "pierre:5V_OSJK" H 2200 850 50  0001 C CNN
F 3 "" H 2150 1150 50  0001 C CNN
F 4 "5V" H 2300 1250 50  0001 C CNN "Tension"
	1    2150 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	550  1350 1850 1350
NoConn ~ 1500 850 
$EndSCHEMATC
