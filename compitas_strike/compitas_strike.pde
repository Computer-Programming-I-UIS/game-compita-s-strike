Personajes principal;
 
void setup(){
  size(1280,720);
  principal=new Personajes (width/2,height/2);
  
}
void draw(){
  background(0);
principal.move();
principal.display();

}
void keyPressed(){
  if(key==CODED){principal.keycontrol(keyCode, true);}
  
}
void keyReleased(){
 if(key==CODED){principal.keycontrol(keyCode, false);}
  

}
