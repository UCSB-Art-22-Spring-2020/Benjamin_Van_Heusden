//Benjamin Van Heusden
//Assignment 2
//4-14-20
//
int h, s, b;//color variables
int x, y;//variables for position

void setup() {
  size(800, 400);//800 by 400 window
  x = width/2;
  y = height/2;
}

void draw() {
  colorMode(HSB); // color mode HSB not RGB
  h = 40;//hue
  s = 360; // saturatuion
  b = 360; //brightnessss
  for (int i = 0; i< 100; i++) {
    strokeWeight(random(0, 5));
    stroke(150, random(0, 255), random(0, 255));//random stroke in the blue color range
    fill(200, random(0, 255), random(0, 255),20);//fill with rando purple
    ellipse(random(0, width), random(0, height), random(7, 69), random(1, 100)); //make a cool ball of sunshine, it changes as it apporaches the top or right of the schreen
  }
  fill(h, x, y);
  ellipse(x, y, 40, 40);
   if (keyPressed) {
    if (key == CODED) {
      if (keyCode == RIGHT) { // if i hit right, ball moves to the right by 10 pixels
        x+=10; // also known as x = x + 10;
      }
      if (keyCode == LEFT) { // if i hit left, ball moves to the left by 10 pixels
        x-=10; // also known as x = x - 10;
      }
      if (keyCode == UP) { // if i hit up, ball moves up by 6 pixels
        y-=6; // also known as y = y - 6;
      }
      if (keyCode == DOWN) { // if i hit down, ball moves down by 6 pixels
        y+=6; // also known as y = y + 6;
      }
    }
  }
 if (x>width){ // if our x value surpasses the right most side
    x=0;  // we reset it to 0
  }
  
  if (x<0) { // if our x value surpasses the left most side
    x=width; // we reset it to the width
  } 
  
  if (y>height){ // if our y value surpasses the lower most side
    y =0; // we reset it to the top
  }
  
  if (y<0){ // if our y value surpasses the top
    y=height; // we reset it to the bottom
  }
}
