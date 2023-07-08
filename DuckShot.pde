//Arrays
DuckLine[] ducks = new DuckLine[0];
DuckLineLeft[] ducks2 = new DuckLineLeft[0];
Particle[] particles = new Particle[0];
//Ints
int score = 0;
int lives = 3;
int pantalla = 0;
boolean GameOver = false;
//Images
PImage duck, ducksmall, BG, BG2;
PImage bg[] = new PImage[3];
//Buttons
Button btnPlay0, btnHelp0, btnHelp1, btnPlay1;
//Writer
PrintWriter results;

void setup() {
  size(1020, 720);
  //Functions
  smooth();
  //Images
  bg[0] = loadImage("ScreenPlay.png");
  bg[0].resize(width, height);
  bg[1] = loadImage("ScreenHelp.png");
  bg[1].resize(width, height);
  bg[2] = loadImage("ScreenRanking.png");
  bg[2].resize(width, height);
  BG        = loadImage ("BG.png");
  duck      = loadImage ("duck.png");
  ducksmall = loadImage ("ducksmall.png");
  //buttons
  btnPlay0 = new Button("play.png",width*0.35,width     ,height*0.65,height);
  btnHelp0 = new Button("help.png",width*0.80,width     ,height*0.05,height);
  btnPlay1 = new Button("play.png",width*0.05,width*0.45,height*0.75,height);
  btnHelp1 = new Button("help.png",width*0.60,width     ,height*0.75,height);
  //Writer
  results = createWriter("Ranking.txt");
} //END SETUP

void draw() {
  switch(pantalla){
    case 0:
      background(bg[0]);
      btnPlay0.show();
      btnHelp0.show();
      reset();
      break;
    case 1:
      gameBehaviour();
      scoreboard();
      btnHelp1.show();
      btnPlay1.show();
      break;
    case 2:
      reset();
      background(bg[1]);
      break;
    case 3:
      background(bg[2]);
      ranking();
      results.println(score);
      break;
   }
} // END DRAW

void mousePressed() {
    if (mouseButton == LEFT) {
    switch(pantalla){
      //START SCREEN
      case 0:
      if (mouseX > btnPlay0.xStart && mouseX < btnPlay0.xEnd && mouseY > btnPlay0.yStart && mouseY < btnPlay0.yEnd) {pantalla = 1;}
      if (mouseX > btnHelp0.xStart && mouseX < btnHelp0.xEnd && mouseY > btnHelp0.yStart && mouseY < btnHelp0.yEnd) {pantalla = 2;}
      break;
      //GAME SCREEN
      case 1:
      shot();
      if (mouseX > btnHelp1.xStart && mouseX < btnHelp1.xEnd && mouseY > btnHelp1.yStart && mouseY < btnHelp1.yEnd) {pantalla = 2;}
      if (mouseX > btnPlay1.xStart && mouseX < btnPlay1.xEnd && mouseY > btnPlay1.yStart && mouseY < btnPlay1.yEnd) {pantalla = 0;}
      break;
      //HELP SCREEN
      case 2:
      if (mouseX > 0          && mouseX < width*0.20 && mouseY > 0 && mouseY < height*0.20){pantalla = 0;}
      if (mouseX > width*0.40 && mouseX < width*0.65 && mouseY > 0 && mouseY < height*0.20){pantalla = 3;}
      if (mouseX > width*0.80 && mouseX < width      && mouseY > 0 && mouseY < height*0.20){pantalla = 1;}
      break;
      //RANKING SCREEN
      case 3:
      results.flush();
      if (mouseX > width*0.05 && mouseX < width*0.25 && mouseY > height*0.05 && mouseY < height*0.30){pantalla = 0;}
      if (mouseX > width*0.80 && mouseX < width*0.95 && mouseY > height*0.05 && mouseY < height*0.30){pantalla = 2;}
      if (mouseX > width*0.80 && mouseX < width*0.95 && mouseY > height*0.80 && mouseY < height*0.95){exit();}
      break;
    }
  }
} //END MOUSE PRESSED
