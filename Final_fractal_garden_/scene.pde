void scene() {
  //global translation and rotation 
  translate(camX, camY, camZ); //creates these values to be with the overal geomer\ty
  rotateX(radians(rotX)); // center the navigation 
  rotateY(radians(rotY));
  rotateZ(radians(rotZ));
}
