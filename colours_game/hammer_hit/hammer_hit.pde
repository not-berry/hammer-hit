import processing.sound.*;

PImage[] gif;
int currentPic = 0;

int[] numbers;

color black = #000000;
color white = #FFFFFF;
color grey = #4B4B4B;
color red = #F04949;
color blue = #4981F0;
color redred = #B73232;
color blueblue = #3237B7;
color yellow = #F5E597;
color yellowll = #F9FF5F;
color yellowl = #EDCE5B;
color yellowd = #EDBA5B;
color yellowdd = #BF9245;
color green = #2EB75F;
color noFill = #A589A0;
color noStroke = #B4A4B2;
color brown = #7C500F;

String mode = "intro";

SoundFile hit;

void setup() {
  size(500,800);
  noCursor();
  textAlign(CENTER,CENTER);
  frameRate(60);
  
  if(round(random(2)) == 0) back = blue;
  
  gif = new PImage[18];
  for(int i = 0; i < 18; i++) {
    gif[i] = loadImage("frame_" + i + "_delay-0.08s.gif");
  }
  
  numbers = new int[10];
  for(int i = 0; i < 10; i++) {
    numbers[i] = i*10;
  }
  
  hit = new SoundFile(this, "hit.mp3");
}

void draw() {
  if(mode == "intro") intro();
  else if(mode == "game") game();
  else if(mode == "game_over") game_over();
  
  pushMatrix();
  translate(mouseX,mouseY);
  rotate(radians(-70));
  scale(0.5);
  pre(black,brown,5);
  rect(-5,-32, 10,100, 10);
  pre(black,150, 5);
  rect(-35,-25, 70,50, 10);
  popMatrix();
}

void mousePressed() {
  if(mode == "intro") introPressed();
  else if(mode == "game") gamePressed();
  else if(mode == "game_over") game_overPressed();
}

void mouseReleased() {
  if(mode == "intro") introReleased();
  else if(mode == "game") gameReleased();
  else if(mode == "game_over") game_overReleased();
}

void keyPressed() {
  if(mode == "intro") introKeyPressed();
  else if(mode == "game") gameKeyPressed();
  else if(mode == "game_over") game_overKeyPressed();
}

void keyReleased() {
  if(mode == "intro") introKeyReleased();
  else if(mode == "game") gameKeyReleased();
  else if(mode == "game_over") game_overKeyReleased();
}

void pre(color stroke, color fill, float strokeWeight) {
  stroke(stroke);
  fill(fill);
  strokeWeight(strokeWeight);
  if(stroke == noStroke) noStroke();
  if(fill == noFill) noFill();
}
