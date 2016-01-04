class Catcher{
  int diam;
  PVector loc;
  
  Catcher(){
    diam = 200;
    loc = new PVector(mouseX,mouseY);
  }
  
  void display(){
    fill(150,0,0);
    rect(loc.x-100,loc.y,diam,diam/10);
  }
  void update(){
    loc.set(mouseX,mouseY);
}
}
  
    