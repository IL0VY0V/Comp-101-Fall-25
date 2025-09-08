void setup() {
  size(500, 500);
}

void draw() {
  ellipseMode(RADIUS);
  if (mousePressed) {
    fill (120, 80, 155);
  } else {
    fill(52, 185, 120);
  }
  ellipse(mouseX, mouseY, 150, 80);
}

void keyPressed() {
     if (key == 's') {
     save("ovals.png");
     }
}
