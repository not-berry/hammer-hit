color black = #000000;
color white = #FFFFFF;

String mode = "game";

void setup() {
  size(800,800);
  textAlign(CENTER,CENTER);
  frameRate(60);
}

void draw() {
  if(mode == "intro") intro();
  else if(mode == "game") game();
  else if(mode == "game_over") game_over();
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
