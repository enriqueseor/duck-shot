

public void shot(){
  for (int i = 0; i<ducks.length; i++) {
    DuckLine duck = ducks[i];
    if ((mouseX>duck.x) && (mouseX<duck.x + duck.w) && (mouseY>duck.y) && (mouseY<duck.y+duck.h)) {
      duck.alive = false;
      score++;
      for (int ii = 0; ii<30; ii++) {
        Particle p = new Particle(mouseX, mouseY);
        p.yVel = random(-2, 2);
        p.xVel = random(-5, 5);
        p.gravity = 0.1;
        p.shrink = 0.94;
        particles = (Particle[]) append(particles, p );
      }
    }
  }
  for (int i = 0; i<ducks2.length; i++) {
    DuckLineLeft duck2 = ducks2[i];
    if ((mouseX>duck2.x) && (mouseX<duck2.x + duck2.w) && (mouseY>duck2.y) && (mouseY<duck2.y+duck2.h)) {
      duck2.alive = false;
       score++;
      for (int ii = 0; ii<30; ii++) {
        Particle p = new Particle(mouseX, mouseY);
        p.yVel = random(-2, 2);
        p.xVel = random(-5, 5);
        p.gravity = 0.1;
        p.shrink = 0.94;
        particles = (Particle[]) append(particles, p );
      }
    }
  }
}
