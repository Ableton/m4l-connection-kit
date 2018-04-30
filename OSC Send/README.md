# Abstract
This device allows you to send out as OSC data values of mappable Live elements. 
The example provided here uses Processing as the target application, but the device can be used with any hardware or software that can receive OSC data, provided that you are aware of its address space.

# Prerequisites

* In order to use this device with Processing you will need to download the Processing software from [here](https://processing.org/download/). 

* You will also need to install the oscP5 library which you can find along with detailed instructions, documentation and examples [here](http://www.sojamo.de/libraries/oscP5/). This is necessary for using the OSC protocol with Processing.


# Connection Guidelines

## Establish Connection

* Start Live and load the “OSC Send” device.

* On the top left corner of the device, you need to insert the Host address (If you are running Live and Processing on the same computer, then that is localhost: 127.0.0.1). 

* Insert also a port number in the "Port" field (which is 2346 for this particular example).

### Troubleshooting

* Double-check that you have provided your sender with the right host address and that both sender and receiver share the same valid (between 1024 - 65535) port number. You will find the Processing port number inside the code of the sketch you are running.

* Try quitting the Max application if it is open.

* Make sure that there are no typos in the OSC addresses you manually inserted.

# Mapping

* Click on “Map”, and whilst the button is blinking click on any mappable Live element. 

* In the corresponding “OSC Address” field, insert a valid OSC address to be paired with the outgoing values of the mapped element. 
  For example, map “Send A” (Reverb) of any track and in the “Osc Address” field type “/RColour”. Now run the Processing sketch called “OSCsend” and move the mapped knob. You should be able to see a small circle on the right emerging from the black background by turning gradually into a bright red colour.

## Min, Max

* You can limit the output value range by adjusting the “min” and “max” fields (in %). If min is set to a value greater than max, then their behaviour is inverted.

## Curve

* Adjusts the input-output curve (scaling) by changing the “Curve” within the range -100 - 100. This parameter introduces non-linearity to the parameter mapping; values below 0 refer to exponential and values above to logarithmic scaling.
