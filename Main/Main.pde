/**
 * Title: ASSIGNMENT 5 - FINAL PROJECT
 * Name: NIKOLA MITROVIC
 * Date: DECEMBER 6TH, 2016
 * Description: FIELDS
 **/

/*user stages to press and activate the particle motion
 0 = nothing happens, 1 = select a key 
 2 to 10 = activate motion effects*/
int stage = 0;

/*reset particles to starting position 
 and when the mouse is allowed to be pressed*/
boolean goHome = false;
boolean allowMouse = false;

/*show or hide icons and instructions
 true = shown on the window
 false = hidden from the window*/
boolean icons = true;
boolean instructions = true;

//declare object variables
ParticleSystem ps;
Attractor a;
Repeller r;
Icons i;
Instruction in;

void setup() {
  //set display
  size(750, 460);
  background(0);

  //instantiate the particle system
  ps = new ParticleSystem(new PVector(width/2, height/2));

  //instantiate the attraction and repelling objects
  a = new Attractor();
  r = new Repeller();

  //instantiate the commands
  i = new Icons();
  //instantialte the menu
  in = new Instruction();
}

void draw() {
  background(0);

  //draw the particle system
  ps.run();

  /*draw commands at the top of the window 
   if the boolean is true*/
  if (icons) {
    i.attraction();
    i.repulsion();
    i.circle();
    i.reset();
    i.saveImage();
    i.eraseIcons();
  }

  /*draw instructions 
   if the boolean is true*/
  if (instructions) {
    in.menu();
  }
}

//when the keys are pressed
void keyPressed() {

  //save image of sketch with key f
  if (key == 'f' || key == 'F') {
    saveFrame("fields-####.jpg");
  }

  //hide or show instructions at the start with space abr
  if (key == 32) {
    instructions = !instructions;
  }

  //hide or show commands on at the top of the window with key v
  if (key == 'v' || key == 'V') {
    icons = !icons;
  }

  //send the particle home with c key
  if (key == 'c' || key == 'C') {
    //make the boolean goHome true
    goHome = true;
    /*make the boolean false to not allow the user to click
     before allowing them to move again*/
    allowMouse = false;
  }

  /*when the particles are at home and
   a key is pressed except key "c". Then allow the user
   to press the mouse by setting the boolean true*/
  if (goHome == true && key !='c' && key !='C') {
    allowMouse = true;
  }

  /* each stage corresponds to a different motion
   that is inside the particle class and with the
   attractor and repeller. Stage 1 refers to the user
   has selected a key before click and draggin 
   the mouse on the screen*/

  //select attraction with key "z" at stage 2 
  if (stage == 1 || key == 'z' || key == 'Z') {
    stage = 2;
  }

  //select repulsion with key "x" at stage 3
  if (stage == 1 || key == 'x' || key == 'X') {
    stage = 3;
  }

  //spining motion 1 with key "w" at stage 5
  if (stage == 1 || key == 'w' || key == 'W') {
    stage = 5;
  }

  //spinning motion 2 with key "q" at stage 6
  if (stage == 1 || key == 'q' || key == 'Q') {
    stage = 6;
  }

  //spinning motion 3 with key "s" at stage 7
  if (stage == 1 || key == 's' || key == 'S') {
    stage = 7;
  }

  //spinning motion 4 with key "e" at stage 8
  if (stage == 1 || key == 'e' || key == 'E') {
    stage = 8;
  }

  //spinning motion 5 with key "a" at stage 9
  if (stage == 1 || key == 'a' || key == 'A') {
    stage = 9;
  }

  //spinning motion 6 with key "d" at stage 10
  if (stage == 1 || key == 'd' || key == 'D') {
    stage = 10;
  }
}

//when the mouse is pressed
void mousePressed() {

  /*make the boolean goHome false when the mouse and
   a key has been pressed except key C to make the
   interaction loop*/
  if (allowMouse == true && goHome == true ) {
    goHome = false;
  }

  //attract and repel the particles on the mouse position
  a.display(mouseX, mouseY);
  r.display(mouseX, mouseY);

  //activate attraction movement when it is at stage 2
  if (stage == 2) {
    ps.applyAttractor(a);
  }
  //activate repelling movement when it is at stage 3
  if (stage == 3) {
    ps.applyRepeller(r);
  }
}

//when the mouse is dragged
void mouseDragged() {

  //attract and repel the particles on the mouse position
  a.display(mouseX, mouseY);
  r.display(mouseX, mouseY);

  //activate the attracting movement when it is at stage 2
  if (stage == 2) {
    ps.applyAttractor(a);
  }

  //activate the repelling movement when it is at stage 3
  if (stage == 3) {
    ps.applyRepeller(r);
  }
}