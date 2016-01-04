int count = 50;
int score;
PVector mouse; //declare a P
Raindrop[] r = new Raindrop[count];      //declare a new Raindrop called r
Catcher c;


// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 600);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  for (int i = 0; i< count; i ++){
  r[i] = new Raindrop(random(width), 0);   //Initialize r. The parameters used are the initial x and y positions
  c = new Catcher();
  noCursor();
  score = 0;
}
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(150);
  textSize(100);
  text(score, 100, 100);
  c.display();
  c.update();
  for (int i = 0; i< count; i ++){
  r[i].fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  r[i].display();      //display the raindrop
  if (r[i].isInContactWith(c)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
   r[i].reset();    //if it is, reset the raindrop
   score = score+1;
 } 
  if (r[i].loc.y > height + r[i].diam /2) {     //check to see if the raindrop goes below the bottom of the screen
    r[i].reset();                           //if it does, reset the raindrop
  }
}
if (score > 100 ){
  text("You Win!", 100, 100);
}
}