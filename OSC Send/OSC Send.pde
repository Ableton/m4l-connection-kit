
//import the necessary libraries to use send, receive and understand OSC data
import oscP5.*;
//import netP5.*;

// OSC loading stuff
OscP5 o;
//NetAddress myRemoteLocation;


void setup() {
  size(640, 360);

  o = new OscP5(this, 2346); //set a port number - it has to be same as in your Max for Live device
  //myRemoteLocation = new NetAddress("127.0.0.1", 2346); //define address ove which the communication takes place. Requires host address (127.0.0.1 for localhost and the port number previously defined.)
} 

float automation1, automation2, automation3, automation4, automation5, automation6, automation7 = 0;

void draw() {
  background(0);
  translate(width/2, height/2);
  float ver_move = map(automation1, 0, 1, -300, 300);
  float hor_move = map(automation2, 0, 1, -100, 100);
  float RColour = map(automation3, 0, 1, 0, 255);
  float GColour = map(automation4, 0, 1, 0, 255);
  float BColour = map(automation5, 0, 1, 0, 255);
  float XSize = map(automation6, 0, 1, 10, 80);
  float YSize = map(automation7, 0, 1, 10, 80);
  fill(RColour,GColour,BColour);
  ellipse(ver_move, hor_move, XSize, YSize);
}

//receive and analyse OSC messages
void oscEvent(OscMessage theMsg) {
  if(theMsg.checkAddrPattern("/XPosition")==true) {
      automation1 = theMsg.get(0).floatValue();
  }
  
  if(theMsg.checkAddrPattern("/YPosition")==true) {
      automation2 = theMsg.get(0).floatValue();
  }  
  
  if(theMsg.checkAddrPattern("/RColour")==true) {
      automation3 = theMsg.get(0).floatValue();
  }  
  
  if(theMsg.checkAddrPattern("/GColour")==true) {
      automation4 = theMsg.get(0).floatValue();
  }  
  
  if(theMsg.checkAddrPattern("/BColour")==true) {
      automation5 = theMsg.get(0).floatValue();
  }  
  
  if(theMsg.checkAddrPattern("/XSize")==true) {
      automation6 = theMsg.get(0).floatValue();
  }  
  
  if(theMsg.checkAddrPattern("/YSize")==true) {
      automation7 = theMsg.get(0).floatValue();
  } 
}