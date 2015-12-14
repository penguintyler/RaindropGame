class Raindrop {
  int diam;
  PVector loc, vel, acc;

  Raindrop(float x, float y) {
    diam = 50;
    loc = new PVector(random(diam,width-diam), -100);
    vel = new PVector(0,0);
    acc = new PVector(0,.5);
  }

  void display() {
    ellipse(loc.x, loc.y, diam, diam);
  }
  void fall() {
    loc.add(vel);
    vel.add(acc);
  }
  void reset() {
    if (loc.y >= height) {
      loc.y = -100;
      vel.set(0,0);
    }
 
  }
}