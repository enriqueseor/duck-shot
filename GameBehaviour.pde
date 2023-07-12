

public void gameBehaviour(){
  if (!GameOver) {
    background(181, 230, 29);
    //Particles
    while (particles.length>maxParticles) {
      particles = (Particle[]) subset(particles, 1);
    }
    for (int i=0; i<particles.length; i++) {  
      particles[i].update();
    }
    //Add a new duck
    if (frameCount % 80 == 0) {
      DuckLine duck = new DuckLine();
      ducks = (DuckLine[]) append(ducks, duck);
    }
    if (frameCount % 80 == 0) {
      DuckLineLeft duck2 = new DuckLineLeft();
      ducks2 = (DuckLineLeft[]) append(ducks2, duck2);
    }
    //Remove Duck after 30 have been created
    if (ducks.length>10) {
      ducks = (DuckLine[]) subset(ducks, 1);
      ducks2 = (DuckLineLeft[]) subset(ducks2, 1);
    }
    //Move Duck
    for (int i = 0; i<ducks.length; i++){
      ducks[i].update();
      ducks2[i].update();
      }
     }
     
    else {
      pantalla = 3;
      if (keyPressed == true){
      pantalla = 0;
      }
    }
    //Check if small duck has left the stage
    for (int i = 0; i<ducks.length; i++) {
    DuckLine duck = ducks[i];
    if((duck.x<-20)&&(duck.x>-23)) {
      lives--;
    }
  }
    //Check if big duck has left the stage
    for (int i = 0; i<ducks.length; i++) {
    DuckLineLeft duck2 = ducks2[i];
    if((duck2.x>width+duck2.w) && (duck2.x<width+duck2.w+3)) {
     lives--;
    }
  }
    // Game Over 
    if(lives<=0){
     GameOver = true; 
    }
}
