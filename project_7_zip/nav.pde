void nav() {
  if (keyPressed) { //key comands for moving around and such
    if (key== CODED) {
      if (keyCode == UP) {
        rotX++; //increase x axis rotation
      }
      if (keyCode == DOWN) {
        rotX--;
      }
      if (keyCode == LEFT) {
        rotY++; //increase y axis rotatio
      }
      if (keyCode == RIGHT) {
        rotY--;
      }
    }
    
  }
}
