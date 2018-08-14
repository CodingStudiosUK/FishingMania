void game(){
  frames++;
  if (endless){
    time = (frames-frames%60)/60;
  }
  else{
    time = timeLimit-((frames-frames%60)/60);
    if (time == 0){
      title = true;
    }
  }
  if (spawn && !boat.getCatching()){
    for (int I = 0; I < seaBassCount; I++){
      seaBass[I].respawn();
    }
    for (int I = 0; I < redSnapperCount; I++){
      redSnapper[I].respawn();
    }
    spawn = false;
  }
  if (frameCount % 3 == 0){
    if (frameCount % 15 == 0){
      for (int I = 0; I < redSnapperCount; I++){
        redSnapper[I].dirUpd();
      }
    }
    for (int I = 0; I < redSnapperCount; I++){
      redSnapper[I].move();
    }
  }
  if (frameCount % 6 == 0){
    if (frameCount % 30 == 0){
      for (int I = 0; I < seaBassCount; I++){
        seaBass[I].dirUpd();
      }
    }
    for (int I = 0; I < seaBassCount; I++){
      seaBass[I].move();
    }
  }
  boat.display();
  for (int I = 0; I < seaBassCount; I++){
    seaBass[I].display();
  }
  for (int I = 0; I < redSnapperCount; I++){
    redSnapper[I].display();
  }
  if (mousePressed) {
    if (mouseX >= width*0.05 && mouseX <= width*0.15 && mouseY >= height*0.7 && mouseY <= height*0.8) {
      boat.left();
      fill(200,0,0);
      rect(width*0.05,height*0.7,width*0.1,height*0.1,9);
    }
    else{
      fill(200,100,0,150);
      rect(width*0.05,height*0.7,width*0.1,height*0.1,9);
    }
    if (mouseX >= width*0.85 && mouseX <= width*0.95 && mouseY >= height*0.7 && mouseY <= height*0.8) {
      boat.right();
      fill(200,0,0);
      rect(width*0.85,height*0.7,width*0.1,height*0.1,9);
    }
    else{
      fill(200,100,0,150);
      rect(width*0.85,height*0.7,width*0.1,height*0.1,9);
    }
    if (mouseX >= width*0.05 && mouseX <= width*0.15 && mouseY >= height*0.05 && mouseY <= height*0.15) {
      pause = true;
    }
  }
  else{
    fill(200,100,0,150);
    rect(width*0.05,height*0.7,width*0.1,height*0.1,9);
    rect(width*0.85,height*0.7,width*0.1,height*0.1,9);
  }
  fill(200,100,0,150);
  rect(width*0.05,height*0.05,width*0.1,height*0.1,9);
  rect(width*0.45,height*0.875,width*0.1,height*0.1,9);
  if (lefty){
    if (mousePressed){
      if (mouseX >= width*0.15 && mouseX <= width*0.25 && mouseY >= height*0.8 && mouseY <= height*0.9) {
        boat.net();
        fill(200,0,0);
        rect(width*0.15,height*0.8,width*0.1,height*0.1,9);
      }
      else{
        fill(200,100,0,150);
        rect(width*0.15,height*0.8,width*0.1,height*0.1,9);
      }
      if (!switched && mouseX >= width*0.45 && mouseX <= width*0.55 && mouseY >= height*0.875 && mouseY <= height*0.975){
        lefty = false;
        switched = true;
      }
    }
    else{
      switched = false;
      fill(200,100,0,150);
      rect(width*0.15,height*0.8,width*0.1,height*0.1,9);
    }
    fill(0);
    textAlign(CENTER,CENTER);
    text("NET",width*0.2,height*0.85);
  }
  else{
    if (mousePressed) {
      if (mouseX >= width*0.75 && mouseX <= width*0.85 && mouseY >= height*0.8 && mouseY <= height*0.9) {
        boat.net();
        fill(200,0,0);
        rect(width*0.75,height*0.8,width*0.1,height*0.1,9);
      }
      else{
        fill(200,100,0,150);
        rect(width*0.75,height*0.8,width*0.1,height*0.1,9);
      }
      if (!switched && mouseX >= width*0.45 && mouseX <= width*0.55 && mouseY >= height*0.875 && mouseY <= height*0.975){
        lefty = true;
        switched = true;
      }
    }
    else{
      switched = false;
      fill(200,100,0,150);
      rect(width*0.75,height*0.8,width*0.1,height*0.1,9);
    }
    fill(0);
    textAlign(CENTER,CENTER);
    text("NET",width*0.8,height*0.85);
  }
  if (!(!switched || (mouseX >= width*0.475 && mouseX <= width*0.525) || (mouseY >= height*0.925 || mouseY <= height*0.975))){
    lefty = false;
    switched = true;
  }
  text("PAUSE",width*0.1,height*0.1);
  text("LEFT",width*0.1,height*0.75);
  text("RIGHT",width*0.9,height*0.75);
  text("SWAP",width*0.5,height*0.925);
  textAlign(RIGHT,CENTER);
  text("Score = " + score,width*0.95,height*0.04);
  text("Moves = " + moves,width*0.95,height*0.09);
  text("Time = " + time,width*0.95,height*0.14);
  if (keyPressed && key == CODED){
    switch (keyCode){
      case LEFT:
        boat.left();
        break;
      case RIGHT:
        boat.right();
        break;
      case DOWN:
        boat.net();
        break;
    }
  }
}