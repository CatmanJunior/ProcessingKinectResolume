import interfascia.*;

GUIController c;
IFButton b1, b2;
IFLabel l;


void createButtons(PWindow w) {

  c = new GUIController (w);

  b1 = new IFButton ("Green", 30, 35, 60, 30);
  b2 = new IFButton ("Blue", 110, 35, 60, 30);

  b1.addActionListener(w);
  b2.addActionListener(w);

  c.add (b1);
  c.add (b2);
}



void actionPerformed (GUIEvent e) {
  if (e.getSource() == b1) {
    sendState = 0;
  } else if (e.getSource() == b2) {
    sendState = 1;  
  }
}