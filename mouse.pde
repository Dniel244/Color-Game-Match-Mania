void mouseReleased() { //mouse interaction
  if (mode == INTRO) {
  introClicks();
} else if (mode == GAME) {
  gameClicks();
} else if (mode == GAMEOVER) {
  gameoverClicks();
} 
}
