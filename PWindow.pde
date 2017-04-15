class PWindow extends PApplet {
  PWindow() {
    super();
    PApplet.runSketch(new String[] {this.getClass().getSimpleName()}, this);
  }

  void settings() {
    size(500, 200);
  }

  void setup() {
    background(150);
    createButtons(this);
  }

  void draw() {
   
  }

  void mousePressed() {
    println("mousePressed in secondary window");
  }
}