

public void scoreboard(){
  image(BG, 0, 0);
      textSize(26);
      fill(255);
      stroke(0);
      rect(440,559,150,80);
      fill(0);
      text("Score:" + score, 457, 569+20);
      text("Lives:" + lives, 457, 600+20);
}
