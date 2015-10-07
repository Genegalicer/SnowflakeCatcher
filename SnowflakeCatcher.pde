Snowflake[]Snow;
void setup()
{
  size(500, 500);
  background(0,0,0);
  Snow=new Snowflake[90];
  for (int i = 0; i < Snow.length; i++)
  {
    Snow[i]= new Snowflake();
  }
}
void draw()
{
  for (int i=0; i<Snow.length; i++)
  {
    Snow[i].erase();
    Snow[i].lookDown();
    Snow[i].move();
    Snow[i].wrap();
    Snow[i].show();
  }
}
void mouseDragged()
{
  int c=(int)(Math.random()*241);
  int c1=(int)(Math.random()*241);
  int c2=(int)(Math.random()*241);
  stroke(c, c1, c2);
  rect(pmouseX, pmouseY,10,10);
}

class Snowflake
{
  int x, y;
  Boolean isMoving;
  //class member variable declarations
  Snowflake()
  {
    x= (int)(Math.random()*501);
    y= (int)(Math.random()*501);
    isMoving= true;
  }


  void show()
  {
    fill(255);
    noStroke();
    ellipse(x, y, 5, 5);
  }
  void lookDown()
  {
    if (y>0 && y<450 && get(x, y+10) != color(0,0,0))
    {
      isMoving=false;
    } else
    {
      isMoving = true;
    }
  }
  void erase()
  {
    fill(0);
    noStroke();
    ellipse(x, y, 8, 8);
  }
  void move()
  {
    if (isMoving==true) {
      y++;
    } else
    {
    }
  }
  void wrap()
  {
    if (y>=495)
    {
      y=0;
      x=(int)(Math.random()*501);
    }
  }
}
