float maxParticles = 50;

class Particle {
  float x, y, xVel, yVel, particleSize, opacity, gravity, fadeSpeed, shrink;
  Particle(float xpos, float ypos) {
    x = xpos;
    y = ypos;
    xVel = random(-5,5);
    yVel = random(-5,5);
    particleSize = random(1,5);
    opacity = 255;
    gravity = 0;
    fadeSpeed = 1;
    shrink =2;  
  }
  void update() {
    x+=xVel;
    y+=yVel;
    opacity*=fadeSpeed;
    yVel += gravity;
    particleSize*=shrink;
    //noStroke();
    fill(255,255,0,opacity);
    ellipse(x, y, particleSize, particleSize);
  } 
}
