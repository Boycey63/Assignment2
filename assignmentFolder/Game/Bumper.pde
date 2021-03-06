class Bumper extends Bouncer
{
  //LorR is a variable that changes the direction of the bumper
  int LorR;
  PVector defCol;

  Bumper()
  {
    LorR = 0;
    Boundary = new PVector(650, 500);
    sideLenght.x = random(70, 100);
    sideLenght.y = 2;
    Position.y = round(random(Boundary.x * .1, Boundary.x * .5));
    this.TLcorner = new PVector(Position.x - (sideLenght.x / 2), Position.y - (sideLenght.y / 2));
    this.TRcorner = new PVector(TLcorner.x + sideLenght.x, TLcorner.y);
    this.BLcorner = new PVector(TLcorner.x, (TLcorner.y + sideLenght.y));
    this.BRcorner = new PVector(TRcorner.x, BLcorner.y);
    defCol = new PVector(255, 255, 255);
  }

  void display()
  {
    rectMode(CENTER);
    fill(defCol.x, defCol.y, defCol.z);
    stroke(0, 255, 229);
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


  void bumperBounce(PVector ballCenter, PVector rad, PVector dir)
  { 
    //Bounces ball if the radius hit between the top and bottom
    if (ballCenter.x > TLcorner.x &&  ballCenter.x < TRcorner.x && (ballCenter.y - (rad.y /2)) < BLcorner.y)
    { 
      dir.y =  - dir.y;
    }

    if (ballCenter.x > TLcorner.x &&  ballCenter.x < TRcorner.x && (ballCenter.y + (rad.y /2)) < TRcorner.y)
    {
      dir.y =  - dir.y;
    }
  }
}