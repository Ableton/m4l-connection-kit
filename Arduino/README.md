# Abstract

The Arduino Max4Live device connects an Arduino Uno to Live using its serial port via USB and allows access to its analog inputs as well as its digital GPIOs. The device enables you to receive sensor data like switches, potentiometers or light-dependent resistors as well as sending Live parameter values to LEDs or servo motors. So far you may only connect sensors and other periphals to it directly as we do not yet support I2Cs and other periphals via the Serial Periphal Interface (SPI).

# Prerequisites

The arduino Max4Live device relies on a particular sketch uploaded to arduino's flash memory. You can find that sketch within your set of examples sketches that come with the arduino IDE. It is located under File->Examples->Firmata->StandardFirmata. Open the sketch and upload to the Arduino while making sure it has version 2.5 or later. Once the sketch has been uploaded you can close the Arduino IDE.

In order to read sensor data from its analog or digital inputs or to send data to modules connected to its digital ports, you will have to build electric circuits connected to the Arduino. Several examples will be explained in the according Examples files but are also easy to find online.

To connect your Arduino with the arduino M4L device, you need to load the device into any of Live's tracks and select the appropriate entry from the list of possible serial devices in the menu at its left. The Arduino should appear as some "usbmodem1234" device with varying numbers depending on your system. Hit the Rescan button if it did not appear yet.

# Device Description

The Max4Live device offers access to all analog inputs (A0-A5) and digital ports (0-13) of an Arduino Uno using a consistent interface separared in two tabs. Every pin and port of the Arduino Uno is represented by an individual row in the table to the right of the device. 

To establish a connection between a pin or port of the Arduino and a certain Live parameter you need to use the dedicated MAP button in its respective row. Click the button first and then select the parameter in Live which you want to connect to the Arduino. This either allows you to control a Live parameter using a sensor or to control a LED or Servo using a parameter in Live. Several additional parameters are furthermore available in the M4L device to fine-tune the parameter mapping according to your needs.


# Detailed Parameter Description

## Input Selection (Digital only)

* All digital ports support various connections. Connection types supported by the M4L device are: Input, Output and Servo as well as Pulse-Width-Modulation (PWM) for some of them. Ports that support PWM are indicated using a '~' symbol on the Arduino board. 
* Input connections on digital ports will enable reading from these ports as required for switches conntected to them. Output connections allow to send binary data (0/1) as used for turning LEDs on or off. Servo is a special kind of output connection that allows to operate a connected servo motor using 180 discrete steps refering to degrees of rotation. Similar to Servo, PWM allows to send 255 discrete steps that may be used to fade LEDs. 
* Make sure you select the connection type first before mapping a certain Live parameter.

## Smooth

* Smoothing becomes an important issue with many kinds of noisy data which is often the case for sensor data but may also be the useful for Live parameters with rapid value fluctuations and connected hardware. Increase the amount of smoothing to adjust the length of a moving average filter to reduce the jitter on your parameter.

## Calibrate (Analog only)

* Incoming sensor data may exhibit a specific value range that prevents you from accessing the whole range of a Live parameter. Hit calibrate once and let the sensor send its minimal and maximal possible values to let the device learn about its value range. This becomes particular important for photocells or light dependent resistors. Hit the calibrate button once again to turn off the calibration procedure and return to normal operation mode.

## Curve

* This parameter introduces a non-linearity to the parameter mapping. Values below 0 refer to exponential and values above to logarithmic scaling.

## Min / Max

* Allows to delimit the value range that is affected (input) or considered (any output) by the mapped hardware device. 
* Lets say you want to constrain the controllable amount of your filter's cutoff frequency but using the full possible value range of your hardware. E.g. set Min and Max to 60 and 80% to only vary its cutoff frequency between that range of possible values.
* Another example would be if you like your filter cutoff going from 60 to 80% but an external LED going from off to full brightness.
* You may also set Min to a value above Max to invert the behavior.
