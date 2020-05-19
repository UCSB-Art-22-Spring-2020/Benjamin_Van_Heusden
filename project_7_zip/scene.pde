void scene() {
  //global translation and rotation 
  //translate(camX, camY, camZ);
  rotateX(radians(rotX)); 
  rotateY(radians(rotY));
  rotateZ(radians(rotZ));

  //box container for the particles
  // stroke(255);
  noFill();
  //box(boundary * 2);
  translate(width/2,height/2,0);
  //rotateY(float(frameCount/400));
  shape(sphere, 0, 0);
}
