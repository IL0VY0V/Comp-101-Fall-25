void setup() {
  size(500, 500);
}

void draw() {
  if (mousePressed) {
    fill (50, 220, 205);
  } else {
    fill(135, 25, 190);
  }
  ellipse(mouseX, mouseY, 80, 80);
}

void keyPressed() {
     if (key == 's') {
     save("circles.png");
     }
}
