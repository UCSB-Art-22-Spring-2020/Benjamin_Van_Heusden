//Benajmin Van Heusden
//Fina; project for Art22
//Press the mouse to cause the sphere to sprout , can be roptated with arrow keys. Peasy initialized
//code from this project for fractal growth from https://www.youtube.com/watch?v=JcopTKXt8L8 (leaf, branch, tree template)
//also the essay "Modeling Trees with a Space Colonization Algorithm"
import peasy.*; //import peasy cam

Tree tree;

PeasyCam cam; //cam stuff
float rotX, rotY, rotZ, camX, camY, camZ;
int boundary = 900; 
float min_dist = 30; //minimum connection potential
float max_dist = 400; // maximum connection potential (bigger differences create bigger gaps)
PShape sphere; //establish a sphere

void setup() {

  size(900, 900, P3D); //window and 3d mode
  cam = new PeasyCam(this, 500); //peasy stuff
  tree = new Tree(); //make a new tree!
   
  fill(144, 169, 118); //fill color of the sphere
  noStroke(); //no stroke for sphere


  sphere = createShape(SPHERE, 50);//create the sphere
}

void draw() {
  nav();
  scene();


  ambientLight(0, 255, 0);

  background(0);
  tree.show(); //make the array of 3000 leaves show up 
  if (mousePressed){ //if mouse pressed call the groth to happen
    tree.grow();
  }
  shape(sphere, 0, 0);
}
