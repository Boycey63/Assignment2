Bouncer bouncer = new Bouncer();
Ball ball = new Ball();

PVector Boundary;
ArrayList<GameObjective> content = new ArrayList<GameObjective>();

void setup(){
 size(550, 730); 
}


void draw(){ //<>//
  background(80);
  
  bouncer.display();
  bouncer.move();
  ball.display();
  ball.move();
  ball.bounce(bouncer.TLcorner, bouncer.TRcorner, bouncer.sideLenght);
}