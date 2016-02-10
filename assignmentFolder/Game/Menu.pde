class Menu
{
  void display()
  {
    stroke(0);
    Boundary = new PVector(560, 500);
    line(0, Boundary.x / 2, Boundary.y, Boundary.x / 2);
    line(0, Boundary.x, Boundary.y, Boundary.x);
    line(Boundary.y / 2, 0, Boundary.y / 2, Boundary.x);
    textAlign(CENTER);
    textSize(20);
    fill(255);
    text("Play Game (no walls)", Boundary.y * .25, Boundary.x * .25);
    text("Information", Boundary.y * .75, Boundary.x * .25);
    text("Play Game (with walls)", Boundary.y * .25, Boundary.x * .75);
    text("Shop", Boundary.y * .75, Boundary.x * .75);
    textSize(40);
    text("ULTIMATE PONG", Boundary.y * .5, Boundary.x + 55);
  }

  void information()
  {
    background(menu_back);
    float lineBreak = Boundary.x *.25;
    stroke(255);
    textAlign(CENTER);
    textSize(40);
    fill(255);
    text("Information", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 20;
    textSize(20);
    text("The bouncer may go any direction but UP", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 40;
    text("Keys:", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 20;
    text("A = LEFT", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 20;
    text("D = RIGHT", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 20;
    text("S = DOWN", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 40;
    text("Levels:", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 20;
    text("As you build up score the level increases", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 20;
    text("with every increase the ball will increase speed ", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 20;
    text("and the computer bumper might increase speed", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 40;
    text("Money:", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 20;
    text("Every score point will count as 2 pieces of money", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 20;
    text("With your money you can buy new bouncer colours", (Boundary.y / 2), lineBreak);
    lineBreak= lineBreak + 40;
    text("Press enter to go back to menu", (Boundary.y / 2), lineBreak);

    if (keyPressed)
    {
      if (key == ENTER)
      {
        inGame2 = false;
        info = false;
        inGame1 = false;
        gameMenu = true;
      }
    }
  }

  void store()
  {
    float lineBreak = Boundary.x * .08;
    float xpos1 = Boundary.y * .02;
    float xpos2 = Boundary.y *.5;
    fill(255);
    textAlign(LEFT);
    textSize(40);

    text("Store", xpos1, lineBreak);
    lineBreak = lineBreak + 20;
    textSize(20);
    text("You have " + total + " coins", xpos1, lineBreak);
    lineBreak = lineBreak + 20;
    text("Press a number to choose a colour", xpos1, lineBreak);
    lineBreak = lineBreak + 60;
    textSize(30);
    fill(red.x, red.y, red.z);
    text("Bouncer colour", xpos1, lineBreak);
    text("Ball colour", xpos2, lineBreak);
    lineBreak = lineBreak + 40;
    textSize(30);
    text("(1) Red = 10", xpos1, lineBreak);
    text("(6) Red = 10", xpos2, lineBreak);
    lineBreak = lineBreak + 70;
    text("(2) Yellow = 20", xpos1, lineBreak);
    text("(7) Yellow = 20", xpos2, lineBreak);
    lineBreak = lineBreak + 70;
    text("(3) Blue = 30", xpos1, lineBreak);
    text("(8) Blue = 30", xpos2, lineBreak);
    lineBreak = lineBreak + 70;
    text("(4) Pink = 40", xpos1, lineBreak);
    text("(9) Pink = 40", xpos2, lineBreak);
    lineBreak = lineBreak + 70;
    text("(5) Black = 50", xpos1, lineBreak);
    text("(0) Black = 50", xpos2, lineBreak);
    lineBreak = lineBreak + 140;
    fill(255);
    text("Press Enter to return to menu", xpos1, lineBreak);
    stroke(red.x, red.y, red.z);
    line((xpos2 -10), 124.8, (xpos2 -10), 474.8);

    switch(number)
    {
    case 1:
      {
          cost = 10;
          if (cost <= total)
          {
            //Red
            bouncerdefCol.x = red.x;
            bouncerdefCol.y = red.y;
            bouncerdefCol.z = red.z;
            total = total - cost;
            number = 10;
          } 
          if (cost > total)
          {
            println("Not enough money");
            number = 10;
          }
        break;
      }

    case 2:
      {
          cost = 20;
          if (cost <= total)
          {
            //Yellow
            bouncerdefCol.x = yellow.x;
            bouncerdefCol.y = yellow.y;
            bouncerdefCol.z = yellow.z;
            total = total - cost;
            number = 10;
          } 
          if (cost > total)
          {
            println("Not enough money");
            number = 10;
          }
        break;
      }

    case 3:
      {
            cost = 30;
            if (cost <= total)
            {
              //Blue
              bouncerdefCol.x = blue.x;
              bouncerdefCol.y = blue.y;
              bouncerdefCol.z = blue.z;
              total = total - cost;
              number = 10;
            }
            if (cost > total)
            {
              println("Not enough money");
              number = 10;
            }
        break;
      }

    case 4:
      {
          cost = 40;
          if (cost <= total)
          {
            //Pink
            bouncerdefCol.x = pink.x;
            bouncerdefCol.y = pink.y;
            bouncerdefCol.z = pink.z;
            total = total - cost;
            number = 10;
          }
          if (cost > total)
          {
            println("Not enough money");
            number = 10;
          }
        break;
      }

    case 5:
      {
        cost = 50;
        if (cost <= total)
        {
          //Green
          bouncerdefCol.x = black.x;
          bouncerdefCol.y = black.y;
          bouncerdefCol.z = black.z;
          total = total - cost;
          number = 10;
        }
        if (cost > total)
        {
          println("Not enough money");
          number = 10;
        }
        break;
      }
      
    case 6:
      {
        cost = 10;
        if (cost <= total)
        {
          //Red
          balldefCol.x = red.x;
          balldefCol.y = red.y;
          balldefCol.z = red.z;
          total = total - cost;
          number = 10;
        }
        if (cost > total)
        {
          println("Not enough money");
          number = 10;
        }
        break;
      }
      
    case 7:
      {
        cost = 20;
        if (cost <= total)
        {
          //Yellow
          balldefCol.x = yellow.x;
          balldefCol.y = yellow.y;
          balldefCol.z = yellow.z;
          total = total - cost;
          number = 10;
        }
        if (cost > total)
        {
          println("Not enough money");
          number = 10;
        }
        break;
      }
      
    case 8:
      {
        cost = 30;
        if (cost <= total)
        {
          //Blue
          balldefCol.x = blue.x;
          balldefCol.y = blue.y;
          balldefCol.z = blue.z;
          total = total - cost;
          number = 10;
        }
        if (cost > total)
        {
          println("Not enough money");
          number = 10;
        }
        break;
      }
      
    case 9:
      {
        cost = 40;
        if (cost <= total)
        {
          //Pink
          balldefCol.x = pink.x;
          balldefCol.y = pink.y;
          balldefCol.z = pink.z;
          total = total - cost;
          number = 10;
        }
        if (cost > total)
        {
          println("Not enough money");
          number = 10;
        }
        break;
      }
      
    case 0:
      {
        cost = 50;
        if (cost <= total)
        {
          //Black
          balldefCol.x = black.x;
          balldefCol.y = black.y;
          balldefCol.z = black.z;
          total = total - cost;
          number = 10;
        }
        if (cost > total)
        {
          println("Not enough money");
          number = 10;
        }
        break;
      }


    default:
      {
        break;
      }
    }

    if (keyPressed)
    {
      if (key == ENTER)
      {
        inGame2 = false;
        info = false;
        inGame1 = false;
        store = false;
        gameMenu = true;
      }
    }
  }

  void mouseClicked()
  {
    //Option1 TOP LEFT
    if (mouseX < (Boundary.y / 2) && mouseX > 0 && mouseY < (Boundary.x /2) && mouseY >0)
    {
      if (mousePressed)
      {        
        gameMenu = false;
        info = false;
        inGame2 = false;
        store = false;
        stop = false;
        inGame1 = true;
      }
    }

    //Option2 TOP RIGHT
    if (mouseX > (Boundary.y / 2) && mouseX < Boundary.y && mouseY < (Boundary.x /2) && mouseY >0)
    {
      if (mousePressed)
      {
        gameMenu = false;
        inGame1 = false;
        inGame2 = false;
        store = false;
        stop = false;
        info = true;
      }
    }

    //Option3 BOTTOM LEFT
    if (mouseX < (Boundary.y / 2) && mouseX > 0 && mouseY > (Boundary.x / 2) && mouseY < Boundary.x)
    {
      if (mousePressed)
      {
        gameMenu = false;
        inGame1 = false;
        info = false;
        store = false;
        stop = false;
        inGame2 = true;
      }
    }

    //Option4 BOTTOM RIGHT
    if (mouseX > (Boundary.y / 2) && mouseX < Boundary.y && mouseY > (Boundary.x / 2) && mouseY < Boundary.x)
    {
      if (mousePressed)
      {
        gameMenu = false;
        inGame1 = false;
        info = false;
        inGame2 = false;
        stop = false;
        store = true;
      }
    }
  }
}