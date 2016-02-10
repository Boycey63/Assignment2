import processing.sound.*; //<>//

SoundFile menu_mus;
SoundFile inGame_mus;
SoundFile endGame_mus;
SoundFile bounce_mus;

Bouncer bouncer = new Bouncer();
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
boolean stop = false;

float speed = 3;
int score;
int level = 5;
int money;
int total;
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

  inGame_back = loadImage("inGame_background.jpg");
  menu_back = loadImage("menu_background.gif");
  
  menu_mus = new SoundFile(this, "menuMusic.mp3");
  inGame_mus = new SoundFile(this, "inGameMusic.mp3");
  endGame_mus = new SoundFile(this, "EndGame.mp3");
  bounce_mus = new SoundFile(this, "Bounce.mp3");
  
}


void draw() {
  smooth();
  frameRate(60);
  background(80);
  
  if (gameMenu == true)
  {
    background(menu_back);
    menu.display();
    menu.mouseClicked();
    menu_mus.loop();
  }

  if (info == true)
  {
    menu.information();
    menu_mus.loop();
  }

  if (inGame1 == true || inGame2 == true)
  {
    background(inGame_back);
    inGame_mus.loop();
    
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
    fill(0);
    text("Score:" + score, 20, 20);
    text("Level:" + (level / 5), 20, 40);
  }

  if (store == true)
  {
    background(menu_back);
    menu.store();
    menu_mus.loop();
  }

  if (endGame == true)
  {
    ball.endOfGame();
    endGame_mus.play();
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