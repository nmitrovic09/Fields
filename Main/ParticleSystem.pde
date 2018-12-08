class ParticleSystem {
  //declare particle array
  ArrayList<Particle> particles;

  //origin the system start
  PVector origin;

  //methods
  //constructor
  ParticleSystem(PVector location) {
    particles = new ArrayList<Particle>();
    origin = location.get();
    addParticles();
  }

  //add the particle class to the particle system to set up
  void addParticles() {
    //nested for loop of particles on the full window
    //walk along the x axis
    for (int i = 0; i < width; i = i+15) {
      //walk along the y axis
      for (int j = 0; j < height; j = j+15) {
        particles.add(new Particle(new PVector(i+1, j+1), new PVector(0, 0), int(random(100, 255))));
      }
    }
  }

  //draw and move all the particles
  void run() {
    //run the motions and movement when goHome is false
    if (goHome == false) {
      //check if the particles are dead by decrementing the arraylist
      //run through the hole particle array
      for (int i = particles.size()-1; i >= 0; i--) {
        //check for each particle in the system
        Particle p = particles.get(i);   

        //display, move, check the borders
        p.run();
        p.checkEdges();
        p.rotation();
        p.rotation2();
        p.rotation3();
        p.rotation4();
        p.rotation5();
        p.rotation6();
        //p.bringToLife();

        /*remove particles when they are dead (boolean true 
         when they hit the borders and their lifespan decreases*/
        if (p.dead()) {
          particles.remove(i);
          //add new particle to random position on the window with random opacity
          particles.add(new Particle(new PVector(random(width), random(height)), new PVector(0, 0), int(random(150, 255))));
        }
      }
    } else 
    /* when the goHome boolean is true send 
     the particles home through the arraylist*/
    if (goHome == true) {
      for (int i = particles.size()-1; i >= 0; i--) {
        //get all the particles and go through the home functions
        Particle p = particles.get(i);
        p.goHome();
        p.runHome();
        //p.bringToLife();
      }
    }
  }

  //declare the attraction force
  void applyAttractor(Attractor a) { 
    //apply to each particle in the arraylist
    for (Particle p : particles) {
      //create the force
      PVector force = a.attract(p);
      p.applyForce(force);
    }
  }

  //declare the repulsion force
  void applyRepeller(Repeller r) { 
    //apply to each particle in the arraylist
    for (Particle p : particles) {
      //create the force
      PVector force = r.repel(p);
      p.applyForce(force);
    }
  }
}