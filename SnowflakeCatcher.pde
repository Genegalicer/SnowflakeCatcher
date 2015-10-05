void setup()
{
  background(0,0,0);
 size(500);
  //your code here
}
void draw()
{
  //your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
int x,y;

  //class member variable declarations
  Snowflake()
  {
  x=7;
  y=7;
    //class member variable initializations
  }
  Boolean isMoving;
  x= (int)(math.Random()*300);
  y= (int)(math.Random()*300);
  isMoving = true;
  void show()
  {
  ellipse(x,y,7,7);
    //your code here
  }
  void lookDown()
  {
    if (0<y<500){
    isMoving==false;
  }
    fill(255);
    ellipse(x,y,5,5);
  }
  void erase()
  {
   fill(0);
   ellipse(x,y,7,7);//your code here
  }
  void move()
  {
    if  isMoving=true;{
      y++;  
  }
  void wrap()
  {
    //your code here
  }
}

