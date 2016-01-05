class Raindrop {
  int diam;              // variables for the raindrop class(snowflakes)
  PVector loc, vel, acc;

  Raindrop(float x, float y) {
    diam = 30;
    loc = new PVector(random(width), 0);    // determines the location and velocity for new snowflake
    vel = new PVector(0,random(2,6));
  }

  void display() {
    fill(255);                                 // the appearance of each snowflake
    ellipse(loc.x, loc.y, diam/random(1,1.5), diam);
  }
  void fall() {
    loc.add(vel);  // snowflake velocity
  }
  void reset() {
    loc.y = 0;                // tells what the snowflake to do when it resets
    loc.x = random(width);
    
  }
  boolean isInContactWith(Catcher c) {
    if (loc.dist(c.loc)/2 < diam/4 + c.diam/4) {  // when snowlflake hits catcher, it will reset
      return true;
    } else {
      return false;
    }
  }
}