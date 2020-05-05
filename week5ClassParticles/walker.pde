class walker {
  //neccessary variables
  float x, y;
  float size;
  int lifeSpan = 255;

  //constructor

  walker(float x_, float y_, float size_) {
    x=x_;
    y=y_;
    size= size_;
  }
  //methods
  void display() {
    strokeWeight( size );
    stroke(183,250,253, lifeSpan);//lifeSpan is the alphachannel
    point(x, y);
    lifeSpan--; //lifeSpan apprpoaches 0
    x = x + random(-3, 3); //stpesize
    y = y +random(-3, 3);
  }
}
