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
    text("Play Game (no walls)", Boundary.y * .25, Boundary.x * .25);
    text("Information", Boundary.y * .75, Boundary.x * .25);
    text("Play Game (with walls)", Boundary.y * .25, Boundary.x * .75);
    text("Shop", Boundary.y * .75, Boundary.x * .75);
    textSize(40);
    text("NAME OF GAME",Boundary.y * .5, Boundary.x + 55);
  }

  void information()
  {
    float lineBreak = Boundary.x *.25;

    textAlign(CENTER);
    textSize(40);

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
        inGame2 = true;
      }
    }

    //Option4 BOTTOM RIGHT
    if (mouseX > (Boundary.y / 2) && mouseX < Boundary.y && mouseY > (Boundary.x / 2) && mouseY < Boundary.x)
    {
      if (mousePressed)
      {
        background(0, 255, 0);
      }
    }
  }
}