class Bouncer extends GameObjective
{
  PVector sideLenght;
  PVector Position;
  PVector nextDirectionX;
  PVector nextDirectionY;
  PVector TLcorner, TRcorner, BLcorner, BRcorner;

  Bouncer()
  {
    Boundary = new PVector(650, 500);
    Position = new PVector(Boundary.y /2, (Boundary.x * .75));
    sideLenght = new PVector(100, 30);
    this.TLcorner = new PVector(Position.x - (sideLenght.x / 2), Position.y - (sideLenght.y / 2));
    this.TRcorner = new PVector(TLcorner.x + sideLenght.x, TLcorner.y);
    this.BLcorner = new PVector(TLcorner.x, (TLcorner.y + sideLenght.y));
    this.BRcorner = new PVector(TRcorner.x, BLcorner.y);
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

    if (key == 's' && Position.y + (sideLenght.y / 2) < (height - 30))
    {
      Position.add(nextDirectionY);
      TLcorner.add(nextDirectionY);
      TRcorner.add(nextDirectionY);
    }

    if (key == 'a' && (Position.x -  sideLenght.x / 2) > 0)
    {
      Position.sub(nextDirectionX);
      TLcorner.sub(nextDirectionX);
      TRcorner.sub(nextDirectionX);
    }

    if (key == 'd' && (Position.x + (sideLenght.x / 2)) < width)
    {
      Position.add(nextDirectionX);
      TLcorner.add(nextDirectionX);
      TRcorner.add(nextDirectionX);
    }
    
    
    //println(Position.x, Position.y);
    //println(TLcorner);
    //println(TRcorner.x, TLcorner.y);
  }
  
  void reset()
  {
    Boundary = new PVector(650, 500);
    Position = new PVector(Boundary.y /2, (Boundary.x * .75));
    sideLenght = new PVector(100, 30);
    TLcorner = new PVector(Position.x - (sideLenght.x / 2), Position.y - (sideLenght.y / 2));
    TRcorner = new PVector(TLcorner.x + sideLenght.x, TLcorner.y);
    BLcorner = new PVector(TLcorner.x, (TLcorner.y + sideLenght.y));
    BRcorner = new PVector(TRcorner.x, BLcorner.y);
  }
}