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
Boolean isMoving;
  //class member variable declarations
  Snowflake()
  {
  x= (int)(math.Random()*301);
  y= (int)(math.Random()*301);
 
    isMoving= true;
    
  }
  
 
  void show()
  {
    fill(255);
    ellipse(x,y,5,5);    //your code here
  }
  void lookDown()
  {
    if (y<500 && y>0)
    {
      if(get(x,y+6) != color(0))
      {
       isMoving==false;
      }
    }
  }
  void erase()
  {
   fill(0);
   ellipse(x,y,7,7);
  }
  void move()
  {
    if(isMoving=true){
      y++;  
    }
    else
    {
    }
  }
  void wrap()
  {
    if(y>=495)
    {
      y=0;
      x=(int)(math.Random()*301);
    }
  }
}
