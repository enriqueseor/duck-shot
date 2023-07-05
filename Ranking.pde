PFont Impact;

public void ranking(){
  textSize(46);
  fill(255);
  rect(250,250,530,400);
  fill(0);
  textSize(46);
  Impact = createFont("Impact", 46);
  textFont(Impact);
  text("Score:" + score, 420, 300);
  text("Score:" + score, 420, 375);
  text("Score:" + score, 420, 450);
  text("Score:" + score, 420, 525);
  text("Score:" + score, 420, 600);
}
