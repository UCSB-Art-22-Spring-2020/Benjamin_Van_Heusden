
//particle p; // innitialize particle named p 
//particle q; //

//create an array list to hold many particles
ArrayList<particle> plist = new ArrayList<particle>();//an array list called plist
ArrayList<walker> wlist = new ArrayList<walker>(); 
ArrayList<runner> rlist = new ArrayList<runner>();

//int total = 0;//total number of particles that we want

void setup() {
  size(600, 600);
  background(242, 155, 56); 

  //p = new particle(width/2, height/2, 10, 2, 1);  
  //q = new particle(random(0, width), random(0, height), 10, -2, -1);


  //we want to add "total" number of particlea to our plist
  //for (int i=0; i < total; i++) {
  //  plist.add(new particle(width/2, height/2, 10, random(-2, 2), random(-2, 2)));
  //}
}

void draw() {
  //background(242, 155, 56); 

  for (particle p : plist) {//for every particle in the p list
    p.display(); //run its update function
  }
  for (walker w : wlist) {
    w.display();
  }
  for (runner r : rlist) {
    r.display();
  }
  //particle emitter
  if (mousePressed) {
    plist.add(new particle(mouseX, mouseY, 10, random(-2, 2), random(-2, 2))); //fill in the requirements created in particle tab
    wlist.add( new walker(mouseX, mouseY, 10));
    rlist.add( new runner(mouseX, mouseY, 20));
  }
}
