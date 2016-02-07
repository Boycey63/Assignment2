class Ball extends GameObjective
{
  PVector centerPoint;
  PVector radius;
  PVector direction;
  PVector increaseSpeed;
  int bounceCount;

  Ball()
  {
    bounceCount = 0;
    Boundary = new PVector(730, 550);
    direction = new PVector(3, -3);
    radius = new PVector(30, 30);
    centerPoint = new PVector(Boundary.y /2, ((Boundary.x * .75) - radius.x));
    increaseSpeed = new PVector(5, -5);
  }

  void display()
  {
    fill(0);
    ellipse(centerPoint.x, centerPoint.y, radius.x, radius.y);
  }

  void move()
  {
    centerPoint.add(direction);
  }

  void bounce(PVector topLeft, PVector topRight, PVector side)
  {
    //Checks if ball hits between the top part of the bouncer bar
    if (bounceCount == 0)
    {
      if (centerPoint.x > topLeft.x && centerPoint.x < topRight.x && (centerPoint.y + (radius.y / 2)) == topLeft.y)
      {
        direction.y =  - direction.y;
        map(dist((topLeft.x + (side.x / 2)), topLeft.y, centerPoint.x, centerPoint.y + (radius.y / 2)), 0, (side.x /2), 1, 5);
        score++;
        bounceCount++;
      }
    }

    //Check if ball hits sides and bounce back
    if (centerPoint.x >= (width - (radius.x / 2)) || centerPoint.x <= (radius.x / 2))
    {
      direction.x = - direction.x;
      bounceCount = 0;
    }

    //Check if ball hits top and bounce back
    if ((centerPoint.y - (radius.y / 2)) <= 0)
    {
      direction.y = -direction.y;
      bounceCount = 0;
    }

    //If touched bottom
    //if ((centerPoint.y + radius.y) >= width)
    //{
    //  endGame = true;
    //}
  }

  void newLevel()
  {
    while (level > 10)
    {
      if (score == level)
      {
        level = level + 5;
        direction.add(increaseSpeed);
      }
    }
  }
}