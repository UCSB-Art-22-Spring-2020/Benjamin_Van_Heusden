class particle {

  float x, y, z; //particle variables
  
  float speedX, speedY, speedZ;  //speed variables for balls
  


  particle(float x_, float y_, float z_, float size_, float speedX_, float speedY_, float speedZ_) {
    x=x_;
    y=y_;
    z=z_;
    
    speedX=speedX_;
    speedY=speedY_;
    speedZ=speedZ_;
  }
  void display() {
    
    pushMatrix(); //ONLY STUFFS IN HERE 
    colorMode(HSB); //not used now but hsb mode for particles
    translate(x,y,z);
    noStroke();
    fill(100);
    
    shape(particle,y,z); //add the sphere called particle
    popMatrix();//ONLY STUFFS IN HERE

    x=x+speedX;
    y=y+speedY;
    z=z+speedZ;
    if (x > boundary || x < -boundary  ||y > boundary || y < -boundary ||z > boundary || z < -boundary ) {
      x = random(-boundary,boundary); //this creates respawning for the snowballs  X
      y = random(-boundary,boundary);//Y
      z = random(-boundary,boundary);//Z
    }
  }
}
