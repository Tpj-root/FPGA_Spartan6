# FPGA_Spartan6



### HELP
https://numato.com/docs/mimas-spartan-6-fpga-development-board/




**1.Introduction**



<p align="center">
  <img width="1173" height="828" src="img/intro.jpg">
</p>



Mimas is an easy to use FPGA Development board featuring Xilinx Spartan-6 FPGA. Mimas is specially designed for experimenting and learning system design with FPGAs. This development board features Xilinx XC6SLX9 TQG144 FPGA with a maximum of 70 user IOs. The USB 2.0 interface provides fast and easy configuration download to the on-board SPI flash. You don’t need a programmer or special downloader cable to download the bitstream to the board.




**Applications**

 - Product Prototype Development
 - Home Networking
 - Signal Processing
 - Wired and Wireless Communications
 - Educational tool for schools and universities





**Board features**

 - FPGA: Spartan-6 XC6SLX9 in TQG144 package
 - Flash memory: 16 Mb SPI flash memory (M25P16)
 - 100MHz CMOS oscillator
 - USB 2.0 interface for On-board flash programming
 - FPGA configuration via JTAG and USB
 - 8 LEDs and four switches for user-defined purposes
 - 70 IOs for user-defined purposes
 - On-board voltage regulators for single power rail operation


**Components/Tools Required**

Along with the module, you may need the items in the list below for easy and fast installation.

1. USB A to Mini B cable.
2. DC Power supply (Optional).



**Connection Diagram**


<p align="center">
  <img width="1173" height="828" src="img/CDiagram.jpg">
</p>




**USB Interface**


<p align="center">
  <img width="206" height="156" src="img/USB.jpg">
</p>



**DC Power Supply**

<p align="center">
  <img width="206" height="156" src="img/DC.jpg">
</p>





**On-Board Peripherals**

8 LEDs and four micro switches are provided on-board for user-defined purposes. These peripherals are connected to FPGA IOs and can be controlled from user RTL. The switches do not have pull-ups on board so make sure to enable week pull-ups on corresponding IOs in your design.




**JTAG Connector**



A JTAG connector provides access to FPGA’s JTAG pins. A Xilinx platform cable tool can be used to for JTAG programming.


<p align="center">
  <img width="294" height="190" src="img/jtagconnector.png">
</p>



<p align="center">
  <img width="246" height="273" src="img/jtagconnector_pin.png">
</p>



**GPIOs**



This board is equipped with 70 user IO pins that can be used for various custom applications. Pin assignments on the connectors are available in the tables below.


**HEADER P1**

| Header Pin No. | Pin description | Spartan-6 (XC6SLX9 TQG144) Pin No. |
| --- |  --- | ---  |
| 1 | VCCIO | NA  |


**HEADER P2**


| Header Pin No. | Pin description | Spartan-6 (XC6SLX9 TQG144) Pin No. |
| --- |  --- | ---  |
| 1 | GND | NA  |





**Driver Installation**

To use this product with Linux, the USB CDC driver needs to be compiled in with the kernel. Fortunately, most Linux distributions (Ubuntu, Redhat, Debian, etc..) have this driver pre-installed. The chances of you requiring to rebuild the kernel to include the USB CDC driver is very slim. When connected to a Linux machine, this product should appear as a serial port in the /dev directory. Usually, the name of the device will be “ttyACMx” or similar. The name may be different depending on the Linux distribution you have.






**Generating Bitstream for Mimas**




**Mechanical Dimensions**




<p align="center">
  <img width="623" height="630" src="img/dimensions.png">
</p>



**Schematics**

[Mimas_Schematics](img/MimasSpartan6ModuleSch.pdf)




