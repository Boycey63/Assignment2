class Bouncer
{
  PVector sideLenght;
  PVector Position;
  PVector nextDirectionX;
  PVector nextDirectionY;
  
  Bouncer()
  {
    Position = new PVector(275, (750 * .75));
    sideLenght = new PVector(80, 40);
  }

  void display()
  {
    rectMode(CENTER);

    rect(Position.x, Position.y, sideLenght.x, sideLenght.y);
    fill(0);
  } 
  
  void move()
  {
    nextDirectionX = new PVector(speed, 0);
    nextDirectionY = new PVector(0, speed);


    if (key == 'w')
    {
      Position.sub(nextDirectionY);
    }

    if (key == 'a')
    {
      Position.sub(nextDirectionX);
    }

    if (key == 's')
    {
      Position.add(nextDirectionY);
    }

    if (key == 'd')
    {
      Position.add(nextDirectionX);
    }
  }
}