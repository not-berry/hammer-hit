float move = 0;

void intro() {
  background(red);
  pre(blue,blue,0);
  for(int i = 0; i < 6; i++) {
    rect(0,move-200 + i*200, width,100);
  }
  move += 1;
  if(move == 200) move = 0;
  
  fill(black);
  textSize(100);
  textAlign(CENTER,CENTER);
  text("HAMMER\nHIT", width/2, height/2 - 100);
  
  pre(black,white, 7);
  if(mouseX>=97 && mouseX<=width-97 && mouseY>=597 && mouseY<= 703) fill(200);
  rect(100,600, 300,100, 20);
  fill(black);
  text("PLAY", width/2,650);
}

void introPressed() {
  
}

void introReleased() {
  if(mouseX>=97 && mouseX<=width-97 && mouseY>=597 && mouseY<= 703) mode = "game";
}

void introKeyPressed() {
  
}

void introKeyReleased() {
  
}
