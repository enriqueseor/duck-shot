

class DuckLineLeft {
  float x, y, w, h, velX, velY;
  boolean alive;
  DuckLineLeft() {
    x = 0-w-50;                            //position were ducks appear
    y = random(height*0.05, height*0.60);  //height were thge duck appear
    w = 80;
    h = 80;
    velX = -3;
    velY = 0;
    alive = true;
  }
   void update() {
    x-=velX;
    y+=velY;     
    if(alive) {
      fill(255, 0, 0);
      stroke(255);  
    } else {
      fill(0,0,0); 
      noStroke();
      velY+=1;
      velX=0;
      x=-1000;
     }
    //rect(x, y, w, h);
    image(duck, x-50, y-40);
  }
}
