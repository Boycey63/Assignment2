class Menu extends GameObjective
{
  void display()
  {
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
    text("NAME OF GAME", Boundary.y * .5, Boundary.x + 55);
  }

  void information()
  {
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

  void store(PVector ballCol, PVector bouncerCol)
  {
    int counter = 1;
    float lineBreak = Boundary.x * .08;
    float xpos1 = Boundary.y * .02;
    float xpos2 = Boundary.y *.5;
    fill(255);
    textAlign(LEFT);
    textSize(40);

    text("Store", xpos1, lineBreak);
    lineBreak = lineBreak + 20;
    textSize(20);
    text("You have " + money + " coins", xpos1, lineBreak);
    lineBreak = lineBreak + 20;
    text("Press a number to choose a colour", xpos1, lineBreak);
    lineBreak = lineBreak + 60;
    textSize(30);
    fill(red.x, red.y, red.z);
    text("Bouncer colour", xpos1, lineBreak);
    text("Ball colour", xpos2, lineBreak);
    lineBreak = lineBreak + 40;
    textSize(30);
    text("(1) Red", xpos1, lineBreak);
    text("(6) Red", xpos2, lineBreak);
    lineBreak = lineBreak + 70;
    text("(2) Yellow", xpos1, lineBreak);
    text("(7) Yellow", xpos2, lineBreak);
    lineBreak = lineBreak + 70;
    text("(3) Blue", xpos1, lineBreak);
    text("(8) Blue", xpos2, lineBreak);
    lineBreak = lineBreak + 70;
    text("(4) Pink", xpos1, lineBreak);
    text("(9) Pink", xpos2, lineBreak);
    lineBreak = lineBreak + 70;
    text("(5) Black", xpos1, lineBreak);
    text("(0) Black", xpos2, lineBreak);
    lineBreak = lineBreak + 70;
    line((xpos2 -10), 124.8, (xpos2 -10), 544.8);

    switch(number)
    {
    case 1:
      {
        counter = 1;
        if(counter == 1)
        {
        cost = 10;
        if (cost <= money && counter == 1)
        {
          //Red
          bouncerdefCol.x = red.x;
          bouncerdefCol.y = red.y;
          bouncerdefCol.z = red.z;
          money = money - cost;
          println("Colour changed");
          counter--;
        } 
        if (cost > money && counter == 1)
        {
          println("Not enough money");
          counter--;
        }
        }
        break;
      }

    case 2:
      {
        counter = 1;
        cost = 12;
        if (cost <= money)
        {
          //Yellow
          bouncerdefCol.x = yellow.x;
          bouncerdefCol.y = yellow.y;
          bouncerdefCol.z = yellow.z;
          money = money - cost;
        } 
        if (cost > money && counter == 1)
        {
          println("Not enough money");
          counter--;
        }
        break;
      }

    case 3:
      {
        counter = 1;
        cost = 14;
        if (cost <= money)
        {
          //Blue
          bouncerdefCol.x = blue.x;
          bouncerdefCol.y = blue.y;
          bouncerdefCol.z = blue.z;
          money = money - cost;
        }
        if (cost > money && counter == 1)
        {
          println("Not enough money");
          counter--;
        }
        break;
      }

    case 4:
      {
        counter = 1;
        cost = 16;
        if (cost <= money)
        {
          //Pink
          bouncerdefCol.x = pink.x;
          bouncerdefCol.y = pink.y;
          bouncerdefCol.z = pink.z;
          money = money - cost;
        }
        if (cost > money && counter == 1)
        {
          println("Not enough money");
          counter--;
        }
        break;
      }

    case 5:
      {
        counter = 1;
        cost = 18;
        if (cost <= money)
        {
          //Green
          bouncerdefCol.x = black.x;
          bouncerdefCol.y = black.y;
          bouncerdefCol.z = black.z;
          money = money - cost;
        }
        if (cost > money && counter == 1)
        {
          println("Not enough money");
          counter--;
        }
        break;
      }
    case 6:
      {
        counter = 1;
        cost = 10;
        if (cost <= money)
        {
          //Red
          balldefCol.x = red.x;
          balldefCol.y = red.y;
          balldefCol.z = red.z;
          money = money - cost;
        }
        if (cost > money && counter == 1)
        {
          println("Not enough money");
          counter--;
        }
        break;
      }
      case 7:
      {
        counter = 1;
        cost = 12;
        if (cost <= money)
        {
          //Yellow
          balldefCol.x = yellow.x;
          balldefCol.y = yellow.y;
          balldefCol.z = yellow.z;
          money = money - cost;
        }
        if (cost > money && counter == 1)
        {
          println("Not enough money");
          counter--;
        }
        break;
      }
      case 8:
      {
        counter = 1;
        cost = 14;
        if (cost <= money)
        {
          //Blue
          balldefCol.x = blue.x;
          balldefCol.y = blue.y;
          balldefCol.z = blue.z;
          money = money - cost;
        }
        if (cost > money && counter == 1)
        {
          println("Not enough money");
          counter--;
        }
        break;
      }
      case 9:
      {
        counter = 1;
        cost = 16;
        if (cost <= money)
        {
          //Pink
          balldefCol.x = pink.x;
          balldefCol.y = pink.y;
          balldefCol.z = pink.z;
          money = money - cost;
        }
        if (cost > money && counter == 1)
        {
          println("Not enough money");
          counter--;
        }
        break;
      }
      case 0:
      {
        counter = 1;
        cost = 18;
        if (cost <= money)
        {
          //Black
          balldefCol.x = black.x;
          balldefCol.y = black.y;
          balldefCol.z = black.z;
          money = money - cost;
        }
        if (cost > money && counter == 1)
        {
          println("Not enough money");
          counter--;
        }
        break;
      }


    default:
      {
        println("Incorrect value entered");
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
        store = true;
      }
    }
  }
}