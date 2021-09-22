//Daniel
//September 17, 2021
/*

color game project: match mania
if the color of the word and the color described by the word match, click true
if they don't, click flase
you have about 1-2 seconds to decide per word

*/




//MODE FRAMEWORK----------------------------------------------------------------------
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;




//FONT-----------------------------------------------------------------------------------
PFont roblox; 
//GIF-----------------------------------------------------------------------------------
PImage[] gif;
int numberOfFrames;
int f = 0;





//SETUP/DRAW-----------------------------------------------------------------------------
void setup () {    //setup
  size(800, 800);
  
  //mode
  mode = INTRO;
  //font
  roblox = createFont("Roblox.ttf", 50);
  //score
  score = 0;
  highscore = 0;
  
  //puzzle
  words = new String[6];
  colors = new color[6];
  
  words[0] = "red";
  colors[0] = red;
   words[1] = "blue";
  colors[1] = blue;
   words[2] = "green";
  colors[2] = green;
   words[3] = "yellow";
  colors[3] = yellow;
   words[4] = "purple";
  colors[4] = purple;
   words[5] = "orange";
  colors[5] = orange;
  
  //gif
  numberOfFrames = 35;
  gif = new PImage[numberOfFrames];
  
  int i = 0;
  while(i < numberOfFrames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.03s.gif");
    i = i + 1;
  }
  

}

void draw() {      //modeframework
  if (mode == INTRO) {
  intro();
} else if (mode == GAME) {
  game();
} else if (mode == GAMEOVER) {
  gameover();
} else {
  println("try again = " + mode);
}

}
