void setup() {
  size(600, 600);
  noLoop();
}
void draw() {
  background(#661393);
  Die bob;
  int total = 0;
  for(int x =30; x<600; x+=60){
    for(int y =30; y<360; y+=60){
  bob = new Die (x,y);
  bob.roll();
  bob.show();
  total += bob.number;
   
   textSize(60);
        text("Total:", 250, 550);
    }
}
text(total,450,550);
}

void mousePressed()
{
  redraw();
}
class Die {
  int myx, myy, number, counter=0;
  Die(int x, int y) { //constructor
    myx = x;
    myy = y;
  }
  void roll(){
    number= (int)(Math.random()*6)+1;
  }
  
void show(){
  
  
    fill(0);
          rect(myx-25,myy-25,50,50);
          if (number==1){
            fill(0,0,255);
            ellipse(myx,myy,15,15);
          }

          if (number==2){
            fill(0,0,255);
            ellipse(myx-15,myy,15,15);
            ellipse(myx+15,myy,15,15);
          }
          if(number==3){
            fill(0,0,255);
            ellipse(myx,myy,15,15);
            ellipse(myx-15,myy-15,15,15);
            ellipse(myx+15,myy+15,15,15);
          }
          if(number==4){
            fill(0,0,255);
            ellipse(myx-15,myy-15,15,15);
            ellipse(myx-15,myy+15,15,15);
            ellipse(myx+15,myy-15,15,15);
            ellipse(myx+15,myy+15,15,15);
          }
          if(number==5){
            fill(0,0,255);
            ellipse(myx,myy,15,15);
            ellipse(myx-15,myy-15,15,15);
            ellipse(myx-15,myy+15,15,15);
            ellipse(myx+15,myy-15,15,15);
            ellipse(myx+15,myy+15,15,15);
          }
          if(number==6){
            fill(0,0,255);
            ellipse(myx-15,myy,15,15);
            ellipse(myx+15,myy,15,15);
            ellipse(myx-15,myy+15,15,15);
            ellipse(myx+15,myy+15,15,15);
            ellipse(myx-15,myy-15,15,15);
            ellipse(myx+15,myy-15,15,15);
  }
  
  }
  int getnumber() {
    return number;
}
}
