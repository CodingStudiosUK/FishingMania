final int seaBassCount = 50, redSnapperCount = 25;
boolean lefty = false, switched = false, spawn = false, title = true, pause = false, endless = false;
int score = 0, moves = 0, time = 60, timeLimit = 60, frames = 0;
Ship boat;
SeaBass[] seaBass;
RedSnapper[] redSnapper;
void setup(){
  fullScreen();
  orientation(LANDSCAPE);
  textSize(height*0.05);
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
}
void draw(){
  bg();
  if(title){
    intro();
  }
  else{
    if(pause){
      pause();
    }
    else{
      game();
    }
  }
}
