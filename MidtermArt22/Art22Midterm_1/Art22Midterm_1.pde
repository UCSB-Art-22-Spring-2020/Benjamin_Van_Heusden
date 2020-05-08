//Benjamin Van Heusden
//Art 22 
//Midterm Part One

//int x,y;
float x0, y0;
float stepSizeX, stepSizeY; 

void setup() {
  background(255);
  size(600, 600);
  x0 = width/2;
  y0 = height/2;
  stepSizeX=5;
  stepSizeY = 5;
}

void draw () {

  x0 = x0 + random(-stepSizeX, stepSizeX);
  y0 = y0 + random(-stepSizeY, stepSizeY);
  

  if (x0 > width || x0 < 0) {
    x0 = width/2;
  }
  if (y0 > height || y0 < 0) {
    y0 = height/2;
  }
  if (y0 > height/2) {
    stepSizeX = stepSizeY = 10;
  }
  if ( x0> width/2) {
    fill(255, 0, 0);
  }else if( x0 < width/2) {
    fill(0, 0, 255);
  }
  ellipse(x0, y0, 20, 20);
}
