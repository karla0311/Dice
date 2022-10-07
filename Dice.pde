Die bob;
int sum;
class Die{
  int num;
  int myX, myY;
  Die(int x, int y){
    roll();
    myX = x;
    myY = y;
  }
  void roll(){
    num = (int)(Math.random()*6)+1;
    //System.out.println(num);
  }
  void show(){
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    rect(myX,myY,80,80);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    if (num == 1){
      ellipse(myX+40,myY+40,17,17);
    }
    if (num == 2){
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+20,17,17);
    }
    if (num == 3){
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+40,myY+40,17,17);
      ellipse(myX+60,myY+20,17,17);
    }
    if(num == 4){
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
    if(num == 5){
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+40,myY+40,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
    if(num == 6){
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+20,myY+40,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+60,myY+40,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
  }
}

void setup(){
  size(600,650);
  bob = new Die(10,10);
   noLoop();
}

void draw(){
  background(#D3D3D3);
  int sum =0;
  for(int x = 10; x <= 550; x += 100){
    for(int y = 10; y <= 550; y+= 100){
      bob = new Die(x,y);
      bob.show();
      sum = sum + bob.num;
    }
  }
  textSize(20);
  fill(0);
  text("Total sum of dice: " + sum, 300, 625);
}

void mousePressed(){
  redraw();
  sum = 0;
}
