class Instruction {
  //no properties since everything
  //was done manually

  //methods
  //constructor
  Instruction() {
  }

  //full menu with directions at the start
  void menu() {
    background(0);

    //----title----
    fill(255, 0, 0);
    textSize(60);
    text("Fields", (width/2)-75, 70);

    //----text with directions----
    fill(255, 255, 255);
    textSize(20);
    text("Select the magnetic motions:", 15, 110);
    text("Click and/or drag the mouse to activate the magnetic fields on the screen.", 15, 270);
    text("Additional:", 15, 310);

    //----attraction----
    //rect around the letter
    stroke(255, 0, 0, 100);
    noFill();
    rectMode(CENTER);
    rect(25, 133, 25, 25, 5);
    //letter z
    fill(255, 0, 0);
    textSize(20);
    text("Z", 18, 140);

    fill(255, 255, 255);
    text(": Attraction", 45, 140);

    //----repulsion----
    //rect around the letter
    stroke(255, 0, 0, 100);
    noFill();
    rectMode(CENTER);
    rect(25, 163, 25, 25, 5);
    //letter x
    fill(255, 0, 0);
    textSize(20);
    text("X", 18, 170);

    fill(255, 255, 255);
    text(": Repulsion", 45, 170);

    //----spinning-----
    //letter q
    fill(255, 0, 0);
    textSize(20);
    text("Q", 17, 200);
    //rect around the letter
    strokeWeight(1);
    stroke(255, 0, 0, 100);
    noFill();
    rectMode(CENTER);
    rect(25, 193, 25, 25, 5);

    //letter w
    fill(255, 0, 0);
    textSize(20);
    text("W", 47, 200);
    //rect around the letter
    strokeWeight(1);
    stroke(255, 0, 0, 100);
    noFill();
    rectMode(CENTER);
    rect(55, 193, 25, 25, 5);

    //letter E
    fill(255, 0, 0);
    textSize(20);
    text("E", 79, 200);
    //rect around the letter
    strokeWeight(1);
    stroke(255, 0, 0, 100);
    noFill();
    rectMode(CENTER);
    rect(85, 193, 25, 25, 5);

    //letter a
    fill(255, 0, 0);
    textSize(20);
    text("A", 109, 200);
    //rect around the letter
    strokeWeight(1);
    stroke(255, 0, 0, 100);
    noFill();
    rectMode(CENTER);
    rect(115, 193, 25, 25, 5);

    //letter s
    fill(255, 0, 0);
    textSize(20);
    text("S", 140, 200);
    //rect around the letter
    strokeWeight(1);
    stroke(255, 0, 0, 100);
    noFill();
    rectMode(CENTER);
    rect(145, 193, 25, 25, 5);

    //letter d
    fill(255, 0, 0);
    textSize(20);
    text("D", 168, 200);
    //rect around the letter
    strokeWeight(1);
    stroke(255, 0, 0, 100);
    noFill();
    rectMode(CENTER);
    rect(175, 193, 25, 25, 5);

    fill(255, 255, 255);
    text(": Spinning", 195, 200);

    //----reset particles----
    //letter C
    fill(255, 0, 0);
    textSize(20);
    text("C", 18, 230);
    //rect around the letter
    strokeWeight(1);
    stroke(255, 0, 0, 100);
    noFill();
    rectMode(CENTER);
    rect(25, 223, 25, 25, 5);

    fill(255, 255, 255);
    text(": Reset particles", 45, 230);

    //----save frame----
    //letter f
    fill(255, 0, 0);
    textSize(20);
    text("F", 19, 340);
    //rect around the letter
    strokeWeight(1);
    stroke(255, 0, 0, 100);
    noFill();
    rectMode(CENTER);
    rect(25, 333, 25, 25, 5);

    fill(255, 255, 255);
    text(": Save Image", 45, 340);

    //----hide commands----
    //letter v
    fill(255, 0, 0);
    textSize(20);
    text("V", 18, 370);
    //rect around the letter
    strokeWeight(1);
    stroke(255, 0, 0, 100);
    noFill();
    rectMode(CENTER);
    rect(25, 363, 25, 25, 5);

    fill(255, 255, 255);
    text(": Hide Commands", 45, 370);

    //-----Start the gameplay-----

    //start
    textSize(30);
    text("Press", 280, 400);
    text("bar to start", 525, 400);

    //space bar icon
    fill(255, 0, 0);
    textSize(40);
    text("SPACE", 380, 400);
    //rect around the letter
    strokeWeight(1);
    stroke(255, 0, 0, 150);
    noFill();
    rectMode(CENTER);
    rect(440, 385, 150, 50, 5);
  }
}