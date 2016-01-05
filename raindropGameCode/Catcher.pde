class Catcher{
  int diam;      // variables for the catcher  
  PVector loc;
  
  Catcher(){
    diam = 200;
    loc = new PVector(mouseX,mouseY);  // catcher will follow the mouse
  }
  
  void display(){
    fill(150,0,0);                        // displays the catcher  
    rect(loc.x-100,loc.y,diam,diam/10);
  }
  void update(){
    loc.set(mouseX,mouseY);  
}
}
  
    