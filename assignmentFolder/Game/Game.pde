Bouncer bouncer = new Bouncer();
Ball ball = new Ball();
Menu menu = new Menu();

boolean endGame = false;
boolean gameMenu = true;
boolean inGame = false;
float speed = 3;
int score;
int level = 5;
PVector Boundary;
ArrayList<GameObjective> content = new ArrayList<GameObjective>();

void setup(){
 size(500, 700);
}


void draw(){ //<>//
  background(80);
  
  if(gameMenu == true)
  {
   menu.display();
   menu.mouseClicked();
   //inGame = false;
  }
  
  if(inGame == true)
  {
    gameMenu = false;
    bouncer.display();
    bouncer.move();
    ball.display();
    ball.move();
    ball.bounce(bouncer.TLcorner, bouncer.TRcorner, bouncer.sideLenght);
    //ball.newLevel();
    textSize(20);
    text("Score:" + score, 20, 20);
    text("Level:" + (level / 5), 40, 40);
  }
}