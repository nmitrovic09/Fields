class Particle {
  //--------properties---------
  //x and y location
  PVector location;
  //speed
  PVector velocity;
  //gravity
  PVector acceleration;
  //life
  float lifespan;
  //size
  float mass;

  //color
  int redfillColor;
  int greenfillColor;
  int bluefillColor;

  //set location at setup
  PVector originalLocation;

  //rotation range from the mouse
  int range = width;

  //speed of rotation
  float rotationSpeed = 0.001;

  //methods
  //constructor
  Particle(PVector l, PVector v, float newLifeSpan) {
    location = l.get();
    originalLocation = l.get();
    velocity = v.get();
    acceleration = new PVector(0, 0);
    mass = 1;
    lifespan = newLifeSpan;
    redfillColor = int(random(150, 255));
    greenfillColor = 0;
    bluefillColor = 0;
  }

  //declare the particle with the movement
  void run() {
    update();
    display();
    
  }

  //declare the praticle
  void display() {
    strokeWeight(5);
    stroke(redfillColor, greenfillColor, bluefillColor, lifespan);
    fill(redfillColor, greenfillColor, bluefillColor, lifespan);
    point(location.x, location.y);
  }

  //declare the movement
  void update() {
    //add speed
    location.add(velocity);
    //add gravity
    velocity.add(acceleration);
    //clear the acceleration
    acceleration.mult(0);
  }

  /*declare the dead boolean to make particles die
   when they have  a lifespan of 0*/
  boolean dead() {
    if (lifespan <= 0) { 
      return true;
    } else {
      return false;
    }
  }

  //bring particles to life
  void bringToLife() {
    if (lifespan < 255) {
      lifespan += 50;
    }
  }

  //make particles die
  void makeParticlesDie() {
    if (lifespan < 255) {
      lifespan -= 50;
    }
  }

  //check the window borders to bounce particles
  void checkEdges() {
    //check the left and right borders to send back in the window
    if (location.x < 0 || location.x > width) {
      velocity.x *= -1;     // reverse x velocity
      //each time particles hit the edge, they lose 50 pixels of opacity
      makeParticlesDie();         //particles start dying when they hit the border
    }

    //check the top and bottom borders to send back in the window
    if ( location.y < 0 || location.y > height) {
      velocity.y *= -1;    // reverse y velocity
      //each time particles hit the edge, they lose 50 pixels of opacity
      makeParticlesDie();      //particles start dying when they hit the border
    }
  }

  /*set the home function to bring the 
   particles at their setup(starting) position*/
  void goHome() {
    //vector from particle starting position at setup location to the current location
    PVector dist = PVector.sub(originalLocation, location);
    //transform the vector into a the length
    float distance = dist.mag();

    dist.normalize();

    //control the goHome movement
    if (distance > 1 || goHome) {
      //speed of home movement
      dist.mult(distance/10);
      //add the speed to the current location
      location.add(dist);
    } else {
      //set the current location to the beginning location at start
      location = originalLocation;
    }
  }

  //reset the display to send particles home
  void runHome() {
    display();
  }

  //declare first spinning motion
  void rotation() {

    //x and y coordinates of the mouse
    int mx = mouseX;
    int my = mouseY;

    //get distance between the mouse and the particle.
    float radius = dist(location.x, location.y, mx, my);

    //check if mouse and the key "w" is pressed
    if (mousePressed && stage == 5) {

      //the rotation effect happens whithin the range of pixels close to the mouse
      if (radius < range) {

        //find the angle between the mouse and the particle.
        float angle = atan2(location.y-my, location.x-mx);

        //adjust the rotation speed
        rotationSpeed = 0.0001;

        /* rotation formular
         x = centerPoint + r * sin(angle)
         y = centerPoint + r * cos(angle) 
         */

        //apply the formula to the velocity
        velocity.x -= (range - radius) * rotationSpeed * cos(angle + (0.07 + 0.0005 * (range - radius)));
        velocity.y -= (range - radius) * rotationSpeed * sin(angle + (0.07 + 0.0005 * (range - radius)));


        //x and y are increased by our velocities to make the motion faster. 
        location.x += velocity.x;
        location.y += velocity.y;

        //The velocities are decreased to slow down the motion 
        velocity.x *= 0.95;
        velocity.y *= 0.95;
      }
    }
  }

  void rotation2() {

    //x and y coordinates of the mouse
    int mx = mouseX;
    int my = mouseY;

    //distance between the mouse and the particle.
    float radius = dist(location.x, location.y, mx, my);


    //check if mouse and the key "q" is pressed
    if (mousePressed &&  stage == 6) {

      //the rotation effect happens whithin the range of pixels close to the mouse
      if (radius < range) {

        //find the angle between the mouse and the particle.
        float angle = atan2(location.y-my, location.x-mx);

        //adjust the rotation speed
        rotationSpeed = 0.0001;

        /* rotation formular
         x = centerPoint + r * sin(angle)
         y = centerPoint + r * cos(angle) 
         */

        //apply the formula to the velocity
        velocity.x -= (range - radius) * rotationSpeed * cos(angle + (0.07 + 0.0005 * (range - radius)));
        velocity.y -= (range - radius) * rotationSpeed * sin(angle + (0.07 + 0.005 * (range - radius)));

        //x and y are increased by our velocities to make the motion faster.         
        location.x += velocity.x;
        location.y += velocity.y;

        //The velocities are decreased to slow down the motion 
        velocity.x *= 0.95;
        velocity.y *= 0.95;
      }
    }
  }

  void rotation3() {

    //x and y coordinates of the mouse
    int mx = mouseX;
    int my = mouseY;

    //distance between the mouse and the particle.
    float radius = dist(location.x, location.y, mx, my);


    //check if mouse and the key "s" is pressed
    if (mousePressed && stage == 7) {

      //the rotation effect happens whithin the range of pixels close to the mouse
      if (radius < range) {

        //find the angle between the mouse and the particle.
        float angle = atan2(location.y-my, location.x-mx);

        //adjust the rotation speed
        rotationSpeed = 0.001;

        /* rotation formular
         x = centerPoint + r * sin(angle)
         y = centerPoint + r * cos(angle) 
         */

        //apply the formula to the velocity
        velocity.x -= (radius) * rotationSpeed * cos(angle + (0.07 * ( radius)));
        velocity.y -= (radius) * rotationSpeed * sin(angle + (0.07 * ( radius)));

        //x and y are increased by our velocities to make the motion faster.  
        location.x += velocity.x;
        location.y += velocity.y;

        //The velocities are decreased to slow down the motion 
        velocity.x *= 0.6;
        velocity.y *= 0.6;
      }
    }
  }

  void rotation4() {

    //x and y coordinates of the mouse
    int mx = mouseX;
    int my = mouseY;

    //distance between the mouse and the particle.
    float radius = dist(location.x, location.y, mx, my);


    //check if mouse and the key "e" is pressed
    if (mousePressed && stage == 8) {

      //the rotation effect happens whithin the range of pixels close to the mouse
      if (radius < range) {

        //find the angle between the mouse and the particle.
        float angle = atan2(location.y-my, location.x-mx);

        //adjust the rotation speed
        rotationSpeed = 0.0001;

        /* rotation formular
         x = centerPoint + r * sin(angle)
         y = centerPoint + r * cos(angle) 
         */

        //apply the formula to the velocity
        velocity.x -= ( radius) * rotationSpeed * cos(angle + (0.07 + 0.005 * (range - radius)));
        velocity.y -= (range - radius) * rotationSpeed * sin(angle + (0.07 + 0.0005 * ( radius)));

        //x and y are increased by our velocities to make the motion faster. 
        location.x += velocity.x;
        location.y += velocity.y;

        //The velocities are decreased to slow down the motion 
        //velocity.x *= 0.95;
        //velocity.y *= 0.95;
      }
    }
  }

  void rotation5() {

    //x and y coordinates of the mouse
    int mx = mouseX;
    int my = mouseY;

    //distance between the mouse and the particle.
    float radius = dist(location.x, location.y, mx, my);

    //check if mouse and the key "a" is pressed
    if (mousePressed && stage == 9) {

      //the rotation effect happens whithin the range of pixels close to the mouse
      if (radius < range) {

        //find the angle between the mouse and the particle.
        float angle = atan2(location.y-my, location.x-mx);

        //adjust the rotation speed
        rotationSpeed = 0.0001;

        /* rotation formular
         x = centerPoint + r * sin(angle)
         y = centerPoint + r * cos(angle) 
         */

        //apply the formula to the velocity     
        velocity.x -= (radius) * rotationSpeed / cos(angle + (0.07 + 0.05 * (range - radius)));
        velocity.y -= (range - radius) * rotationSpeed * sin(angle + (0.07 + 0.05 * ( radius)));

        //x and y are increased by our velocities to make the motion faster. 
        location.x += velocity.x;
        location.y += velocity.y;

        //The velocities are decreased to slow down the motion 
        velocity.x *= 0.9;
        velocity.y *= 0.9;
      }
    }
  }

  void rotation6() {

    //x and y coordinates of the mouse
    int mx = mouseX;
    int my = mouseY;

    //distance between the mouse and the particle.
    float radius = dist(location.x, location.y, mx, my);

    //check if mouse and the key "d" is pressed
    if (mousePressed && stage == 10) {

      //the rotation effect happens whithin the range of pixels close to the mouse
      if (radius < range) {

        //find the angle between the mouse and the particle.
        float angle = atan2(location.y-my, location.x-mx);

        //adjust the rotation speed
        rotationSpeed = 0.001;

        /* rotation formular
         x = centerPoint + r * sin(angle)
         y = centerPoint + r * cos(angle) 
         */

        //apply the formula to the velocity     
        velocity.x -= (radius) * rotationSpeed * cos(angle + (0.07 - 0.0005 * ( radius)));
        velocity.y -= (  radius) * rotationSpeed * sin(angle + (0.07 + 0.05 * ( radius)));

        //x and y are increased by our velocities to make the motion faster. 
        location.x += velocity.x;
        location.y += velocity.y;

        //The velocities are decreased to slow down the motion 
        velocity.x *= 0.9;
        velocity.y *= 0.9;
      }
    }
  }

  //particle receiving the force
  void applyForce(PVector force) { 
    //vector for the mouse
    PVector mouse = new PVector(mouseX, mouseY);
    //vector for the particle location to the mouse
    PVector direction = PVector.sub(location, mouse);
    //convert the direction to magnitude to get a distance
    float distance = direction.mag();

    //apply force to particles on the full width
    if (distance < width) {
      //receive a force, divide by mass, and add to acceleration
      PVector f =  PVector.div(force, mass); 
      //add the force to the gravity(acceleration)
      acceleration.add(f);
    }
  }
}