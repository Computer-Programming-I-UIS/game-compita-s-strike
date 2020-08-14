Personajes principal;
void setup(){
  size(1280,720);
  principal=new Personajes (width/2,height/2,20,30);
}
void draw(){
  background(0);
principal.move();
principal.display();
}
