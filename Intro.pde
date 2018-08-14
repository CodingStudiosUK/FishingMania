void intro(){
  if (mousePressed){
    if (mouseX >= width*0.29 && mouseX <= width*0.49 && mouseY >= height*0.4 && mouseY <= height*0.6){
      endless = false;
      switched = false;
      score = 0;
      moves = 0;
      time = timeLimit;
      frames = 0;
      spawn = false;
      float[] fishWidth = {round(width*0.25),round(width*0.3),round(width*0.35),round(width*0.4),round(width*0.45),round(width*0.5),round(width*0.55),round(width*0.6),round(width*0.65),round(width*0.7),round(width*0.75)};
      float[] fishHeight = {round(height*0.45),round(height*0.5),round(height*0.55),round(height*0.6),round(height*0.65),round(height*0.7),round(height*0.75),round(height*0.8)};
      boat = new Ship(width/2);
      seaBass = new SeaBass[seaBassCount];
      redSnapper = new RedSnapper[redSnapperCount];
      for (int I = 0; I < seaBassCount; I++){
        seaBass[I] = new SeaBass(fishWidth[int(random(0,11))],fishHeight[int(random(0,8))]);
      }
      for (int I = 0; I < redSnapperCount; I++){
        redSnapper[I] = new RedSnapper(fishWidth[int(random(0,11))],fishHeight[int(random(0,8))]);
      }
      pause = false;
      title = false;
    }
    if (mouseX >= width*0.51 && mouseX <= width*0.71 && mouseY >= height*0.4 && mouseY <= height*0.6){
      endless = true;
      switched = false;
      score = 0;
      moves = 0;
      time = 0;
      frames = 0;
      spawn = false;
      float[] fishWidth = {round(width*0.25),round(width*0.3),round(width*0.35),round(width*0.4),round(width*0.45),round(width*0.5),round(width*0.55),round(width*0.6),round(width*0.65),round(width*0.7),round(width*0.75)};
      float[] fishHeight = {round(height*0.45),round(height*0.5),round(height*0.55),round(height*0.6),round(height*0.65),round(height*0.7),round(height*0.75),round(height*0.8)};
      boat = new Ship(width/2);
      seaBass = new SeaBass[seaBassCount];
      redSnapper = new RedSnapper[redSnapperCount];
      for (int I = 0; I < seaBassCount; I++){
        seaBass[I] = new SeaBass(fishWidth[int(random(0,11))],fishHeight[int(random(0,8))]);
      }
      for (int I = 0; I < redSnapperCount; I++){
        redSnapper[I] = new RedSnapper(fishWidth[int(random(0,11))],fishHeight[int(random(0,8))]);
      }
      pause = false;
      title = false;
    }
    if (!switched && mouseX >= width*0.35 && mouseX <= width*0.425 && mouseY >= height*0.7 && mouseY <= height*0.8 && timeLimit > 30){
      timeLimit -= 30;
      switched = true;
    }
    if (!switched && mouseX >= width*0.575 && mouseX <= width*0.65 && mouseY >= height*0.7 && mouseY <= height*0.8 && timeLimit < 240){
      timeLimit += 30;
      switched = true;
    }
  }
  else{
    switched = false;
  }
  fill(200,100,0,150);
  rect(width*0.29,height*0.4,width*0.2,height*0.2,9);
  rect(width*0.51,height*0.4,width*0.2,height*0.2,9);
  rect(width*0.35,height*0.7,width*0.3,height*0.1,9);
  fill(200,100,0);
  if (timeLimit > 30){
    triangle(width*0.425,height*0.7,width*0.425,height*0.8,width*0.35,height*0.75);
  }
  if (timeLimit < 240){
    triangle(width*0.575,height*0.7,width*0.575,height*0.8,width*0.65,height*0.75);
  }
  fill(0);
  textAlign(CENTER,CENTER);
  text("Fishing Mania",width*0.5,height*0.1);
  text("Start",width*0.39,height*0.5);
  text("Endless",width*0.61,height*0.5);
  text(timeLimit,width*0.5,height*0.725);
  text("seconds",width*0.5,height*0.765);
}