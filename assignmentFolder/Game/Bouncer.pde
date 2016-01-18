class Bouncer
{
  PVector sideLenght;
  PVector Position;
  PVector nextDirectionX;
  PVector nextDirectionY;
  float Height, Width;
  
  Bouncer()
  {
    Height = 730;
    Width = 550;
    Position = new PVector(Width/2, (Height * .75));
    sideLenght = new PVector(100, 40);
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


    if (key == 'w' && (Position.y - (sideLenght.y / 2)) > (Height / 2))
    {
      Position.sub(nextDirectionY);
    }

    if (key == 'a' && (Position.x -  sideLenght.x / 2) > 0 )
    {
      Position.sub(nextDirectionX);
    }

    if (key == 's' && Position.y + (sideLenght.y / 2) < height)
    {
      Position.add(nextDirectionY);
    }

    if (key == 'd' && (Position.x + (sideLenght.x / 2)) < width)
    {
      Position.add(nextDirectionX);
    }
  }
}