Bouncer bouncer = new Bouncer();
Ball ball = new Ball();

float speed = 4;

void setup(){
 size(550, 730); 
}


void draw(){ //<>//
  background(80);
  
  bouncer.display();
  bouncer.move();
  ball.display();
  ball.move();
  ball.bounce();
}