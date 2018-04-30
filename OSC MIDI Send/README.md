# Abstract

This is an example device that sends midi note and velocity data as OSC messages to a Processing sketch.

# Prerequisites

* In order to use this device with Processing you will need to download the Processing software from [here](https://processing.org/download/).

* You will also need to install the oscP5 library which you can find along with detailed instructions, documentation and examples [here](http://www.sojamo.de/libraries/oscP5/). This is necessary for using the OSC protocol with Processing.


# Connection Guidelines

## Establish Connection

* Start Live and load the “OSC Send” device.

* On the top of the device, you need to insert the Host address (If you are running Live and Processing on the same computer, then that is localhost: 127.0.0.1).

* Insert also a port number in the "Port" field (which is 2346 for this particular example). 

* If you now run the Processing sketch called “Midi.pde” you should be able to see that the midi notes you play, trigger the virtual strings on the Processing side in a velocity-sensitive way.

### Troubleshooting

* Double-check that you have provided your sender with the right host address and that both sender and receiver share the same valid (between 1024 - 65535) port number. You will find the Processing port number inside the code of the sketch you are running.

* Try quitting the Max application if it is open. 
