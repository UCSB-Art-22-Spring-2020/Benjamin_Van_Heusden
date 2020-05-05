class runner {
  //neccessary variables
  float x, y;
  float size;
  int lifeSpan = 255;

  //constructor

  runner(float x_, float y_, float size_) {
    x=x_;
    y=y_;
    size= size_;
  }
  //methods
  void display() {
    strokeWeight( size );
    stroke(18,63,141, lifeSpan);//lifeSpan is the alphachannel
    point(x, y);
    lifeSpan--; //lifeSpan apprpoaches 0
    x = x + random(-10, 10); //stpesize
    y = y +random(-10, 10);
  }
}
