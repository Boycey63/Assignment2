class Bouncer
{
  PVector sideLenght;
  PVector Position;
  
  Bouncer()
  {
    Position = new PVector(275, (750 * .75));
    sideLenght = new PVector(80, 40);
  }

  void display()
  {
    rectMode(CENTER);

    rect(Position.x, Position.y, sideLenght.x, sideLenght.y);
  } 
}