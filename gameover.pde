void gameover () {
  
  if (highscore < score) highscore = score; //highscore
  background(255, 0, 0); //background
  textFont(roblox); //text
  textAlign(CENTER);
  textSize(75);
  fill(0);
  text("GAMEOVER!", 400, 200);
  textSize(50);
  text("Score: " + score, 400, 400);
  text("Highscore: " + highscore, 400, 500);
  textSize(30);
  text("click to return to home screen", 400, 700);
}

void gameoverClicks() {
  mode = INTRO;
}
