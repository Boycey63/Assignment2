Bouncer bouncer = new Bouncer(); //<>//
Ball ball = new Ball();
Menu menu = new Menu();
Bumper bumper = new Bumper();


PImage inGame_back;
PImage menu_back;
boolean endGame = false;
boolean gameMenu = true;
boolean info = false;
boolean inGame1 = false;
boolean inGame2 = false;
boolean store = false;
boolean newGame = false;
float speed = 3;
int score;
int level = 5;
int money;
PVector Boundary;
int cost;
int number = 10;
ArrayList<GameObjective> content = new ArrayList<GameObjective>();

PVector bouncerdefCol;
PVector balldefCol;
PVector red;
PVector blue;
PVector yellow;
PVector pink;
PVector black;
PVector white;

void setup() {
  size(500, 650);
  Boundary = new PVector(650, 500);
  bouncerdefCol = new PVector(255, 255, 255);
  balldefCol = new PVector(255, 255, 255);
  red = new PVector(255, 29, 5);
  blue = new PVector(5, 115, 250);
  yellow = new PVector(234, 240, 62);
  pink = new PVector(255, 79, 226);
  black = new PVector(0, 0, 0);

  //inGame_back = loadImage("ingame_background.gif");
  //menu_back = loadImage("menu_background.gif");
}


void draw() {
  frameRate(60);
  background(80);
  if (gameMenu == true)
  {
    //background(menu_back);
    menu.display();
    menu.mouseClicked();
  }

  if (info == true)
  {
    menu.information();
  }

  if (inGame1 == true || inGame2 == true)
  {
    //background(inGame_back);

    if (newGame == true)
    {
      speed = 3;
      score=0;
      level = 5;
      ball = new Ball();
      bouncer = new Bouncer();
      newGame = false;
    }

    gameMenu = false;
    bouncer.display();
    bouncer.move();
    ball.display();
    ball.move();
    ball.paddleBounce(bouncer.TLcorner, bouncer.TRcorner, bouncer.sideLenght);
    bumper.bumperBounce(ball.centerPoint, ball.radius, ball.direction);
    bumper.display();
    bumper.move();
    textAlign(LEFT);
    textSize(20);
    text("Score:" + score, 20, 20);
    text("Level:" + (level / 5), 20, 40);
  }

  if (store == true)
  {
    menu.store(ball.ballCol, bouncer.bouncerCol);
  }

  if (endGame == true)
  {
    ball.endOfGame();
  }
}

void keyPressed()
{
  if (store == true)
  {
    if (key >= '0' && key <= '9')
    {
      number = key - '0';
    }
  }
}