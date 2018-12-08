class Attractor {
  //--------properties---------
  //x and y location
  PVector location;
  //size
  float mass;
  //gravity
  float Gravity;

  //methods
  //constructor
  Attractor() {
    location = new PVector();
    mass = 1;
    Gravity = 0.5;
  }

  //declare the attractor
  void display(float x, float y) {
    location = new PVector(x, y);
    noStroke();
    fill(0);
    ellipse(location.x, location.y, mass, mass);
  }

  //declare attraction force to particles
  PVector attract(Particle p) {

    //create a vector between the attractor and particles
    //direction of the force
    PVector force = PVector.sub(location, p.location);

    //tranform the force into a length between the two objects
    float distance = force.mag();
    //limit the distance to a min and a max
    distance = constrain(distance, 5, 10);

    force.normalize();

    //the attraction force (formula)
    float strength = ((Gravity * mass * mass) / (distance * distance));

    //applying the force with the formula
    force.mult(strength);

    //create a force to the particles
    return force;
  }
}