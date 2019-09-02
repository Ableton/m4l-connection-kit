# Abstract

The M4L OSC Leap Motion device is using Leap Motion to generate midi notes, with the help of the ManosOsc application. Leap Motion is a hardware sensor device that supports hand and finger motions as input while ManosOsc receives the raw sensor data and translates it into OSC data. 

# Prerequisites

* For this device to work you need a Leap Motion sensor and the ManosOSC application. You can find instructions on how to setup Leap Motion [here](https://www.leapmotion.com/setup), and you can get ManosOSC for OS X [here](https://lm-s-apps-amnesia.leapmotion.com/apps/manososc/osx) and for Windows [here](https://lm-s-apps-amnesia.leapmotion.com/apps/manososc/windows).


# Connection Guidelines

## Establish Connection

* Connect your Leap Motion to your computer using the provided USB cable.

* Start ManosOSC. Once you do, you should see a black window and a finder window open.
 
* In the finder window there is a “settings.txt”, which you can open and manually change the port number, adjust the framerate, etc. For the changes to take effect, you need to restart ManosOsc.

* In Live, load the “OSC Leap Motion.amxd” and a midi instrument, or alternatively the “OSC Leap Motion Example.adg” instrument rack. In the M4L OSC Leap Motion device insert the port number that is displayed at the top section of the ManosOSC black window.

* In the “Note Pitch” Section, select which hand and dimension (X= left-right, Y= up-down, Z=back-forth) you would like to control the pitch. Then, in the “min” and “max” boxes you need to insert the minimum and maximum desired pitch output. Finally, click on “calibrate”, move your hand along the selected direction, so that the device traces the minimum and maximum input, and then click on “calibrate” again to complete calibration.

* Repeat the same for velocity and now when you wave your hand(s) over the Leap Motion you should be able to hear midi notes being produced.

Finally, you can adjust the speed at which you are receiving OSC messages by changing the "Smooth" parameter (in milliseconds).

## Test Connection

* Wave your hand over the Leap Motion. If the blue light next to “Port” on your device is blinking, this means that a connection has been successfully established between Live and LeapMotion.

### Troubleshooting

* Double-check that you have provided your sender with the right host address and that both sender and receiver share the same valid (between 1024 - 65535) port number.

* Try quitting the Max application if it is open.
