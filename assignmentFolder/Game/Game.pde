Bouncer bouncer = new Bouncer(); //<>//
Ball ball = new Ball();
Menu menu = new Menu();
Bumper bumper = new Bumper();

boolean endGame = false;
boolean gameMenu = true;
boolean info = false;
boolean inGame1 = false;
boolean inGame2 = false;
boolean newGame = false;
float speed = 3;
int score;
int level = 5;
PVector Boundary;
ArrayList<GameObjective> content = new ArrayList<GameObjective>();

void setup() {
  size(500, 650);
  Boundary = new PVector(650, 500);
}


void draw() {
  frameRate(60);
  background(80);

  if (gameMenu == true)
  {
    menu.display();
    menu.mouseClicked();
    
    if(newGame == true)
    {
     ball.reset();
     bouncer.reset();
     bumper.reset();
     newGame = false;
    }
  }
  
  if(info == true)
  {
    menu.information();   
  }

  if (inGame1 == true || inGame2 == true)
  {
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
  
 if(endGame == true)
 {
    ball.endOfGame(); 
 }
}