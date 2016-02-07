Bouncer bouncer = new Bouncer();
Ball ball = new Ball();
//Menu menu = new Menu();

//boolean endGame = false;
//boolean gameMenu = true;
//boolean inGame = true;
int score;
PVector Boundary;
ArrayList<GameObjective> content = new ArrayList<GameObjective>();

void setup(){
 size(550, 730);
}


void draw(){ //<>//
  background(80);
  
  /*if(gameMenu == true)
  {
   menu.display();
   menu.mouseClicked();
   //inGame = false;
  }*/
  
  //if(inGame == true)
  //{
    //gameMenu = false;
    bouncer.display();
    bouncer.move();
    ball.display();
    ball.move();
    ball.bounce(bouncer.TLcorner, bouncer.TRcorner, bouncer.sideLenght);
    textSize(20);
    text("Score:" + score, 20, 20);
  //}
}