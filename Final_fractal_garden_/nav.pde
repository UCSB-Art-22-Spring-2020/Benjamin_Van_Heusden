//navigation to rotate the geometry  of the tree
void nav() {
  if (keyPressed) {
    if (key== CODED) {
      if (keyCode == UP) {
        rotX++;} //increase x axis rotation of the tree      }
      if (keyCode == DOWN) {
        rotX--;
      }
      if (keyCode == LEFT) {
        rotY++; //increase y axis rotation of the tree
      }
      if (keyCode == RIGHT) { 
        rotY--;
      }
    }
   
  }
}
