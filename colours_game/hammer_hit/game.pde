float r = -90, a = 2;
boolean right = true, go = false;
float score = 0;
float upness = 0.1;
int redScore = 0;
int blueScore = 0;
float timer = 0;
color back = red;
int rounds = 1;

void game() {
  background(back);
  
  //star top circle
  pre(black, grey, 7);
  circle(width/2,200, 220);
  
  //pole
  pre(noStroke, yellowl, 0);
  circle(width/2,200, 120);
  rect(width/2-60,200, 120,height);
  pre(noStroke, yellowd, 0);
  for(float y = 0; y < 6; y++) {
    rect(width/2-60,y*85+230, 120,45);
  }
  
  //yellow thingy that goes up behind pin
  pre(yellowll, yellowll, 0);
  rect(width/2-60,700, 120,-45 - upness);
  
  pre(black, noFill, 7);
  arc(width/2,200, 120,120, radians(180),radians(360));
  line(width/2-60,200, width/2-60,height);
  line(width/2+60,200, width/2+60,height);
  
  pre(white, white, 10);
  line(width/2,200, width/2,height);
  
  //numbers
  pre(black, green, 7);
  circle(width/2,200, 60);
  pre(grey, grey, 7);
  textSize(30);
  textAlign(CENTER,CENTER);
  text(100, width/2, 200);
  pre(yellowdd, yellowdd, 7);
  int h = 640;
  for(int i = 0; i < 10; i+=2) {
    text(numbers[i], width/2+30,h);
    h -= 40;
    text(numbers[i+1], width/2-30,h);
    h -= 45;
  }
  
  //thingy that goes up
  pre(black, back, 7);
  ellipse(width/2,684 - upness, 30, 50);
  
  //needle
  pushMatrix();
  translate(width/2,700);
  rotate(radians(r));
  line(0,0, 0,-125);
  if(right && !go)r += 2;
  if(!right && !go)r -= 2;
  if(r > 90) {
    right = false;
    r = 90;
  }
  if(r < -90) {
    right = true;
    r = -90;
  }
  popMatrix();
  
  
  
  //base
  pre(black, grey, 7);
  rect(150,700, 200,200, 30);
  pre(noStroke, grey, 0);
  circle(width/2,700, 50);
  pre(black, grey, 7);
  arc(width/2,700, 50,50, radians(180),radians(360), OPEN);
  pre(black, black, 7);
  circle(width/2,700, 5);
  
  //score
  fill(black);
  textSize(100);
  textAlign(CENTER,BOTTOM);
  text(".", width/2, 52);
  textAlign(RIGHT,CENTER);
  textSize(40);
  fill(redred);
  text(redScore, width/2 - 20, 25);
  textAlign(LEFT,CENTER);
  fill(blueblue);
  text(blueScore, width/2 + 20, 25);
  
  
  if(!go) score = round(map(abs(r), 0,90, 100,0));
  //text(round(score), 50,50);
  //text(round(map(abs(r), 0,90, 100,0)), 50, 50);
  
  if(go && upness < score*4.25) upness += 5;
  if(go && upness >= score*4.25 && timer == 200) {
    rounds++;
    if(rounds == 7) mode = "game_over";
    upness = 0;
    go = false;
    timer = 0;
    r = -90;
    if(back == red) back = blue;
    else back = red;
  }
  if(go && upness >= score*4.25) {
    timer++;
    if(redScore < round(score) && back == red)redScore = round(score);
    else if(blueScore < round(score) && back == blue)blueScore = round(score);
  }
  
  
}

void gamePressed() {
  go = true;
  hit.stop();
  hit.play();
}

void gameReleased() {
  //go = false;
  //upness = 0;
}

void gameKeyPressed() {
  
}

void gameKeyReleased() {
  
}
