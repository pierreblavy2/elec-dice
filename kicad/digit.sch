EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L 74xx:74HC595 U?
U 1 1 5F781874
P 1350 1400
AR Path="/5F781874" Ref="U?"  Part="1" 
AR Path="/5F77F7A0/5F781874" Ref="U_D1"  Part="1" 
AR Path="/5F79B636/5F781874" Ref="U?"  Part="1" 
AR Path="/5F79B8DC/5F781874" Ref="U?"  Part="1" 
AR Path="/5F79E62E/5F781874" Ref="UD_2"  Part="1" 
AR Path="/5F79E775/5F781874" Ref="U_D3"  Part="1" 
F 0 "U_D1" H 1350 2181 50  0000 C CNN
F 1 "74HC595" H 1350 2090 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 1350 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 1350 1400 50  0001 C CNN
	1    1350 1400
	1    0    0    -1  
$EndComp
$Comp
L pierre:05611AH D?
U 1 1 5F78187A
P 3000 1250
AR Path="/5F78187A" Ref="D?"  Part="1" 
AR Path="/5F77F7A0/5F78187A" Ref="D1"  Part="1" 
AR Path="/5F79B636/5F78187A" Ref="D?"  Part="1" 
AR Path="/5F79B8DC/5F78187A" Ref="D?"  Part="1" 
AR Path="/5F79E62E/5F78187A" Ref="D2"  Part="1" 
AR Path="/5F79E775/5F78187A" Ref="D3"  Part="1" 
F 0 "D1" H 3050 1650 50  0000 R CNN
F 1 "05611AH" H 3150 1050 50  0000 R CNN
F 2 "pierre:7segments-05611AH" H 3050 1350 50  0001 C CNN
F 3 "" H 3050 1350 50  0001 C CNN
	1    3000 1250
	1    0    0    -1  
$EndComp
Text HLabel 1900 1900 2    50   Output ~ 0
data_next
Wire Wire Line
	1750 1900 1900 1900
Wire Wire Line
	1350 800  1850 800 
Wire Wire Line
	1850 800  1850 750 
$Comp
L power:+5V #PWR04
U 1 1 5F785ECE
P 1850 750
AR Path="/5F77F7A0/5F785ECE" Ref="#PWR04"  Part="1" 
AR Path="/5F79B636/5F785ECE" Ref="#PWR?"  Part="1" 
AR Path="/5F79B8DC/5F785ECE" Ref="#PWR?"  Part="1" 
AR Path="/5F79E62E/5F785ECE" Ref="#PWR0105"  Part="1" 
AR Path="/5F79E775/5F785ECE" Ref="#PWR0109"  Part="1" 
F 0 "#PWR04" H 1850 600 50  0001 C CNN
F 1 "+5V" H 1865 923 50  0000 C CNN
F 2 "" H 1850 750 50  0001 C CNN
F 3 "" H 1850 750 50  0001 C CNN
	1    1850 750 
	1    0    0    -1  
$EndComp
Text HLabel 950  1000 0    50   Input ~ 0
data_in
Text HLabel 950  1200 0    50   Input ~ 0
data_clock
$Comp
L power:+5V #PWR01
U 1 1 5F789FF5
P 950 1300
AR Path="/5F77F7A0/5F789FF5" Ref="#PWR01"  Part="1" 
AR Path="/5F79B636/5F789FF5" Ref="#PWR?"  Part="1" 
AR Path="/5F79B8DC/5F789FF5" Ref="#PWR?"  Part="1" 
AR Path="/5F79E62E/5F789FF5" Ref="#PWR0106"  Part="1" 
AR Path="/5F79E775/5F789FF5" Ref="#PWR0110"  Part="1" 
F 0 "#PWR01" H 950 1150 50  0001 C CNN
F 1 "+5V" V 965 1428 50  0000 L CNN
F 2 "" H 950 1300 50  0001 C CNN
F 3 "" H 950 1300 50  0001 C CNN
	1    950  1300
	0    -1   -1   0   
$EndComp
Text HLabel 950  1500 0    50   Input ~ 0
update_clock
$Comp
L power:GND #PWR05
U 1 1 5F78B706
P 3000 1850
AR Path="/5F77F7A0/5F78B706" Ref="#PWR05"  Part="1" 
AR Path="/5F79B636/5F78B706" Ref="#PWR?"  Part="1" 
AR Path="/5F79B8DC/5F78B706" Ref="#PWR?"  Part="1" 
AR Path="/5F79E62E/5F78B706" Ref="#PWR06"  Part="1" 
AR Path="/5F79E775/5F78B706" Ref="#PWR07"  Part="1" 
F 0 "#PWR05" H 3000 1600 50  0001 C CNN
F 1 "GND" H 3005 1677 50  0000 C CNN
F 2 "" H 3000 1850 50  0001 C CNN
F 3 "" H 3000 1850 50  0001 C CNN
	1    3000 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F78BBF1
