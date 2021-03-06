import processing.sound.*; //<>//

SoundFile menu_mus;
SoundFile inGame_mus;
SoundFile endGame_mus;
SoundFile bounce_mus;

Bouncer bouncer = new Bouncer();
Ball ball = new Ball();
Menu menu = new Menu();
Bumper bumper = new Bumper();

//Creates background variables
PImage inGame_back;
PImage menu_back;

//Creating and initalise booleans
boolean endGame = false;
boolean gameMenu = true;
boolean info = false;
boolean inGame1 = false;
boolean inGame2 = false;
boolean store = false;
boolean newGame = false;
boolean stop = false;
boolean play = true;
boolean playEnd = true;
boolean playBounce = true;
boolean playInGame = true;

//Creating and initalise variables
float speed = 3;
int score;
int level = 5;
int money;
int total;
PVector Boundary;
int cost;
int number = 10;
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
  
  //Initalises all PVectors 
  Boundary = new PVector(650, 500);
  bouncerdefCol = new PVector(255, 255, 255);
  
  //Initalises all colours
  balldefCol = new PVector(255, 255, 255);
  red = new PVector(255, 29, 5);
  blue = new PVector(5, 115, 250);
  yellow = new PVector(234, 240, 62);
  pink = new PVector(255, 79, 226);
  black = new PVector(0, 0, 0);

  //Initalises backgrounds
  inGame_back = loadImage("inGame_background.jpg");
  menu_back = loadImage("menu_background.gif");
  
  //Initalises sounds
  menu_mus = new SoundFile(this, "menuMusic.mp3");
  inGame_mus = new SoundFile(this, "inGameMusic.mp3");
  endGame_mus = new SoundFile(this, "EndGame.mp3");
  bounce_mus = new SoundFile(this, "Bounce.mp3");
}


void draw() {
  smooth();
  frameRate(60);
  background(80);

  //Runs the game menu
  if (gameMenu == true)
  {
    background(menu_back);
    menu.display();
    menu.mouseClicked();

    //play music
    if (play == true)
    {
      menu_mus.play();
      play = false;
    }
  }

  //Runs the information screen
  if (info == true)
  {
    menu.information();
    
    //play music
    if (play == true)
    {
      menu_mus.play();
      play = false;
    }
  }

  //Runs the game, which one depends on mouse click
  if (inGame1 == true || inGame2 == true)
  {
    background(inGame_back);
    
    menu_mus.stop();
    
    //Plays music
    if (playInGame == true)
    {
      //println(play);
      inGame_mus.play();
      playInGame = false;

    }
    
    //Resets game once played
    if (newGame == true)
    {
      speed = 3;
      score=0;
      level = 5;
      ball = new Ball();
      bouncer = new Bouncer();
      newGame = false;
      playEnd = true;
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

  //Runs the shop screen
  if (store == true)
  {
    background(menu_back);
    menu.store();
    
    if (play == true)
    {
      menu_mus.play();
      play = false;
    }
  }

  //When game ends if ball hits bottom
  if (endGame == true)
  {
    ball.endOfGame();
    if (playEnd == true)
      endGame_mus.play();
    playEnd = false;
    //menu_mus.stop();
  }
}

//sets variable for the store menu
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