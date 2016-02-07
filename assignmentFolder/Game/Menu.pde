/*class Menu extends GameObjective
{
  Menu()
  {
    Boundary = new PVector(650, 550);
  }
  
  
  
  void display()
  {
    line(0, Boundary.x / 2, Boundary.y, Boundary.x / 2);
    line(0, Boundary.x, Boundary.y, Boundary.x);
    line(Boundary.y / 2, 0, Boundary.y / 2, Boundary.x);
    line(0, 0,   (Boundary.y /2), (Boundary.x /2));
  }
 
  void mouseClicked()
  {
   float  divide = height / 2;
   float  divide2 = width / 2;

  //if(mouseX < (Boundary.y /2) && mouseY < (Boundary.x /2))
  
  
  //Option1
  if(mouseX < (Boundary.y /2) && mouseY < (Boundary.x /2))
  {
    println("hello");
   inGame = true;  
  }

  //Option2
  if (mouseX > divide && mouseY < divide && mouseX > divide2 && mouseY < divide2 )
  {
    
  }

  //Option3
  if (mouseX < divide && mouseY > divide && mouseX < divide2 && mouseY > divide2 )
  {
    
  }

  //Option4
  if (mouseX > divide && mouseY > divide && mouseX > divide2 && mouseY > divide2 )
  {
    
  }
}
}*/