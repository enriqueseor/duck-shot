

class DuckLine {
  float x, y, w, h, velX, velY, speed;
  boolean alive;
  DuckLine() {
    x = width+30;                             //position were ducks appear
    y = random(height*0.05, height*0.60);     //height were thge duck appear
    w = 50;
    h = 50;
    velX = -3;
    velY = 0;
    alive = true;
    speed=0.5;
  }
   void update() {
    x+=velX;
    y+=velY*speed;     
    if(alive) {
      fill(255, 0, 0);
      stroke(255);  
    } else {
      fill(0,0,0); 
      noStroke();
      velY-=1;
      velX=0;
      x=-1000;
     }
    //rect(x, y, w, h);
    image(ducksmall, x-55, y-20);
  }
}
