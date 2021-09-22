void intro() {

  
  
  //gif
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if (f == numberOfFrames) f = 0;
  
  
  //intro text
  fill(255);
  textSize(50);
  textFont(roblox);
  textAlign(CENTER, CENTER);
  text("Match Mania", 390, 300);
  textSize(30);
  text("Click to start matching!", 400, 500);
  
  
  if (mode == INTRO) score = 0;
  

}

void introClicks() {
  mode = GAME;
}
