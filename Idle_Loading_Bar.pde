int frames = 0; //frames per second

int xaxis = 0;  //x of the rect

void setup() { //set up the sketch
  size(500, 250); //make the size of the window
  background(50); // gray background
}

void draw() {
  fill(255);
  rectMode(CORNER); //make the rect in the center
  rect(75, 100, 375, 75); //draw the white rect
  rectMode(CORNER);
  fill(50, 220, 100);
  rect(75, 100, xaxis, 75);
  if (frames >= 0 && frames < 75) {
  xaxis += 5;
  frames ++;
}
  else if (frames >= 75 && frames < 150) {
   xaxis -= 5;
   frames++;
}
else {
  frames = 0;
}
}
