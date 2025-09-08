void setup() {
  size(500, 500);
}

void draw() {
  ellipseMode(CORNERS);
  if (mousePressed) {
    fill (60, 10, 55);
  } else {
    fill(35, 25, 90);
  }
  ellipse(mouseX, mouseY, 175, 90);
}

void keyPressed() {
     if (key == 's') {
     save("circlescorners.png");
     }
}
