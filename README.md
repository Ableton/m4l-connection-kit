#Welcome to Max for Live Connection Kit

The Connection Kit is a collection of devices that allow you to connect Ableton Live with several hardware or software technologies. Some of the devices provide a relatively generic interfacing framework between Live and a specific technology (e.g. Arduino, OSC Send), but most of them are only simple examples of what you can do. Their purpose is to show you how you can connect and as such they are meant to be taken apart, studied, extended or completely transformed. 

The main core technologies that have been utilised in this pack are the following:

##OSC

OSC (Open Sound Control) is an open-ended communication protocol used for networking multimedia devices. In their simplest form, OSC messages consist of a symbolic URL-style address introduced by a ‘/’ character, followed by a numeric value. In order to send OSC data from one device to another, the sender device needs to know the host address of the receiver. Then, for both sender and receiver we need to set the same port number (any number between 1024 - 65535); OSC data exchange is taking place over this port. Max provides two objects, “udpreceive” and “udpsend” that support a subset of the OSC protocol. 

In this pack we have used OSC to connect with LeapMotion, Processing and TouchOSC.

##JSON

JSON ((JavaScript Object Notation)) is a data exchange format, widely supported by web browsers. It is used to transmit information that is structured as attribute-value pairs and in this pack there are two example devices that are used to fetch web data formatted in JSON; JSON Weather and JSON Video. This is happening with the help of the “js” object in Max; this object executes the necessary javascript code that is making a call to a specific API.

##ARDUINO / GENUINO

The Arduino/Genuino is an open hard- and software platform with physical in- and outputs based on a microcontroller. The physical in- and outputs of an Arduino/Genuino microcontroller allow for connecting sensors and actuators which can be accessed by a programming interface. This software interface provides hence access to the data coming from a variety of sensors and enables the control of LEDs, motors and other peripherals. The “serial” object provided by the Max visual programming environment allows for connecting an Arduino/Genuino via the USB port of a computer. The Arduino M4L device takes advantage of that connection and provides an interface for simple interaction between the M4L platform and the in- and outputs of an Arduino/Genuino Uno microcontroller.
