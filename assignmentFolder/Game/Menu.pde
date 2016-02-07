class Menu extends GameObjective
{
  Menu()
  {
    Boundary = new PVector(640, 500);
  }
  
  
  
  void display()
  {
    line(0, Boundary.x / 2, Boundary.y, Boundary.x / 2);
    line(0, Boundary.x, Boundary.y, Boundary.x);
    line(Boundary.y / 2, 0, Boundary.y / 2, Boundary.x);
  }
 
  void mouseClicked()
  {
  //Option1 TOP LEFT
  if(mouseX < (Boundary.y / 2) && mouseX > 0 && mouseY < (Boundary.x /2) && mouseY >0)
  {
   inGame = true;  
  }

  //Option2 TOP RIGHT
  if(mouseX > (Boundary.y / 2) && mouseX < Boundary.y && mouseY < (Boundary.x /2) && mouseY >0)
  {
    background(255,0,0);
  }

  //Option3 BOTTOM LEFT
  if (mouseX < (Boundary.y / 2) && mouseX > 0 && mouseY > (Boundary.x / 2) && mouseY < Boundary.x)
  {
    background(0,0,255);
  }

  //Option4 BOTTOM RIGHT
  if (mouseX > (Boundary.y / 2) && mouseX < Boundary.y && mouseY > (Boundary.x / 2) && mouseY < Boundary.x)
  {
    background(0, 255,0);
  }
}
}