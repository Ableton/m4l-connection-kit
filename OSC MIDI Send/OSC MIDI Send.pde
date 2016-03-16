//import the necessary libraries to use send, receive and understand OSC data
import oscP5.*;
//import netP5.*;

// OSC loading stuff
OscP5 o;
//NetAddress myRemoteLocation;

B_String string1, string2, string3, string4, string5, string6, string7, string8;


void setup() {
  size(640, 360);
  stroke(255);
  background(0);

  o = new OscP5(this, 2346);  //set a port number - it has to be same as in your Max for Live device
  //myRemoteLocation = new NetAddress("127.0.0.1", 2346);
  
  string1=new B_String (width*0.1, width*0.3 , width*0.7, width*0.9, height*0.2, 250);
  string2=new B_String (width*0.1, width*0.3 , width*0.7, width*0.9, height*0.3, 50);
  string3=new B_String (width*0.1, width*0.3 , width*0.7, width*0.9, height*0.4, 150);
  string4=new B_String (width*0.1, width*0.3 , width*0.7, width*0.9, height*0.5, 100);
  string5=new B_String (width*0.1, width*0.3 , width*0.7, width*0.9, height*0.6, 200);
  string6=new B_String (width*0.1, width*0.3 , width*0.7, width*0.9, height*0.7, 0);
  string7=new B_String (width*0.1, width*0.3 , width*0.7, width*0.9, height*0.8, 133);
  string8=new B_String (width*0.1, width*0.3 , width*0.7, width*0.9, height*0.9, 278);
} 

int velocity1, velocity2, velocity3, velocity4, velocity5, velocity6, velocity7, velocity8 = 0;
float ver_move1, ver_move2, ver_move3, ver_move4, ver_move5, ver_move6, ver_move7, ver_move8;
float duration1, duration2, duration3, duration4, duration5, duration6, duration7, duration8;
int note1, note2, note3, note4, note5, note6, note7, note8  = 0;

void draw() {
  background(0);
  //translate(width/3, height/3);
  //noFill();
  //stroke(250, 0, 0);
  
  string1.display(ver_move1);
  string2.display(ver_move2);
  string3.display(ver_move3);
  string4.display(ver_move4);
  string5.display(ver_move5);
  string6.display(ver_move6);
  string7.display(ver_move7);
  string8.display(ver_move8);
  
  if (ver_move1>0){
    ver_move1 = ver_move1 -duration1;}
  if (ver_move2>0){
    ver_move2 = ver_move2 -duration2;}
  if (ver_move3>0){
    ver_move3 = ver_move3 -duration3;}
  if (ver_move4>0){
    ver_move4 = ver_move4 -duration4;}
  if (ver_move5>0){
    ver_move5 = ver_move5 -duration5;}
  if (ver_move6>0){
    ver_move6 = ver_move6 -duration6;}
  if (ver_move7>0){
    ver_move7 = ver_move7 -duration7;}
  if (ver_move8>0){
    ver_move8 = ver_move8 -duration8;}
   
  ver_move1 = - ver_move1;
  ver_move2 = - ver_move2;
  ver_move3 = - ver_move3;
  ver_move4 = - ver_move4;
  ver_move5 = - ver_move5;
  ver_move6 = - ver_move6;
  ver_move7 = - ver_move7;
  ver_move8 = - ver_move8;
}


