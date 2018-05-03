# Abstract

The TouchOSC device allows you to map any controller from any available TouchOSC layout to Live elements, so as to control them remotely with your iPad or iPhone. For the communication between Live and TouchOSC the OSC (Open Sound Control) protocol is used. You can find detailed documentation on TouchOSC [here](http://hexler.net/docs/touchosc).

# Prerequisites

* For this device to work you need an iPhone or iPad or iPod Touch with the TouchOSC application installed on it. You can get TouchOSC from [here](https://itunes.apple.com/app/touchosc/id288120394).


# Connection Guidelines

## Establish Connection

* Start Live and load the “OSC TouchOSC” device. 
* Insert a port (4 or 5-digit) number in the "Port" field at the top of the device.

* Start the TouchOSC app on your ipad or iphone.

* Under “Connections” click on the “OSC: xxx.xx.xx.xx”. This will take you to a new page.

* Make sure that “Enabled” is on.

* Click on “Host” and enter the receiver’s IP address (in this case your computer), which can be found using [this appendix](https://hexler.net/docs/touchosc-appendix).

* Click on “Port (outgoing)” and insert the same port number as your Max device.    

* Go back, and under “Layout” you can see the selected TouchOSC layout. Click on it if you want to see a list with all the available layouts and select a different one.

* Click “Done” and you are ready to use TouchOSC. 

## Test Connection

* Touch any control on TouchOSC. If the blue light next to “Port” on your device is blinking, this means that a connection has been successfully established between Live and TouchOSC.


### Troubleshooting

* Double-check that you have provided your sender with the right host address and that both sender and receiver share the same valid (between 1024 - 65535) port number.

* Try quitting the Max application if it is open.

* Try a different port number.


# Mapping

* Click on “Learn” and then touch on a TouchOSC controller. If it’s a one-dimensional controller, its address will appear automatically in the text field. If it’s 2-dimensional (XY pad), then the first dimension will appear. If you want to map the second dimension, click on the grey triangle and then select it. 

* Click on “Learn” again to lock the current controller. 

* Click on “Map”, and whilst it’s blinking click on any Live Control to map it to the selected TouchOSC controller.

## Min, Max

* You can limit the output value range by adjusting the “min” and “max” fields (in %). If min is set to a value greater than max, then their behaviour is inverted. 

## Curve
* Adjusts the input-output curve (scaling) by changing the “Curve” within the range -100 - 100. This parameter introduces non-linearity to the parameter mapping; values below 0 refer to exponential and values above to logarithmic scaling.
