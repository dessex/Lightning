int startX = 150;
int startY =0;
int endX = 150;
int endY = 0;
void setup()
{
  strokeWeight(2);
  background(0);
  size(300, 300);
}
void draw()
{
  
  stroke(#00F9FF);
  while (endY<300) {
    endX=endX + (int)(Math.random()*18)-9;
    endY=endY + (int)(Math.random()*9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  background(0);
  startX=150;
  startY=0;
  endX=150;
  endY=0;
}
class Cloud{
  int myX;
  int myY;
  Cloud(int x, int y){
    myX=x;
    myY=y;
  }
  void move(){
    myX=myX+1;
  }
  void show()
  {
    fill(#A7BCBC);
    ellipse(myX, myY, 50,50);
  }
}