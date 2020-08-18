Personajes principal;
Personajes profes; 
void setup(){
  size(1280,720);
  principal= new Personajes (width/2,height/2,13,460,34,50);
  profes= new Personajes(2,2,1,259,28,42);
}
void draw(){
  background(0);
principal.movePerso();
principal.display();
profes.moveProfes();
profes.display();

}
void keyPressed(){
  if(key==CODED){principal.keycontrol(keyCode, true);}
  
}
void keyReleased(){
 if(key==CODED){principal.keycontrol(keyCode, false);}
  

}
