class Bumper extends Bouncer
{
  int LorR;

  Bumper()
  {
    LorR = 0;
    Boundary = new PVector(650, 500);
    sideLenght.x = random(50, 150);
    Position.y = random(50, 100);
  }

  void display()
  {
    rectMode(CENTER);
    fill(255, 0, 0);
    rect(Position.x, Position.y, sideLenght.x, sideLenght.y, 20);
  }

  void move()
  {
    nextDirectionX = new PVector(speed, 0);
    nextDirectionY = new PVector(0, speed);

    if (LorR == 0 && (Position.x -  sideLenght.x / 2) > 0)
    {
      Position.sub(nextDirectionX);
      TLcorner.sub(nextDirectionX);
      TRcorner.sub(nextDirectionX);

      if ((Position.x -  sideLenght.x / 2) < 1)
      {
        LorR = 1;
      }
    }

    if (LorR == 1 && (Position.x + (sideLenght.x / 2)) <= Boundary.y)
    {
      Position.add(nextDirectionX);
      TLcorner.add(nextDirectionX);
      TRcorner.add(nextDirectionX);

      if ((Position.x + (sideLenght.x / 2)) > Boundary.y - 1)
      {
        LorR = 0;
      }
    }
  }
}