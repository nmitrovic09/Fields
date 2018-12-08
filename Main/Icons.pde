class Icons {
  //------properties------
  //repulsion icon
  int xPos = 150;
  int yPos = 20;
  int size = 240/2;

  //attraction icon
  int xPos2 = 60;
  int yPos2 = 20;
  int size2 = 240/2;

  //circle icon
  int xPos3 = 400;
  int yPos3 = 25;

  //methods
  //constructor
  Icons() {
  }

  //attraction icon and letter
  void attraction() {
    stroke(255);
    strokeWeight(1);
    //body lines
    line(xPos2, yPos2, xPos2-size2/12, yPos2-size2/12);
    line(xPos2+size2/12, yPos2, xPos2+size2/6, yPos2-size2/12);
    line(xPos2+size2/12, yPos2+size2/12, xPos2+size2/6, yPos2+size2/6);
    line(xPos2, yPos2+size2/12, xPos2-size2/12, yPos2+size2/6);
    //arrows
    line(xPos2, yPos2, xPos2, yPos2-size2/24);
    line(xPos2, yPos2, xPos2-size2/24, yPos2);
    line(xPos2+size2/12, yPos2, xPos2+size2/12, yPos2-size2/24);
    line(xPos2+size2/12, yPos2, xPos2+size2/8, yPos2);
    line(xPos2+size2/12, yPos2+size2/12, xPos2+size2/8, yPos2+size2/12);
    line(xPos2+size2/12, yPos2+size2/12, xPos2+size2/12, yPos2+size2/8);
    line(xPos2, yPos2+size2/12, xPos2-size2/24, yPos2+size2/12);
    line(xPos2, yPos2+size2/12, xPos2, yPos2+size2/8);

    //rect around the letter
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(25, 25, 25, 25, 5);
    //letter z
    fill(255);
    textSize(20);
    text("Z", 18, 32);
  }

  //repulsion icon and letter
  void repulsion() {
    stroke(255);
    strokeWeight(1);
    //body lines
    line(xPos, yPos, xPos-size/12, yPos-size/12);
    line(xPos+size/12, yPos, xPos+size/6, yPos-size/12);
    line(xPos+size/12, yPos+size/12, xPos+size/6, yPos+size/6);
    line(xPos, yPos+size/12, xPos-size/12, yPos+size/6);
    //arrows
    line(xPos-size/12, yPos-size/12, xPos-size/12, yPos-size/24);
    line(xPos-size/12, yPos-size/12, xPos-size/24, yPos-size/12);
    line(xPos+size/6, yPos-size/12, xPos+size/8, yPos-size/12);
    line(xPos+size/6, yPos-size/12, xPos+size/6, yPos-size/24);
    line(xPos+size/6, yPos+size/6, xPos+size/6, yPos+size/8);
    line(xPos+size/6, yPos+size/6, xPos+size/8, yPos+size/6);
    line(xPos-size/12, yPos+size/6, xPos-size/12, yPos+size/8);
    line(xPos-size/12, yPos+size/6, xPos-size/24, yPos+size/6);

    //rect around the letter
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(115, 25, 25, 25, 5);
    //letter x
    fill(255);
    textSize(20);
    text("X", 109, 32);
  }

  //spinning icon and letters
  void circle() {
    //spinning icon
    stroke(255);
    strokeWeight(1);
    noFill();
    ellipseMode(CENTER);
    ellipse(xPos3, yPos3, 20, 20);
    line(xPos3-(xPos3/66+2/3), yPos3-(yPos3/2.5), xPos3+(xPos3/150), yPos3-(yPos3/1.47));
    line(xPos3-(xPos3/66+2/3), yPos3-(yPos3/2.5), xPos3+(xPos3/150), yPos3-(yPos3/8));
    line(xPos3+(xPos3/66+2/3), yPos3+(yPos3/2.5), xPos3-(xPos3/150), yPos3+(yPos3/8));
    line(xPos3+(xPos3/66+2/3), yPos3+(yPos3/2.5), xPos3-(xPos3/150), yPos3+(yPos3/1.47));

    //letter q
    fill(255);
    textSize(20);
    text("Q", 192, 32);
    //rect around the letter
    strokeWeight(1);
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(200, 25, 25, 25, 5);

    //letter w
    fill(255);
    textSize(20);
    text("W", 222, 32);
    //rect around the letter
    strokeWeight(1);
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(230, 25, 25, 25, 5);

    //letter E
    fill(255);
    textSize(20);
    text("E", 254, 32);
    //rect around the letter
    strokeWeight(1);
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(260, 25, 25, 25, 5);

    //letter a
    fill(255);
    textSize(20);
    text("A", 294, 32);
    //rect around the letter
    strokeWeight(1);
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(300, 25, 25, 25, 5);

    //letter s
    fill(255);
    textSize(20);
    text("S", 324, 32);
    //rect around the letter
    strokeWeight(1);
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(330, 25, 25, 25, 5);

    //letter d
    fill(255);
    textSize(20);
    text("D", 352, 32);
    //rect around the letter
    strokeWeight(1);
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(360, 25, 25, 25, 5);
  }

  //reset icon and letter
  void reset() {
    //text reset
    fill(255);
    textSize(20);
    text("RESET", 430, 32);

    //letter c
    fill(255);
    textSize(20);
    text("C", 502, 32);
    //rect around the letter
    strokeWeight(1);
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(510, 25, 25, 25, 5);
  }

  //reset icon and letter
  void saveImage() {
    //word
    fill(255);
    textSize(20);
    text("SAVE", 545, 32);

    //letter f
    fill(255);
    textSize(20);
    text("F", 609, 32);
    //rect around the letter
    strokeWeight(1);
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(615, 25, 25, 25, 5);
  }

  //hide icon and letter
  void eraseIcons() {
    //word
    fill(255);
    textSize(20);
    text("HIDE", 650, 32);

    //letter v
    fill(255);
    textSize(20);
    text("V", 714, 32);
    //rect around the letter
    strokeWeight(1);
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(720, 25, 25, 25, 5);
  }
}