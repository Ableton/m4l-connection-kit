# Abstract

The LEGO MINDSTORMS EV3 Max4Live device connects an EV3 brick of the LEGO MINDSTORMS kit to Live using its bluetooth connection and allows access to its sensor inputs as well as its motors. The device enables you to receive data from the sensors to control parameters in Live and to send messages from Live to the LEGO MINDSTORM motors using trigger events. So far, you can connect a single EV3 brick to the M4L device at once. This means you can connect up to 4 sensors and 4 motors to the M4L device at a time. 

# Prerequisites

* For this device to work you will need a kit of LEGO MINDSTORMS including an EV3 brick running firmware version 1.08H or later.

* Apart from assembling your LEGO robot/machinery you need to establish a Bluetooth connection between your computer and the EV3 brick. Please follow the instructions of your operating system of how to setup such a bluetooth connection ([Mac](https://support.apple.com/kb/PH18963)|[Win](http://windows.microsoft.com/en-us/windows-10/getstarted-connect-to-bluetooth-devices)) and also the [LEGO MINDSTORMS](https://www.lego.com/en-us/service/help/products/themes-sets/mindstorms/connecting-your-lego-mindstorms-ev3-to-bluetooth-408100000007886) troubleshooting bluetooth documentation.

# General Device Description

* The LEGO MINDSTORMS EV3 M4L device establishes a connection between Max4Live and a LEGO EV3 brick using the serial interface provided by the Bluetooth connection. 
* The sensors as well as the motors are accessible via their respective tabs in the M4L device and may be mapped to certain Live parameters.

# Detailed Description

## Connecting an EV3 Brick

  * Once you established a permanent link between your computer and the bluetooth port of your EV3 brick in your OS, the name of the EV3 brick will appear in the list of possible serial devices in the left column of the LEGO MINDSTORMS EV3 M4L device regardless of its actual state.
  * Select the brick you want to connect to and depending on its availability a connection will be established. This may take a few seconds.

## Connecting the Sensors

  * Sensors are connected to the LEGO MINDSTORMS EV3 brick using its inputs #1 - #4. 
  * In the Sensors tab of the LEGO MINDSTORMS EV3 M4L device every sensor port of the EV3 brick can be mapped to a particular Live parameter using the Map button
  * The additional parameters Smooth, Curve and Min/Max allow to fine-tune the raw sensor input: 

### Smooth

* Smoothing becomes an important issue with many kinds of noisy data which is often the case for sensor data but may also be the useful for Live parameters with rapid value fluctuations and connected hardware. Increase the amount of smoothing to adjust the length of a moving average filter to reduce the jitter on your parameter.

### Curve

* This parameter introduces a non-linearity to the parameter mapping. Values below 0 refer to exponential and values above to logarithmic scaling.

### Min / Max

* Allows to delimit the value range that is affected (input) or considered (any output) by the mapped hardware device. 
* Lets say you want to constrain the controllable amount of your filter's cutoff frequency but using the full possible value range of the sensor. E.g. set Min and Max to 60 and 80% to only vary its cutoff frequency between that range of possible values.
* You may also set Min to a value above Max to invert the behavior.


## Connecting the Motors

* Motors are connected to the LEGO MINDSTORMS EV3 brick using the ports A - D. Motors are controlled using messages telling the motor how often it shall rotate at what speed and therefore every message to a motor contains several parameters specifying its mode of operation.
* A message to a motor only gets send depending on the value of the Live parameter that is mapped to it. In fact, the parameter value needs to hit or pass a certain value from below to above to trigger a message to the motor.
* The following parameter may be adjusted for each motor: Thresh,Max,Accel,Hold,Slow and reak:

### Thresh

  * The Thresh parameter allows to adjust the threshold used to trigger messages for a motor. Its value is represented as percentage of the possible value range of the according parameter.

### Max

  * The max speed of the motor given in percentage regarding the capability of the motor.
    
### Accel

  * The amount of rotations in degrees the motor shall need to go from previous speed to new max speed. This typically refers to the acceleration stage.

### Hold

  * The amount of rotations in degrees the motor shall stay at max speed.

### Slow

  * The amount of rotations in degrees the motor shall slow down from max to zero speed.

### Break

  * Toggles whether the motor shall make a full-stop once it finished rotating or if it shall free-run until it 

## Linking of Motors

   * To eventually drive a robot you may want to send the same message to two or even more motors at once. 
   * Activate the link between two motors to send a message to both using the trigger and parameters of the upper.
   * You may chain even 3 or 4 motors using the link buttons. They will then all hooked to the trigger and parameter settings of the upmost.
