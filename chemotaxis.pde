Walker [] lad;
int bactNum = 20;
void setup() {
  size(1000, 500);
  frameRate(30);
  lad = new Walker[bactNum];
  for (int i=0; i<lad.length; i++) {
    lad[i] = new Walker();
  }

}
void draw() {
  background(0);
  for (int i=0; i<lad.length; i++) {
    lad[i].move();
    lad[i].show();
  }
}

void mousePressed() {
  for (int i=0; i<lad.length; i++) {
    lad[i].scatter();
  }
}
