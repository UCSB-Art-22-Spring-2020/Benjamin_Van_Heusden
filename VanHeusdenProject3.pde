//Benjamin van Heusden
//4/20/20
//Project 3, art22
//Tree Canopy 

float x0, y0, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6;//makes X and Y variables for each ellipse
float stepSizeX, stepSizeY;//Variables for the stepsize of each ellipse



void setup() {
  frameRate(60);//60 frames per second
  background(255);//White background that gets covered
  size (800, 600);//rectangle window 
  x0 = x1 = x2 = x3 = x4 = x5 = x6 = width/2;//all the X variables are equal to 400
  y0 = y1 = y2 = y3 = y4 = y5 = y6 = height/2;//all the y variables are equal to 300 



  stepSizeX=7; //stepsize value for X
  stepSizeY=7;//stepsize value for y
}

void draw() {

  //ellipse 1 - Light Sky

  
  strokeWeight(4);// gives ellipse 1 a 4 pixel border
  stroke(216, 254, 254, 100); //color for outside of ellipse 1
  fill(152, 202, 214, 100);//color for inside of ellipse 1
  
  x0 = x0 + random(-stepSizeX, stepSizeX); //new position of x is old x + random number between -7,7 for ellipse 1 
  y0 = y0 + random(-stepSizeY, stepSizeY);//new position of y is old y + random number between -7,7 for ellipse 1



  if (x0 > width || x0 < 0) { //x boundaries between 0 and width for ellipse 1
    x0= width/2; //if outside these x boundaries, respawn x on x axis 
  }
  if (y0 > height ||y0 < 0) { //y boundaries between 0 and height for ellipse 1
    y0=height/2;//if outside these y boundaries, respawn y on y axis
  }
  ellipse(x0, y0, 50, 50); //create ellipse 1 - 50 by 50 pixels
  //ellipse 2 - Summer Mapple

  strokeWeight(4);// gives ellipse 2 a 4 pixel border
  fill(188, 226, 94, 100);//color for inside of ellipse 2
  stroke(77, 105, 37, 100);//color for outside of ellipse 2
 
  x1 = x1 + random(-stepSizeX, stepSizeX);//new position of x is old x + random number between -7,7 for ellipse 2
  y1 = y1 + random(-stepSizeY, stepSizeY);//new position of y is old y + random number between -7,7 for ellipse 2

  if (x1 > width || x1 < 0) { //x boundaries between 0 and width for ellipse 2
    x1= width/2;//if outside these x boundaries, respawn x on x axis 
  }
  if (y1 > height ||y1 < 0) { //y boundaries between 0 and height for ellipse 2
    y1=height/2;//if outside these y boundaries, respawn y on y axis
  }
   ellipse(x1, y1, 30, 30);//create ellipse 2 - 30 by 30 pixels
  //ellipse 3 - Tree Moss

  strokeWeight(4);// gives ellipse 3 a 4 pixel border
  fill(41, 76, 75, 100);//color for inside of ellipse 3
  stroke(25, 60, 30, 100);//color for outside of ellipse 3
 
  x2 = x2 + random(-stepSizeX, stepSizeX);//new position of x is old x + random number between -7,7 for ellipse 3
  y2 = y2 + random(-stepSizeY, stepSizeY);//new position of y is old y + random number between -7,7 for ellipse 3

  if (x2 > width || x2 < 0) { //x boundaries between 0 and width for ellipse 3
    x2= width/2;//if outside these x boundaries, respawn x on x axis
  }
  if (y3 > height ||y3 < 0) { //y boundaries between 0 and height for ellipse 3
    y2=height/2;//if outside these y boundaries, respawn y on y axis
  }
   ellipse(x2, y2, 30, 30);//create ellipse 3 - 30 by 30 pixels
  //ellipse 4 - Sky Shadow

  strokeWeight(4);// gives ellipse 4 a 4 pixel border
  fill(167, 220, 250, 100);//color for inside of ellipse 4
  stroke(99, 145, 180, 100);//color for outside of ellipse 4
 
  x3 = x3 + random(-stepSizeX, stepSizeX);//new position of x is old x + random number between -7,7 for ellipse 4
  y3 = y3 + random(-stepSizeY, stepSizeY);//new position of y is old y + random number between -7,7 for ellipse 4

  if (x3 > width || x3 < 0) { //x boundaries between 0 and width for ellipse 4
    x3= width/2;//if outside these x boundaries, respawn x on x axis
  }
  if (y3 > height ||y3 < 0) { //y boundaries between 0 and height for ellipse 4
    y3=height/2;//if outside these y boundaries, respawn y on y axis
  }
   ellipse(x3, y3, 45, 45);//create ellipse 4 - 45 by 45 pixels
  //ellipse 5 - oak moss

  strokeWeight(4);// gives ellipse 5 a 4 pixel border
  fill(248, 254, 193, 100);//color for inside of ellipse 5
  stroke(211, 228, 154, 100);//color for outside of ellipse 5
 
  x4 = x4 + random(-stepSizeX, stepSizeX);//new position of x is old x + random number between -7,7 for ellipse 5
  y4 = y4 + random(-stepSizeY, stepSizeY);//new position of y is old y + random number between -7,7 for ellipse 5

  if (x4 > width || x4 < 0) { //x boundaries between 0 and width for ellipse 5
    x4= width/2;//if outside these x boundaries, respawn x on x axis
  }
  if (y4 > height ||y4 < 0) { //y boundaries between 0 and height for ellipse 5
    y4=height/2;//if outside these y boundaries, respawn y on y axis
  }
   ellipse(x4, y4, 30, 30);//create ellipse 5 - 30 by 30 pixels
  //ellipse 6 - Mint ice 

  strokeWeight(4);// gives ellipse 6 a 4 pixel border
  fill(199, 249, 209, 100);//color for inside of ellipse 6
  stroke(112, 157, 128, 100);//color for outside of ellipse 6
 
  x5 = x5 + random(-stepSizeX, stepSizeX);//new position of x is old x + random number between -7,7 for ellipse 6
  y5 = y5 + random(-stepSizeY, stepSizeY);//new position of y is old y + random number between -7,7 for ellipse 6

  if (x5 > width || x5 < 0) { //x boundaries between 0 and width for ellipse 6
    x5= width/2;//if outside these x boundaries, respawn x on x axis
  }
  if (y5 > height ||y5 < 0) { //y boundaries between 0 and height for ellipse 6
    y5=height/2;//if outside these y boundaries, respawn y on y axis
  }
   ellipse(x5, y5, 60, 60);//create ellipse 6 - 60 by 60 pixels
  //ellipse 7 - frog Green

  strokeWeight(4);// gives ellipse 7 a 4 pixel border
  fill(72, 116, 35, 100);//color for inside of ellipse 7
  stroke(56, 161, 51, 100);//color for outside of ellipse 7
 
  x6 = x6 + random(-stepSizeX, stepSizeX);//new position of x is old x + random number between -7,7 for ellipse 7
  y6 = y6 + random(-stepSizeY, stepSizeY);//new position of y is old y + random number between -7,7 for ellipse 7 

  if (x6 > width || x6 < 0) { //x boundaries between 0 and width for ellipse 7
    x6= width/2;//if outside these x boundaries, respawn x on x axis
  }
  if (y6 > height ||y6 < 0) { //y boundaries between 0 and height for ellipse 7
    y6=height/2;//if outside these y boundaries, respawn y on y axis
  }
   ellipse(x6, y6, 40, 40);//create ellipse 7 - 40 by 40 pixels
}
