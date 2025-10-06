void game_over() {
  fill(black);
  textSize(100);
  textAlign(CENTER,CENTER);
  if(redScore > blueScore) {
    background(red);
    text("RED WINS", width/2, 200);
  }else if(blueScore > redScore) {
    background(blue);
    text("BLUE WINS", width/2, 200);
  }else {
    background(150);
    text("DRAW", width/2, 200);
  }
  image(gif[currentPic], 0,527);
  currentPic++;
  if(currentPic > 17) {
    currentPic = 0;
  }
  
  pre(black,white, 7);
  if(mouseX>=97 && mouseX<=width-97 && mouseY>=height/2-53 && mouseY<= height/2+53) fill(200);
  rect(100,height/2-50, 300,100, 20);
  fill(black);
  textSize(90);
  text("again?", width/2,height/2-7);
}

void game_overPressed() {
  
}

void game_overReleased() {
  if(mouseX>=97 && mouseX<=width-97 && mouseY>=height/2-53 && mouseY<= height/2+53) {
    blueScore = 0;
    redScore = 0;
    mode = "game";
  }
}

void game_overKeyPressed() {
  
}

void game_overKeyReleased() {
  
}
