# Examples

## Button 

  * Have a look at the official Arduino.cc [tutorial](https://www.arduino.cc/en/Tutorial/Button) for how to build the circuit for a simple button connected to the Arduino.
  * Since simple buttons are connected using the Digital ports of the Arduino hardware switch to the according tab in the M4L device and make sure you have selected Input from the menu next to the port number that you have connected the button to.
  * Map any Live parameter using the Map button.
  * The button on your hardware now switches your Live parameter from its min to max value.

## Potentiometer

  * Have a look at the official Arduino.cc [tutorial](https://www.arduino.cc/en/Tutorial/AnalogInput) for how to build the circuit to connect a potentiometer (Poti) to the Arduino.
  * Since potentiometers get connected using the Analog inputs switch to the according tab in the M4L device.
  * Map any Live parameter using the Map button to be controlled by the poti.

## Light Dependent Resistor (LDR) 

  * Have a look at the official Arduino.cc [tutorial](https://www.arduino.cc/en/Tutorial/AnalogInput) for how to build the circuit to connect a light-dependent-resistor (LDR) to the Arduino.
  * Similar to potentiometers, LDRs get connected using the Analog inputs and hence you should select the Analog tab in the M4L device.
  * Use the Map button in the respective row to establish a connection between the LDR and a Live parameter.
  * Light sensors may exhibit a certain jittery behavior regarding its values. You may use the Smoothing amount to reduce flickering of the Live parameter.
  * Since light sensors may have varying value range according to the environmental light conditions you should also consider calibrating it in order to be able to get access to the full value range of the Live parameter.

## LED

  * Have a look at the official Arduino.cc [tutorial](https://www.arduino.cc/en/Tutorial/Blink) for how to build the circuit to connect a simple light-emitting-diode (LED) to the Arduino.
  * Use the Map button in the respective row to establish a connection between the LED and a Live parameter.
  * A simple LED knows only two states: The Live parameter will therefore switch on the LED once its value goes above half of its range and off if it falls below. You may adjust the threshold using its Curve and Min/Max parameters.

## Fade RGB LEDs

  * Have a look at the official Arduino.cc [tutorial](https://www.arduino.cc/en/Tutorial/Fade) for how to build the circuit to connect a 3-color dimmable LED to the Arduino.
  * To access the 3 colors discretely you may have connected them to individual digital ports with PWM support. 
  * To control the intensity of each color of the LED switch the mode of operation within each respective row to PWM using the menu selector.
  * Use the Map button in each row to establish a connection between the according color of the LED and a particular Live parameter. You may also connect them all to the same parameter yielding various intensities of white only.
  * The value of the Live parameter now allows to control the intensity of each or all colors of the 3-color LED enabling a large amout of possible colors using a mixture palette.

## Servo 

  * Have a look at the official Arduino.cc [tutorial](https://www.arduino.cc/en/Tutorial/Sweep) for how to build the circuit to connect a servo motor to the Arduino.
  * A servo is is connected using any of the digital ports of the Arduino.
  * Switch the mode for the respective row in the digital tab to Servo.  
  * Use the Map button in the respective row to establish a connection between the servo motor and a particular Live parameter. 
  * The value of the Live parameter now allows to control the position of the motor using 180 discrete steps refering to degrees of orientation.