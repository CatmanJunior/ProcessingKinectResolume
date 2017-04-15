PWindow win;
int sendState;


void settings() {
  size(640, 480, P3D);
}




void setup()
{
  sendState = 0;

  background(0);

  smooth();
  SetupKinect();
  SpoutSetup();


  win = new PWindow();
}

void draw()
{

  background(0);
  if (sendState == 0) {
    //PImage i = kinect.GetMask();
    //spout.sendTexture(i);
    DrawKinect();
    //SpoutDraw();
  }
  if (sendState == 1) {
    
  }
}