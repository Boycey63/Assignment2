Bouncer bouncer = new Bouncer();

float speed = 2;

void setup(){
 size(550, 730); 
}


void draw(){ //<>//
  background(80);
  
  bouncer.OutofBounds();
  bouncer.display();
  bouncer.move();
}