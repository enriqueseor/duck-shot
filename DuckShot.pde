//Arrays
DuckLine[] ducks = new DuckLine[0];
DuckLineLeft[] ducks2 = new DuckLineLeft[0];
Particle[] particles = new Particle[0];
//Ints
int score = 0;
int lives = 3;
int pantalla = 0;
//boolean
boolean GameOver = false;
boolean scoreSaved = false;
//Images
PImage duck, ducksmall, screenGame;
PImage bg[] = new PImage[4];
//Buttons
Button btnPlay0, btnHelp0;
Button btnHelp1, btnStar1;
Button btnStar2, btnRank2, btnGame2;
Button btnStar3, btnRank3, btnHelp3, btnExit3;
//Writer
PrintWriter results;

void setup() {
  size(1020, 720);
  //Functions
  smooth();
  //Images
  bg[0] = loadImage("ScreenPlay.png");
  bg[0].resize(width, height);
  bg[1] = loadImage("ScreenGame.png");
  bg[1].resize(width, height);
  bg[2] = loadImage("ScreenHelp.png");
  bg[2].resize(width, height);
  bg[3] = loadImage("ScreenRanking.png");
  bg[3].resize(width, height);
  
  duck = loadImage ("duck.png");
  ducksmall = loadImage ("ducksmall.png");
  screenGame = loadImage ("ScreenGame.png");
  //buttons
  btnPlay0 = new Button("btnPlay.png", width * 0.35f, height * 0.65f, 350, 180);
  btnHelp0 = new Button("btnHelp.png", width * 0.78f, height * 0.03f, 180, 180);
  btnStar1 = new Button("btnStar.png", width * 0.07f, height * 0.73f, 300, 180);
  btnHelp1 = new Button("btnHelp.png", width * 0.70f, height * 0.73f, 180, 180);
  btnStar2 = new Button("btnStar.png", width * 0.02f, height * 0.03f, 300, 150);
  btnRank2 = new Button("btnRank.png", width * 0.35f, height * 0.03f, 300, 150);
  btnGame2 = new Button("btnGame.png", width * 0.68f, height * 0.03f, 300, 150);
  btnStar3 = new Button("btnStar.png", width * 0.02f, height * 0.05f, 220, 180);
  btnRank3 = new Button("btnRank.png", width * 0.25f, height * 0.05f, 530, 180);
  btnHelp3 = new Button("btnHelp.png", width * 0.80f, height * 0.05f, 180, 180);
  btnExit3 = new Button("btnExit.png", width * 0.80f, height * 0.73f, 180, 180);
  //Writer
  results = createWriter("Ranking.txt");
}

void draw() {
  switch(pantalla){
    case 0:
      background(bg[0]);
      btnPlay0.show();
      btnHelp0.show();
      reset();
      break;
    case 1:
      background(bg[1]);
      gameBehaviour();
      scoreboard();
      btnHelp1.show();
      btnStar1.show();
      break;
    case 2:
      reset();
      background(bg[2]);
      btnStar2.show();
      btnRank2.show();
      btnGame2.show();
      break;
    case 3:
     background(bg[3]);
      btnStar3.show();
      btnRank3.show();
      btnHelp3.show();
      btnExit3.show();
      ranking();
      if (!scoreSaved) {
        results.println(score);
        scoreSaved = true;
      }
      results.flush();
      break;
   }
}

void mousePressed() {
    if (mouseButton == LEFT) {
    switch(pantalla){
      //START SCREEN
      case 0:
      if (btnPlay0.isClicked()) {pantalla = 1;}
      if (btnHelp0.isClicked()) {pantalla = 2;}
      break;
      //GAME SCREEN
      case 1:
      shot();
      if (btnStar1.isClicked()) {pantalla = 0;}
      if (btnHelp1.isClicked()) {pantalla = 2;}
      break;
      //HELP SCREEN
      case 2:
      if (btnStar2.isClicked()) {pantalla = 0;}
      if (btnRank2.isClicked()) {pantalla = 3;}
      if (btnGame2.isClicked()) {pantalla = 1;}
      break;
      //RANKING SCREEN
      case 3:
      if (btnStar3.isClicked()) {pantalla = 0;scoreSaved = false;}
      if (btnHelp3.isClicked()) {pantalla = 2;scoreSaved = false;}
      if (btnExit3.isClicked()) {exit();}
      break;
    }
  }
}
