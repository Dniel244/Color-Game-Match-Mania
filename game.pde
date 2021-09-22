//ARRAYS----------------------------------------------------------------------------------

String[] words;

color[] colors;

//COLOR PALLET-----------------------------------------------------------------------------------
color red = #FF0000;
color blue = #0A03FF;
color green = #00FF4E;
color yellow = #FAFF00;
color purple = #9800FF;
color orange = #FFB003;

//SCORES-----------------------------------------------------------------------------------
int score;
int highscore;

//BUTTONS-----------------------------------------------------------------------------------
int buttonx = 200, buttony = 600, buttonw = 200, buttonl = 50;
int buttonx2 = 600, buttony2 = 600, buttonw2 = 200, buttonl2 = 50;

//RANDOMNESS

int a = int(random(0, 1));
int w = int(random(0, 6));
int c = int(random(0, 6));

//TIME LIMIT
int tl = 1200;





void game() {
  background(255);

  //time limit
  if (tl > 400) {
    tl = tl - 10;
  } else {
    tl = 1200;
    mode = GAMEOVER;
  }



  fill(0);
  stroke(0);
  rectMode(CENTER);
  square(400, tl, 800);

  //randomization


  //text
  textFont(roblox);
  textAlign(CENTER);
  textSize(50);

  //button T tactility/display
  if (mouseX >= buttonx - 100 && mouseX <= buttonx + 100 && mouseY >= buttony - 25 && mouseY <= buttony + 25) {
    strokeWeight(10);
    stroke(colors[c]);

  } else {
    strokeWeight(5);
    stroke(0);

  }
  
 
  
  rectMode(CENTER);
  fill(255);
  rect(buttonx, buttony, buttonw, buttonl);
  
   


  //button F tactility/display
  if (mouseX >= buttonx2 - 100 && mouseX <= buttonx2 + 100 && mouseY >= buttony2 - 25 && mouseY <= buttony2 + 25) {
    strokeWeight(10);
    stroke(colors[c]);
  } else {
    strokeWeight(5);
    stroke(0);
  }

  rect(buttonx2, buttony2, buttonw2, buttonl2);
  
  //letter T tactility/display
  if (mouseX >= buttonx - 100 && mouseX <= buttonx + 100 && mouseY >= buttony - 25 && mouseY <= buttony + 25) {
    fill(colors[c]);
  } else {
    fill(0);
  }
  text("T", 200, 618); 

  //letter F tactility/display
  if (mouseX >= buttonx2 - 100 && mouseX <= buttonx2 + 100 && mouseY >= buttony2 - 25 && mouseY <= buttony2 + 25) {
    fill(colors[c]);
  } else {
    fill(0);
  }
  text("F", 600, 618);





  //word
  fill(colors[c]);
  text(" " + words[w], 390, 400);
}

void gameClicks() {


  if (mouseX >= buttonx - 100 && mouseX <= buttonx + 100 && mouseY >= buttony - 25 && mouseY <= buttony + 25) { //if you click true
    if (w == c) { //if correct
       a = int(random(1, 3)); //50/50 decider
      if (a == 1) { //matching
        w = int(random(0, 6));
        c = w;
      }
      if (a == 2) { //not matching
        w = int(random(0, 6));
        c = int(random(0, 6));
        while (w == c) {
        w = int(random(0, 6));
        c = int(random(0, 6));
        }
      }
      score = score + 1; //add score
      tl = 1200; //reset time limit
    } else { //if incorrect
       a = int(random(1, 3)); //50/50 decider
      if (a == 1) { //matching
        w = int(random(0, 6));
        c = w;
      }
      if (a == 2) { //not matching
        w = int(random(0, 6));
        c = int(random(0, 6));
        while (w == c) {
        w = int(random(0, 6));
        c = int(random(0, 6));
        }
      }
      mode = GAMEOVER; //gameover
      tl = 1200; //reset time limit
    }
  }

  if (mouseX >= buttonx2 - 100 && mouseX <= buttonx2 + 100 && mouseY >= buttony2 - 25 && mouseY <= buttony2 + 25) { //if you click false

    if (w == c) { //if incorrect
      a = int(random(1, 3)); //50/50 decider
      if (a == 1) { //matching
        w = int(random(0, 6));
        c = w;
      }
      if (a == 2) { //not matching
        w = int(random(0, 6));
        c = int(random(0, 6));
        while (w == c) {
        w = int(random(0, 6));
        c = int(random(0, 6));
        }
      }
      mode = GAMEOVER; //gameover
      tl = 1200; //reset time limit
    } else { //if correct
       a = int(random(1, 3)); //50/50 decider
      if (a == 1) { //matching
        w = int(random(0, 6));
        c = w;
      }
      if (a == 2) { //not matching
        w = int(random(0, 6));
        c = int(random(0, 6));
        while (w == c) {
        w = int(random(0, 6));
        c = int(random(0, 6));
        }
      }
      score = score + 1; //add score
      tl = 1200; //reset time limit
    }
  }
}
