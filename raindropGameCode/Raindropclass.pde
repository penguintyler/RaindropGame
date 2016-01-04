class Raindrop {
  int diam;
  PVector loc, vel, acc;

  Raindrop(float x, float y) {
    diam = 30;
    loc = new PVector(random(width),random(height));
    vel = new PVector(random(-3,3),random(2,6));
  }

  void display() {
    fill(255);
    ellipse(loc.x, loc.y, diam/random(1,1.5), diam);
  }
  void fall() {
    loc.add(vel);
  }
  void reset() {
    loc.y = 0;
    loc.x = random(width);
    
  }
  boolean isInContactWith(Catcher c) {
    if (loc.dist(c.loc)/2 < diam/4 + c.diam/4) {
      return true;
    } else {
      return false;
    }
  }
}