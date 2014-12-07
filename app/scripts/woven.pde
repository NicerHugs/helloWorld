void setup() {
  size(480, 480);
  background(24, 52, 76);
}

void draw() {
  noStroke();
  for (int i = 0; i < height; i += 20) {
    int even  = i/20%2;
    if (even) {
      fill(255);
      rect(i, 0, 10, height);
      for (int a = -30; a < height; a += 40) {
        fill(153, 118, 62);
        rect(i-10, a, width, 10);
      }
    } else {
      fill(195, 213, 229);
      rect(i, 0, 10, height);
      for (int a = -10; a < height; a += 40) {
        fill(153, 118, 62);
        rect(i-10, a, width, 10);
      }
    }
  }
}
