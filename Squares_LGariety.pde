void setup() {
  size(500, 500);
}

void draw() {
  if (mousePressed) {
    fill (210, 90, 55);
  } else {
    fill(35, 250, 40);
  }
  square(mouseX, mouseY, 80);
}

void keyPressed() {
     if (key == 's') {
     save("sqaures.png");
     }
}
