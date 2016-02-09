Bouncer bouncer = new Bouncer(); //<>//
Ball ball = new Ball();
Menu menu = new Menu();
Bumper bumper = new Bumper();

boolean endGame = false;
boolean gameMenu = true;
boolean inGame = false;
float speed = 3;
int score;
int level = 5;
PVector Boundary;
ArrayList<GameObjective> content = new ArrayList<GameObjective>();

void setup() {
  size(500, 650);
}


void draw() {
  background(80);

  if (gameMenu == true)
  {
    menu.display();
    menu.mouseClicked();
  }

  if (inGame == true)
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
    textSize(20);
    text("Score:" + score, 20, 20);
    text("Level:" + (level / 5), 40, 40);
  }
}