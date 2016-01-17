Bouncer bouncer = new Bouncer();

float speed = 4;

void setup(){
 size(550, 730); 
}


void draw(){ //<>//
  background(255);
  
  bouncer.display();
  bouncer.move();
}