void oscEvent(OscMessage theMsg) {
  if(theMsg.checkAddrPattern("/Velocity1")==true) {
      velocity1 = theMsg.get(0).intValue();
      ver_move1 = map(velocity1, 0, 127, 0, 60);
  }
  
  if(theMsg.checkAddrPattern("/Velocity2")==true) {
      velocity2 = theMsg.get(0).intValue();
      ver_move2 = map(velocity2, 0, 127, 0, 60);
  }  
  
  if(theMsg.checkAddrPattern("/Velocity3")==true) {
      velocity3 = theMsg.get(0).intValue();
      ver_move3 = map(velocity3, 0, 127, 0, 60);
  }  
  
    if(theMsg.checkAddrPattern("/Velocity4")==true) {
      velocity4 = theMsg.get(0).intValue();
      ver_move4 = map(velocity4, 0, 127, 0, 60);
  }
  
  if(theMsg.checkAddrPattern("/Velocity5")==true) {
      velocity5 = theMsg.get(0).intValue();
      ver_move5 = map(velocity5, 0, 127, 0, 60);
  }  
  
  if(theMsg.checkAddrPattern("/Velocity6")==true) {
      velocity6 = theMsg.get(0).intValue();
      ver_move6 = map(velocity6, 0, 127, 0, 60);
  }  
  
  if(theMsg.checkAddrPattern("/Velocity7")==true) {
      velocity7 = theMsg.get(0).intValue();
      ver_move7 = map(velocity7, 0, 127, 0, 60);
  }  
  
  if(theMsg.checkAddrPattern("/Velocity8")==true) {
      velocity8 = theMsg.get(0).intValue();
      ver_move8 = map(velocity8, 0, 127, 0, 60);
  }  
  
  if(theMsg.checkAddrPattern("/Note1")==true) {
      note1 = theMsg.get(0).intValue();
      duration1 = map(sq(note1), 1, sq(127), 0.05, 0.5);
  }
  
  if(theMsg.checkAddrPattern("/Note2")==true) {
      note2 = theMsg.get(0).intValue();
      duration2 = map(sq(note2), 1, sq(127), 0.05, 0.5);
  } 
  
  if(theMsg.checkAddrPattern("/Note3")==true) {
      note3 = theMsg.get(0).intValue();
      duration3 = map(sq(note3), 1, sq(127), 0.05, 0.5);
  }
  
  if(theMsg.checkAddrPattern("/Note4")==true) {
      note4 = theMsg.get(0).intValue();
      duration4 = map(sq(note4), 1, sq(127), 0.05, 0.5);
  } 
  
  if(theMsg.checkAddrPattern("/Note5")==true) {
      note5 = theMsg.get(0).intValue();
      duration5 = map(sq(note5), 1, sq(127), 0.05, 0.5);
  }
  
  if(theMsg.checkAddrPattern("/Note6")==true) {
      note6 = theMsg.get(0).intValue();
      duration6 = map(sq(note6), 1, sq(127), 0.05, 0.5);
  } 
  
  if(theMsg.checkAddrPattern("/Note7")==true) {
      note7 = theMsg.get(0).intValue();
      duration7 = map(sq(note7), 1, sq(127), 0.05, 0.5);
  }
  
  if(theMsg.checkAddrPattern("/Note8")==true) {
      note8 = theMsg.get(0).intValue();
      duration8 = map(sq(note8), 1, sq(127), 0.05, 0.5);
  } 
}

/*float log10 (int x) {
  return (log(x) / log(10));
}*/

class B_String {
  float osc_points, p11, p21, p31, p41, shade;
  
  B_String(float a1, float b1, float c1, float d1, float i, int colour) {
    noFill();
    //fill(250, 0, 0, 55);
    stroke(200, colour, 0);
    bezier(a1, i, b1, i, c1, i, d1, i);
    osc_points = i;
    p11 = a1;
    p21 = b1;
    p31 = c1;
    p41 = d1;
    shade = colour;
    //fill(0, 0, 0);
  }
  
  void display(float velocity) { 
      noFill();
      stroke(200, shade, 0);
      bezier(p11, osc_points, p21, osc_points+velocity, p31, osc_points+velocity, p41, osc_points);
      bezier(p11, osc_points, p21, osc_points+0.8*velocity, p31, osc_points+0.8*velocity, p41, osc_points);
      bezier(p11, osc_points, p21, osc_points+0.6*velocity, p31, osc_points+0.6*velocity, p41, osc_points);
      bezier(p11, osc_points, p21, osc_points+0.4*velocity, p31, osc_points+0.4*velocity, p41, osc_points);
      bezier(p11, osc_points, p21, osc_points+0.2*velocity, p31, osc_points+0.2*velocity, p41, osc_points);
      bezier(p11, osc_points, p21, osc_points, p31, osc_points, p41, osc_points);
  }
}