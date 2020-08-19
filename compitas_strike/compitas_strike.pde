int a=2;
PImage plaza;
Personajes principal;
Personajes [] profesizq=new Personajes[a]; 
Personajes [] profesder=new Personajes[a]; 

void setup(){
  size(1280,720);
  principal= new Personajes (width/2,height/2,13,460,34,50);
  for(int j=0;j<profesizq.length;j++){
  profesizq[j]= new Personajes(0,int(random(0,height)),1,259,29,42);}
  for(int i=0;i<profesder.length;i++){
  profesder[i]= new Personajes(width,int(random(0,height)),1,259,29,42);}
  
}
void draw(){
  plaza= loadImage("plazache.jpeg");
 image(plaza,0,0);

for(int j=0;j<profesizq.length;j++){
profesizq[j].moveProfes();
profesizq[j].display();}
for(int i=0;i<profesder.length;i++){
profesder[i].moveProfes();
profesder[i].display();}
principal.movePerso();
principal.display();
}
void keyPressed(){
  if(key==CODED){principal.keycontrol(keyCode, true);}
  
}
void keyReleased(){
 if(key==CODED){principal.keycontrol(keyCode, false);}
  

}
