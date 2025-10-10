/*
Dev: Linky Gariety
 Project: Idle V1
 This program runs an animation on loop. I love those old idle screensavers.
 e.g. https://www.bryanbraun.com/after-dark-css/all/warp.html
Because I love looping an animation idly on a screen, I have decided to make a series.
 */

//The below is defining each ellipse. Was pretty messy.
int xBall = 0, yBall = 250, ballSize = 50;

int xBall2 = 250, yBall2 = 0;

int xBall3 = xBall2*2, yBall3 = yBall;

int xBall4 = xBall2, yBall4 = yBall*2;

/*This is the varible that determines the loop cycle for frames.
 The ellipses move 10 pixels at a time.
 Since 500/10 = 50, the ellipse moves 50 increments (500 pixels total) in one direction
 then 50 increments back (500 pixels oppisite direction). Once frames hits 100 (or 1000 pixels total), it is reset to 0.
 */

int frames = 0;

int pixelsMove = 10;

void setup() {

  size(500, 500); //size of window
}

//void keyPressed() {
//  if (key == 'f') {
//  windowResize(1000, 1000);
//  windowRatio(1000, 1000);
//  }
//}

void draw() {

  background(0, 111, 135);
  //creating the four ellipses
  fill(120, 200, 182);
  ellipse(xBall, yBall, ballSize, ballSize);

  fill(180, 220, 182);
  ellipse(xBall2, yBall2, ballSize, ballSize);

  fill(180, 182, 220);
  ellipse(xBall3, yBall3, ballSize, ballSize);

  fill(180, 182, 242);
  ellipse(xBall4, yBall4, ballSize, ballSize);
  //the ellipses move a total of 500 pixels away from their original position 
  if (frames >= 0 && frames < 50) {

    xBall += pixelsMove;
    yBall2 += pixelsMove;
    xBall3 -= pixelsMove;
    yBall4 -= pixelsMove;

    frames ++;
    //the ellipses then move a total of 500 pixels back towards their original positions
  } else if (frames >= 50 && frames < 100) {
    xBall -= pixelsMove;
    yBall2 -= pixelsMove;
    xBall3 += pixelsMove;
    yBall4 += pixelsMove;
    frames ++;
    //Each ellipse has moved a total of 1,000 pixels, placing them back in their original positions
  } else {
    //We set the frames back to 0, and the loop restarts, since it is in the draw function.
    frames = 0;
  }
}
