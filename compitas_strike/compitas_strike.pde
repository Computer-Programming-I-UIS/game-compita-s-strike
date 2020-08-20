int a=1;
PImage plaza,parcialito;
boolean colision=false,covid=false,menu=true;
float vida=1250;
Personajes principal;
//Personajes [] profesizq=new Personajes[a]; 
Personajes [] profesder=new Personajes[a]; 

void setup(){
  size(1280,720);
  principal= new Personajes (width/2,height/2,13,460,34,50);
  for(int i=0;i<profesder.length;i++){
  profesder[i]= new Personajes(width,int(random(0,height)),1,259,29,42);}
  
}
void draw(){
  if(menu==true){
  menu();
  }
  else if(menu==false){
      parcialito= loadImage("parcial.png");
      plaza= loadImage("plazache.jpeg");
     image(plaza,0,0);
     copy(parcialito,9,4,19,20,20,20,19,20);
    for(int i=0;i<profesder.length;i++){
    profesder[i].moveProfes();
    profesder[i].display();}
    principal.movePerso();
    principal.display();
    principal.colision();
    barras();
  }
  
}
void keyPressed(){
  if(key==CODED){principal.keycontrol(keyCode, true);} 
}
void keyReleased(){
 if(key==CODED){principal.keycontrol(keyCode, false);}
}
void barras(){
  noFill();
  stroke(0,250,0);
  strokeWeight(5);
  rectMode(CORNERS);
  rect(800,20,1250,60);
  stroke(0);
  strokeWeight(0);
  fill(0);
  noStroke();
  rect(800,20,vida,60);  
  if(covid==true && vida!=800){vida--;}
  if(vida==800){menu=true;}
  
}
void menu(){
  background(0);
  textSize(50);
  text("Elige la dificultad",width/2-200,150);
  text("1.Facil",width/2-300,250);
  text("2.Medio",width/2-300,300);
  text("3.Mastodonte",width/2-300,350);
  textSize(10);
  text("elige con el teclado numerico", (width/2)-60, 400);
  if(keyPressed==true){
      if(key=='1'){menu=false;}                                                    //aun no hace nada :v solo ponlo al lado de menu
      else if(key=='2'){menu=false;}
      else if(key=='3'){menu=false;}
    }  
  
}
