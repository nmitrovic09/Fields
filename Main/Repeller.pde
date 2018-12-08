class Repeller {
  //--------properties---------
  //x and y location
  PVector location;
  //size
  float mass;
  //intensity of repulsion
  float strength;

  //methods
  //constructor
  Repeller() {
    location = new PVector();
    mass = 1;
    strength = 1;
  }

  //declare the attractor
  void display(float x, float y) {
    location = new PVector(x, y);
    noStroke();
    fill(0);
    ellipse(location.x, location.y, mass, mass);
  }

  //declare repelling force to the particles
  PVector repel(Particle p) {

    //vector between the attractor and the particle
    //direction of the force
    PVector direction = PVector.sub(location, p.location);

    /*transform the distance to a length between
     the repel and particle*/
    float d = direction.mag();

    //limit the distance to a min and a max
    d = constrain(d, 5.0, 10.0);

    direction.normalize();

    //the repelling force (formula)
    float force = ((-1 * strength/25) / (d * d))*10;

    //create a force by multiplying
    direction.mult(force);

    //return a force
    return direction;
  }
}