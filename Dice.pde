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
  int myX, myY, number, counter=0;
  Die(int x, int y) { //constructor
    myX = x;
    myY = y;
  }
  void roll(){
    number= (int)(Math.random()*6)+1;
  }
  
void show(){
  
  
  if (number == 1){
    fill(#E3171A);//1
  rect(myX,myY,60,60,10);
  fill(0,0,0);
  ellipse(myX+30,myY+30,10,10);
  }
  if (number ==2){
  fill(#E3171A);//2
  rect(myX+50,myY+50,60,60,10);
  fill(0,0,0);
  ellipse(myX+95,myY+95,10,10);
  ellipse(myX+65,myY+65,10,10);
  }
  if (number == 3){
   fill(#E3171A);
  rect(myX-90,myY-90,60,60,10);
  fill(0,0,0);
  ellipse(myX-45,myY-45,10,10);
  ellipse(myX-75,myY-75,10,10);
  ellipse(myX-60,myY-60,10,10);
  }
  if (number == 4){
  fill(#E3171A);
  rect(myX-50,myY+50,60,60,10);
  fill(0,0,0);
  ellipse(myX-5,myY+95,10,10);
  ellipse(myX-35,myY+65,10,10);
  ellipse(myX-35,myY+95,10,10);
  ellipse(myX-5,myY+65,10,10);
  }
  if (number == 5){
   fill(#E3171A);
  rect(myX-160,myY+60,60,60,10);
  fill(0,0,0);
  ellipse(myX-115,myY+105,10,10);
  ellipse(myX-115,myY+75,10,10);
  ellipse(myX-145,myY+105,10,10);
  ellipse(myX-145,myY+75,10,10);
  ellipse(myX-130,myY+90,10,10);
  }
  if(number ==6){
  fill(#E3171A);
  rect(myX+100,myY+100,60,60,10);
  fill(0,0,0);
  ellipse(myX+145,myY+145,10,10);
  ellipse(myX+115,myY+115,10,10);
  ellipse(myX+115,myY+145,10,10);
  ellipse(myX+145,myY+115,10,10);
  ellipse(myX+115,myY+130,10,10);
  ellipse(myX+145,myY+130,10,10);
  }
  
  }
  int getnumber() {
    return number;
}
}
