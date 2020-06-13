//the leafs are used as contaxt points for new growth to occur in each of the branches 
class Leaf {
  PVector pos;
  boolean reached = false;

  Leaf() {
    pos = PVector.random3D();
    pos.mult(random(width));
    pos.y -= height/2;
  }

  void reached() {
    reached = true;
  }

  void show() { 
    noFill(); //No fill form leafs
    noStroke(); //no stroke for leafs
    pushMatrix(); //seperate this code
    translate(pos.x, pos.y, pos.z); //transate position to the grid 
    ellipse(0,0, 17, 17); //make these ellipse , side does not matter but can be changed to meak leafs 
    popMatrix();//end seperation
  }
}