P 1350 2100
AR Path="/5F77F7A0/5F78BBF1" Ref="#PWR03"  Part="1" 
AR Path="/5F79B636/5F78BBF1" Ref="#PWR?"  Part="1" 
AR Path="/5F79B8DC/5F78BBF1" Ref="#PWR?"  Part="1" 
AR Path="/5F79E62E/5F78BBF1" Ref="#PWR0107"  Part="1" 
AR Path="/5F79E775/5F78BBF1" Ref="#PWR0111"  Part="1" 
F 0 "#PWR03" H 1350 1850 50  0001 C CNN
F 1 "GND" H 1355 1927 50  0000 C CNN
F 2 "" H 1350 2100 50  0001 C CNN
F 3 "" H 1350 2100 50  0001 C CNN
	1    1350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1850 3000 1850
Wire Wire Line
	3000 1850 2950 1850
Connection ~ 3000 1850
$Comp
L power:GND #PWR02
U 1 1 5F78C320
P 950 1600
AR Path="/5F77F7A0/5F78C320" Ref="#PWR02"  Part="1" 
AR Path="/5F79B636/5F78C320" Ref="#PWR?"  Part="1" 
AR Path="/5F79B8DC/5F78C320" Ref="#PWR?"  Part="1" 
AR Path="/5F79E62E/5F78C320" Ref="#PWR0108"  Part="1" 
AR Path="/5F79E775/5F78C320" Ref="#PWR0112"  Part="1" 
F 0 "#PWR02" H 950 1350 50  0001 C CNN
F 1 "GND" H 955 1427 50  0000 C CNN
F 2 "" H 950 1600 50  0001 C CNN
F 3 "" H 950 1600 50  0001 C CNN
	1    950  1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R RA1
U 1 1 5F78CFDF
P 2100 1000
AR Path="/5F77F7A0/5F78CFDF" Ref="RA1"  Part="1" 
AR Path="/5F79B636/5F78CFDF" Ref="RA?"  Part="1" 
AR Path="/5F79B8DC/5F78CFDF" Ref="RA?"  Part="1" 
AR Path="/5F79E62E/5F78CFDF" Ref="RA2"  Part="1" 
AR Path="/5F79E775/5F78CFDF" Ref="RA3"  Part="1" 
F 0 "RA1" V 2050 1200 50  0000 C CNN
F 1 "330" V 2100 1000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2030 1000 50  0001 C CNN
F 3 "~" H 2100 1000 50  0001 C CNN
	1    2100 1000
	0    1    1    0   
$EndComp
$Comp
L Device:R RB1
U 1 1 5F790068
P 2100 1100
AR Path="/5F77F7A0/5F790068" Ref="RB1"  Part="1" 
AR Path="/5F79B636/5F790068" Ref="RB?"  Part="1" 
AR Path="/5F79B8DC/5F790068" Ref="RB?"  Part="1" 
AR Path="/5F79E62E/5F790068" Ref="RB2"  Part="1" 
AR Path="/5F79E775/5F790068" Ref="RB3"  Part="1" 
F 0 "RB1" V 2050 1300 50  0000 C CNN
F 1 "330" V 2100 1100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2030 1100 50  0001 C CNN
F 3 "~" H 2100 1100 50  0001 C CNN
	1    2100 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R RC1
U 1 1 5F790282
P 2100 1200
AR Path="/5F77F7A0/5F790282" Ref="RC1"  Part="1" 
AR Path="/5F79B636/5F790282" Ref="RC?"  Part="1" 
AR Path="/5F79B8DC/5F790282" Ref="RC?"  Part="1" 
AR Path="/5F79E62E/5F790282" Ref="RC2"  Part="1" 
AR Path="/5F79E775/5F790282" Ref="RC3"  Part="1" 
F 0 "RC1" V 2050 1400 50  0000 C CNN
F 1 "330" V 2100 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2030 1200 50  0001 C CNN
F 3 "~" H 2100 1200 50  0001 C CNN
	1    2100 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R RD1
