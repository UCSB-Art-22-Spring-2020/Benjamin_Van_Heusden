//Benjamin Van Heusden :)
int tree; //create a number called "tree"
int cactus;//create a number called "cactus"
int fern;//create a number called "fern"


void setup() {
  size (640, 720);//create a window that is 640 by 720 pixels
  tree = 640;// tree equals 640
  cactus = 80;//cactus equals 80
  fern = 80;//fern equals 80
}

void draw() {
  //making the background
  strokeWeight(5);//5 pixel frame for the squares
  stroke(30, 71, 65);//color of first square (ends up being the middle) 
  fill(20);//fill color for all rectangles (grey)
  if (tree<160||tree>400) { //if in the top or bottom third of window...
    stroke(35, 76, 70); //the square is lighter (add 5ppts to R,G,B)
  }

  rect(0, tree, cactus, fern); //Square 1

  stroke(67, 102, 81);//color of second square
  if (tree<160||tree>400) {//if in the top or bottom third of window..
    stroke(73, 105, 86);//the square is lighter (add 5ppts to R,G,B)
  }

  rect(80, tree, cactus, fern);//Square 2

  stroke(100, 124, 75);//color of third square
  if (tree<160||tree>400) {//if in the top or bottom third of window..
    stroke(105, 129, 80);//the square is lighter (add 5ppts to R,G,B)
  }
  rect(160, tree, cactus, fern);//square 3

  stroke(119, 154, 97);//color of fourth square
  if (tree<160||tree>400) {//if in the top or bottom third of window..
    stroke(124, 159, 103);//the square is lighter (add 5ppts to R,G,B)
  }
  rect(240, tree, cactus, fern);//square 4

  stroke(128, 180, 131);//color of fifth square
  if (tree<160||tree>400) {//if in the top or bottom third of window..
    stroke(133, 185, 136);//the square is lighter (add 5ppts to R,G,B)
  }
  rect(320, tree, cactus, fern);//square 5

  stroke(127, 189, 163);//color of sixth square
  if (tree<160||tree>400) {//if in the top or bottom third of window..
    stroke(132, 194, 168);//the square is lighter (add 5ppts to R,G,B)
  }
  rect(400, tree, cactus, fern);//square 6

  stroke(71, 142, 113);//color of seventh square
  if (tree<160||tree>400) {//if in the top or bottom third of window..
    stroke(76, 147, 118);//the square is lighter (add 5ppts to R,G,B)
  }
  rect(480, tree, cactus, fern);//square 7

  stroke(92, 166, 118);//color of eighth square
  if (tree<160||tree>400) {//if in the top or bottom third of window..
    stroke(97, 171, 123);//the square is lighter (add 5ppts to R,G,B)
  }
  rect(560, tree, cactus, fern);//square 8
  tree = tree - 1;//squares move vertically (60 pixels per second)


  strokeWeight(25);//stroke weight is 25 BUT
  if (mouseY>80) {//if mouse is higher than 80 pixels on Y axis...
    strokeWeight(30);//stroke weight equals 30
  }
  if (mouseY>160) {//if mouse is higher than 160 pixels on Y axis...
    strokeWeight(40);//stroke weight equals 40 ppts
  }
  if (mouseY>240) {//if mouse is higher than 240 pixels on Y axis...
    strokeWeight(50);//stroke weight equals 50 ppts
  }
  if (mouseY>320) {//if mouse is higher than 320 pixels on Y axis...
    strokeWeight(60);//stroke weight equals 60 ppts
  }
  if (mouseY>400) {//if mouse is higher than 400 pixels on Y axis...
    strokeWeight(70);//stroke weight equals 70 ppts
  }
  if (mouseY>480) {//if mouse is higher than 480 pixels on Y axis...
    strokeWeight(80);//stroke weight equals 80 ppts
  }
  if (mouseY>560) {//if mouse is higher than 560 pixels on Y axis...
    strokeWeight(90);//stroke weight equals 90 ppts
  }

  //making the drawing tool
  stroke(246, 232, 111, 10);//stroke color yellow but...
  if (mouseX<213||mouseX>426) {//if mouse is in the outer thirds...
    stroke(196, 253, 254, 10);//color is blue
  }
  if (mousePressed) {//if the mouse is pressed...
    point(pmouseX, pmouseY);//make a point where the mouse is
  }
}
