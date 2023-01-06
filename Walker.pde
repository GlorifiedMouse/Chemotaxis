class Walker {
  int myX, myY;
  int r = (int) ((Math.random()*80)+176);
  int g = (int) ((Math.random()*80)+96);
  int myColor = color(r, g, 0);

  Walker() {
    myX = (int)(Math.random()*width);
    myY = (int)(Math.random()*height);
  }
  void move() {
    if (mouseX > myX) {
      myX = myX + ((int) (Math.random()*5)-1)*2;
    } else if (mouseX < myX) {
      myX = myX + ((int) (Math.random()*5)-3)*2;
    } else {
     myX = myX + ((int) (Math.random()*3)-1)*2;  
    }
    if (mouseY > myY) {
      myY = myY + ((int) (Math.random()*5)-1)*2;
    } else if (mouseY < myY) {
      myY = myY + ((int) (Math.random()*5)-3)*2;
    } else {
     myY = myY + ((int) (Math.random()*3)-1)*2;  
    }
    
  }
  void show() {
    fill(myColor);
    int bactSize = 40;
    ellipse(myX, myY, bactSize, bactSize);
  }
  void scatter() {
    myX = (int)(Math.random()*width);
    myY = (int)(Math.random()*height);
  }
}
