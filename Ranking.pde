import java.util.Arrays;
import java.util.Collections;

PFont Impact;

public void ranking(){
  textSize(46);
  fill(255);
  rect(250,250,530,400);
  fill(0);
  textSize(46);
  Impact = createFont("Impact", 46);
  textFont(Impact);
  textAlign(CENTER);
 
  String[] scores = loadStrings("Ranking.txt");
  Arrays.sort(scores, Collections.reverseOrder());
  int y = 300;
  for (int i = 0; i < scores.length; i++) {
    String scoreText = "Score: " + scores[i];
    text(scoreText, 420, y);
    y += 75; 
  }
}
