void pause(){
  if (mousePressed) {
    if (mouseX >= width*0.1 && mouseX <= width*0.3 && mouseY >= height*0.6 && mouseY <= height*0.8) {
      pause = false;
    }
    if (mouseX >= width*0.7 && mouseX <= width*0.9 && mouseY >= height*0.6 && mouseY <= height*0.8) {
      title = true;
    }
  }
  fill(200,100,0,150);
  rect(width*0.1,height*0.6,width*0.2,height*0.2,9);
  rect(width*0.7,height*0.6,width*0.2,height*0.2,9);
  fill(0);
  textAlign(CENTER,CENTER);
  text("PAUSED",width*0.5,height*0.45);
  text("Resume",width*0.2,height*0.7);
  text("Quit",width*0.8,height*0.7);
}