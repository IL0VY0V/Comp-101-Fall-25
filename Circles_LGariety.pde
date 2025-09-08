void setup() {
  size(500, 500);
}

void draw() {
  if (mousePressed) {
    fill (60, 10, 55);
  } else {
    fill(35, 25, 90);
  }
  ellipse(mouseX, mouseY, 80, 80);
}

void keyPressed() {
     if (key == 's') {
     save("circles.png");
     }
}
