class Tree {
  ArrayList<Branch> branches = new ArrayList<Branch>();
  ArrayList<Leaf> leaves = new ArrayList<Leaf>(); //creates the array list foer the leaf connecting points

  Tree() { 
    for (int i = 0; i < 3000; i++) { //number of leafs added to each scene that is called
      leaves.add(new Leaf());
    }    
    Branch root = new Branch(new PVector(0, 0), new PVector(0, -1)); 
    branches.add(root);
    Branch current = new Branch(root);

    while (!closeEnough(current)) {
      Branch trunk = new Branch(current);
      branches.add(trunk);
      current = trunk;
    }
  }

  boolean closeEnough(Branch b) {

    for (Leaf l : leaves) {
      float d = PVector.dist(b.pos, l.pos);
      if (d < max_dist) {
        return true;
      }
    }
    return false;
  }

  void grow() {
    for (Leaf l : leaves) {
      Branch closest = null;
      PVector closestDir = null; //closest ellipse (leaf) attracts the branch
      float record = -1; 

      for (Branch b : branches) {
        PVector dir = PVector.sub(l.pos, b.pos); 
        float d = dir.mag(); 
        if (d < min_dist) {
          l.reached();
          closest = null;
          break;
        } else if (d > max_dist) {
        } else if (closest == null || d < record) {
          closest = b;
          closestDir = dir;
          record = d;
        }
      }
      if (closest != null) {
        closestDir.normalize();
        closest.dir.add(closestDir);
        closest.count++;
      }
    }

    for (int i = leaves.size()-1; i >= 0; i--) {
      if (leaves.get(i).reached) {
        leaves.remove(i);
      }
    }

    for (int i = branches.size()-1; i >= 0; i--) { //adds a new set of branches when the leaf is reached
      Branch b = branches.get(i);
      if (b.count > 0) {
        b.dir.div(b.count);
        PVector rand = PVector.random3D();
        rand.setMag(0.1);
        b.dir.add(rand);
        b.dir.normalize();
        Branch newB = new Branch(b);
        branches.add(newB);
        b.reset();
      }
    }
  }

  void show() {
    for (Leaf l : leaves) {
      l.show();
    }    
    //for (Branch b : branches) {
    for (int i = 0; i < branches.size(); i++) { 
      Branch b = branches.get(i); 
      if (b.parent != null) {
        float sw = map(i, 0, branches.size(), 15, 1); //thickness of branches mapped (start at 11 and go to 1 
        strokeWeight(sw); 
        //colors of the branches is dependent on the strokeweight
       stroke(255);
        if (sw>11){ 
          stroke(0,0,255);
        }
        if(sw>8&&sw<11){
          stroke(151,51,229); //purple
        }
        if( sw<8&&sw>5){
          stroke(108,219,196); //light blue
        }
         if (sw<5) {
          stroke(135, 188, 57); //green color
        }
        
        //color of the branch
        line(b.pos.x, b.pos.y, b.pos.z, b.parent.pos.x, b.parent.pos.y, b.parent.pos.z);
      }
    }
  }
}
