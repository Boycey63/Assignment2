class Ball extends Bouncer
{
  PVector centerPoint;
  PVector radius;
  PVector bouncePoint;
  PVector direction;

  Ball()
  {
    direction = new PVector(1, 1);
    centerPoint = new PVector(Width / 2, Height /4); 
    radius = new PVector(40, 40);
    bouncePoint = new PVector(centerPoint.x, (centerPoint.y - radius.y));
  }


  void display()
  {
    ellipse(centerPoint.x, centerPoint.y, radius.x, radius.y);
  }
  
  void move()
  {
   centerPoint.x += direction.x;
   centerPoint.y += direction.y;
  }
  
  void bounce()
  {
    //Checks if ball hits between the top part of the bouncer bar
   if(bouncePoint.x > TLcorner.x || bouncePoint.x < TRcorner.x && bouncePoint.y == TLcorner.y)
   {
     direction.x = - direction.x;
   }
   
   if((centerPoint.x + radius.x) >= width || (centerPoint.x - radius.x) <= 0)
   {
     direction.x = - direction.x;
   }
   
   if((centerPoint.y - radius.y) <= 0)
   {
     direction.y = - direction.y;
   }
  }
}


//If touched bottom
//(centerPoint.y + radius.y) >= width