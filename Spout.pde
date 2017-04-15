// IMPORT THE SPOUT LIBRARY
import spout.*;

PImage img; // image to use for the rotating cube demo
PGraphics pgr; // Graphics for demo

// DECLARE A SPOUT OBJECT
Spout spout;

void SpoutSetup() {

  // Initial window size
  
  textureMode(NORMAL);
  
  // Create a graphics object
  pgr = createGraphics(1280, 720, P3D);

  // The dimensions of graphics or image objects
  // do not have to be the same as the sketch window
    
  // CREATE A NEW SPOUT OBJECT
  spout = new Spout(this);
  
  // OPTION : CREATE A NAMED SENDER
  //
  // By default, a sender is created
  // the first time "sendTexture" is called
  // and the sketch folder name is used.
  // But a sender can be created now with any name.
  //
  // spout.createSender("Spout Processing");
  
} 

void SpoutDraw()  { 


    spout.sendTexture();
    
    /*
    // OPTION 2: SEND THE TEXTURE OF GRAPHICS
    // Sends at the size of the graphics
    pgr.beginDraw();
    pgr.lights();
    pgr.background(0, 90, 100);
    pgr.fill(255);
    pushMatrix();
    pgr.translate(pgr.width/2, pgr.height/2);
    pgr.rotateX(frameCount/100.0);
    pgr.rotateY(frameCount/100.0);
    pgr.fill(192);
    pgr.box(pgr.width/4); // box is not textured
    popMatrix();
    pgr.endDraw();
    spout.sendTexture(pgr);
    image(pgr, 0, 0, width, height);
    */
    
    /*
    // OPTION 3: SEND THE TEXTURE OF AN IMAGE
    // Sends at the size of the image
    spout.sendTexture(img);
    image(img, 0, 0, width, height);
    */
    
}