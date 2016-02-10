class Ball
{
  PVector centerPoint;
  PVector radius;
  PVector direction;
  PVector incBallSpeed;
  PVector ballCol;

  Ball()
  {
    Boundary = new PVector(650, 500);
    direction = new PVector(3, -3);
    radius = new PVector(30, 30);
    centerPoint = new PVector(Boundary.y /2, ((Boundary.x * .75) - radius.x));
    incBallSpeed = new PVector(.5, -.5);
  }

  void display()
  {
    fill(balldefCol.x, balldefCol.y, balldefCol.z);
    stroke(0);
    ellipse(centerPoint.x, centerPoint.y, radius.x, radius.y);
  }

  void move()
  {
    centerPoint.add(direction);
  }

  void paddleBounce(PVector topLeft, PVector topRight, PVector side)
  {
    //Checks if ball hits between the top part of the bouncer bar
    if (centerPoint.x > (topLeft.x - 10) && centerPoint.x < (topRight.x + 10) && (centerPoint.y + (radius.y / 2)) == topLeft.y)
    {
      direction.y =  - direction.y;
      map(dist((topLeft.x + (side.x / 2)), topLeft.y, centerPoint.x, centerPoint.y + (radius.y / 2)), 0, (side.x /2), 1, 20);
      score++;

      //Change Level and Speed
      if (score == level)
      {
        println("No");
        level = level + 5;
        direction.add(incBallSpeed);
        speed = speed + 1;
      }
    }

    if (inGame1 == true)
    {
      if ((centerPoint.x + (radius.x / 2)) < 0)
      {
        centerPoint.x = Boundary.y;
      }

      if ((centerPoint.x + (radius.x / 2)) > Boundary.y)
      {
        centerPoint.x = 0;
      }
    }

    //Check if ball hits top and bounce back
    if ((centerPoint.y - (radius.y / 2)) <= 0)
    {
      direction.y = -direction.y;
    }

    if (inGame2 == true)
    {
      //Check if ball hits sides and bounce back
      if (centerPoint.x >= (width - (radius.x / 2)) || centerPoint.x <= (radius.x / 2))
      {
        direction.x = - direction.x;
      }
    }

    //If touched bottom
    if ((centerPoint.y + radius.y) >= (Boundary.x + 90))
    {
      inGame_mus.stop();
      endGame = true;
    }
  }

  void endOfGame()
  {
    float lineBreak = Boundary.x * .25; 
    
    money = score * 2;
    if (stop == false)
    {
      total = total + money;
      stop = true;
    }

    textAlign(CENTER);
    textSize(40);
    text("Game Over", Boundary.y /2, lineBreak);
    lineBreak = lineBreak + 40;
    textSize(20);
    text("Your level was: " + (level / 5), Boundary.y /2, lineBreak);
    lineBreak = lineBreak + 20;
    text("Your score was: " + score, Boundary.y /2, lineBreak);
    lineBreak = lineBreak + 20;
    text("Total money earned: " + (score * 2), Boundary.y /2, lineBreak);
    lineBreak = lineBreak + 20;
    text("Current total money earned: " + total, Boundary.y /2, lineBreak);
    lineBreak = lineBreak + 60;
    text("Press Enter to return to menu", Boundary.y /2, lineBreak);

    if (keyPressed)
    {
      if (key == ENTER)
      {
        endGame = false;
        inGame2 = false;
        info = false;
        inGame1 = false;
        newGame = true;
        gameMenu = true;
      }
    }
  }
}