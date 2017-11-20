import processing.video.*;
Capture webcam;

void setup() {
  size(640,480);
  webcam = new Capture(this,640,480);  
  String[] devices = Capture.list();
  println(devices);
  webcam.start();
  
}

void draw() {
  if (webcam.available() == true) {
    webcam.read();
    image(webcam ,0,0);
  }
  saveFrame("line.bmp");
}