//Benjamin Van Heusden
//Summer snowball fight
//Warren dunes Michigan
//use "UP" '"DOWN" "RIGHT" "LEFT" to navigate, use mouse and scroll

import peasy.*;
PeasyCam cam;//Innitiialize Peasy 



//Benjamin Van Heusden
//trees

int boundary =1000; //Boundary integer
int total=100; //amount of white spheres
float rotX, rotY, rotZ, camX, camY, camZ; //variables for navigation
PShape sphere; // makes a shape called sphere
PImage forest; //makes image called forrest
PShape particle;  //makes shape called particle

ArrayList<particle> plist = new ArrayList<particle>(); //arraylist for particles
 
void setup() {
  //background(255); 
  size (1000, 1000, P3D); //3D mode activated
  forest = loadImage("forest.jpg");  //load the forest image
  noStroke(); //nostroke
  sphere = createShape(SPHERE, 2000); //make sphere into a sphere
  sphere.setTexture(forest);//..and the texture as the trees
  cam = new PeasyCam(this, 600); //make peasy work
  particle = createShape(SPHERE, random (1,50)); //create the snowbal particles (randomish sizes)


  for (int i=0; i < total; i++) { //information for snowballs 
    plist.add(new particle(
      random(-boundary, boundary), //innitial x location for particles
      random(-boundary, boundary), //...y
      random(-boundary, boundary), //....z
      50, //size
      random(-2, 2), //xspeed
      random(-2, 2), //yspeed
      random(-2, 2)));//zspeed
  }
}


void draw() {
  
colorMode(RGB); //colormode
 pointLight(255,255,255, 0,0,0 ); //make a center point light that is white 
  
  ambientLight(0,0,0);//ambuent light is black 
  
  background(255); //white background
  for (particle p : plist) { //call the particle tab 
    p.display();
  }
  nav(); //call the nav 
  scene(); //call the scene
}
