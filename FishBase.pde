class FishBase{
  float xPos;
  float yPos;
  float startX;
  float startY;
  int dir;
  boolean caught = false;
  color colour = color(0);
  FishBase(float _xPos,float _yPos){
    xPos = _xPos;
    startX = xPos;
    yPos = _yPos;
    startY = yPos;
  }
  void display(){
    if (!caught){
      if (xPos > boat.xPos()-width*0.075 && xPos < boat.xPos()+width*0.075 && yPos < boat.netPos()+height*0.275){
        caught = true;
        score++;
        if (score % (seaBassCount + redSnapperCount) == 0){
          spawn = true;
        }
      }
      fill(colour);
      triangle(xPos-width*0.005,yPos,xPos-width*0.02,yPos+height*0.015,xPos-width*0.02,yPos-height*0.015);
      ellipse(xPos+width*0.005,yPos,width*0.03,height*0.03);
    }
  }
  void move(){
    switch (dir){
      case 0:
        xPos -= width*0.01;
        break;
      case 1:
        xPos += width*0.01;
        break;
      case 2:
        yPos -= height*0.01;
        break;
      case 3:
        yPos += height*0.01;
        break;
    }
  }
  void dirUpd(){
    dir = int(random(0,4));
    if (dir == 0 && xPos <= width*0.1){
      dir = 1;
    }
    if (dir == 1 && xPos >= width*0.9){
      dir = 0;
    }
    if (dir == 2 && yPos <= height*0.45){
      dir = 3;
    }
    if (dir == 3 && yPos >= height*0.85){
      dir = 2;
    }
  }
  void respawn(){
    xPos = startX;
    yPos = startY;
    caught = false;
  }
}