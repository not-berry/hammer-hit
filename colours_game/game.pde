color correct = #2ABC32;
color wrong = #BC2A2A;

float clickedX = 0;
float releasedX = 0;

int tick = 0;
int timer = 5;
int score = 0;

void game() {
  background(white);
  
  

  
  
  
  //right or wrong
  if(releasedX > clickedX) {
    fill(correct, 50);
    rect(-100,-100, width+200,height+200);
  } else if(releasedX < clickedX) {
    fill(wrong, 50);
    rect(-100,-100, width+200,height+200);
  }
  
  //timer
  fill(black);
  textSize(100);
  text(timer, width/2, 50);
  
  //score
  
  
  tick +=1;
  if(tick % 60 == 0) timer -= 1;
}

void gamePressed() {
  clickedX = mouseX;
  releasedX = mouseX;
}

void gameReleased() {
  releasedX = mouseX;
  tick = 0;
  timer = 5;
}
