class Ship{
  float xPos;
  boolean catching = false;
  boolean catchDown = true;
  float netPos = height*0.025;
  Ship(float _xPos){
    xPos = _xPos;
  }
  void display(){
    if (catching){
      fill(200);
      rect(xPos-width*0.05,height*0.275,width*0.1,netPos);
      if (catchDown){
        netPos += height*0.025;
        if (netPos >= height*0.675){
          catchDown = false;
        }
      }
      else{
        netPos -= height*0.025;
        if (netPos <= height*0.025){
          netPos = height*0.025-1;
          catchDown = true;
          catching = false;
        }
      }
    }
    fill(200,100,0);
    rect(xPos-width*0.075,height*0.25,width*0.15,height*0.1,0,0,90,90);
    rect(xPos-width*0.005,height*0.175,width*0.01,height*0.075);
    fill(230);
    rect(xPos+width*0.005,height*0.175,width*0.05,height*0.05,0,9,9,0);
  }
  void left(){
    if (!catching && xPos > width*0.1){
      xPos -= width*0.01;
    }
    else{
    }
  }
  void right(){
    if (!catching && xPos < width*0.9){
      xPos += width*0.01;
    }
    else{
    }
  }
  void net(){
    if (!catching){
      moves += 1;
      catching = true;
    }
  }
  float xPos(){
    return xPos;
  }
  float netPos(){
    return netPos;
  }
  boolean getCatching(){
    return catching;
  }
}