U 1 1 5F790425
P 2100 1300
AR Path="/5F77F7A0/5F790425" Ref="RD1"  Part="1" 
AR Path="/5F79B636/5F790425" Ref="RD?"  Part="1" 
AR Path="/5F79B8DC/5F790425" Ref="RD?"  Part="1" 
AR Path="/5F79E62E/5F790425" Ref="RD2"  Part="1" 
AR Path="/5F79E775/5F790425" Ref="RD3"  Part="1" 
F 0 "RD1" V 2050 1500 50  0000 C CNN
F 1 "330" V 2100 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2030 1300 50  0001 C CNN
F 3 "~" H 2100 1300 50  0001 C CNN
	1    2100 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R RE1
U 1 1 5F790686
P 2100 1400
AR Path="/5F77F7A0/5F790686" Ref="RE1"  Part="1" 
AR Path="/5F79B636/5F790686" Ref="RE?"  Part="1" 
AR Path="/5F79B8DC/5F790686" Ref="RE?"  Part="1" 
AR Path="/5F79E62E/5F790686" Ref="RE2"  Part="1" 
AR Path="/5F79E775/5F790686" Ref="RE3"  Part="1" 
F 0 "RE1" V 2050 1600 50  0000 C CNN
F 1 "330" V 2100 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2030 1400 50  0001 C CNN
F 3 "~" H 2100 1400 50  0001 C CNN
	1    2100 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R RF1
U 1 1 5F790903
P 2100 1500
AR Path="/5F77F7A0/5F790903" Ref="RF1"  Part="1" 
AR Path="/5F79B636/5F790903" Ref="RF?"  Part="1" 
AR Path="/5F79B8DC/5F790903" Ref="RF?"  Part="1" 
AR Path="/5F79E62E/5F790903" Ref="RF2"  Part="1" 
AR Path="/5F79E775/5F790903" Ref="RF3"  Part="1" 
F 0 "RF1" V 2050 1700 50  0000 C CNN
F 1 "330" V 2100 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2030 1500 50  0001 C CNN
F 3 "~" H 2100 1500 50  0001 C CNN
	1    2100 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R RG1
U 1 1 5F790B23
P 2100 1600
AR Path="/5F77F7A0/5F790B23" Ref="RG1"  Part="1" 
AR Path="/5F79B636/5F790B23" Ref="RG?"  Part="1" 
AR Path="/5F79B8DC/5F790B23" Ref="RG?"  Part="1" 
AR Path="/5F79E62E/5F790B23" Ref="RG2"  Part="1" 
AR Path="/5F79E775/5F790B23" Ref="RG3"  Part="1" 
F 0 "RG1" V 2050 1800 50  0000 C CNN
F 1 "330" V 2100 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2030 1600 50  0001 C CNN
F 3 "~" H 2100 1600 50  0001 C CNN
	1    2100 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R RDP1
U 1 1 5F791066
P 2100 1700
AR Path="/5F77F7A0/5F791066" Ref="RDP1"  Part="1" 
AR Path="/5F79B636/5F791066" Ref="RDP?"  Part="1" 
AR Path="/5F79B8DC/5F791066" Ref="RDP?"  Part="1" 
AR Path="/5F79E62E/5F791066" Ref="RDP2"  Part="1" 
AR Path="/5F79E775/5F791066" Ref="RDP3"  Part="1" 
F 0 "RDP1" V 2050 1900 50  0000 C CNN
F 1 "330" V 2100 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2030 1700 50  0001 C CNN
F 3 "~" H 2100 1700 50  0001 C CNN
	1    2100 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 1000 1950 1000
Wire Wire Line
	1750 1100 1950 1100
Wire Wire Line
	1750 1200 1950 1200
Wire Wire Line
	1750 1300 1950 1300
Wire Wire Line
	1750 1400 1950 1400
Wire Wire Line
	1750 1500 1950 1500
Wire Wire Line
	1750 1600 1950 1600
Wire Wire Line
	1750 1700 1950 1700
Wire Wire Line
	2250 1700 2500 1700
Wire Wire Line
	2250 1600 2500 1600
Wire Wire Line
	2250 1500 2500 1500
Wire Wire Line
	2250 1400 2500 1400
Wire Wire Line
	2250 1300 2500 1300
Wire Wire Line
	2250 1200 2500 1200
Wire Wire Line
	2250 1100 2500 1100
Wire Wire Line
	2250 1000 2500 1000
$EndSCHEMATC
