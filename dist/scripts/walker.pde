class Walker {
  int x;
  int y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void display() {
    stroke(0);
    point(x,y);
  }

  void ranStep() {

    float r = random(1);
    if (r < 0.25) {
      x++;
    } else if (r < 0.5) {
      x--;
    } else if (r < 0.75) {
      y++;
    } else {
      y--;
    }
  }

  void mouseStep() {
    float r = random(1);
    if (r < 0.1) {
      if (mouseX > x) {
        x++;
      } else {
        x--;
      }
    } else if (r < .2) {
      if (mouseY > y) {
        y++;
      } else {
        y--;
      }
    } else ranStep()
  }
}

void setup() {
  size(400, 400);
  w = new Walker();
  background(255);
  w.display();
}

void draw() {
  if (mouseX) {
    w.mouseStep();
  } else {
    w.ranStep();
  }
  w.display();
}
