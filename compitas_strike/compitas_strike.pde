

PImage plaza,parcialito,fondomenu,libros,toxi,pegi,esrb;

boolean colision=false,covid=false,menu1=true,menu2=false,tutorial=false,creditos=false, juego=false,muertecov=false,muerteprom=false;
float vida=1250;
Personajes principal;
Personajes profe;
Botones nuevoj;
Botones credit;
Botones tuto;
Botones salir;
Tutorial pags;
toxi toxicombo;
int dif=2;


void setup(){
  size(1280,720);
  principal= new Personajes (width/2,height/2,13,460,34,50);  
  profe= new Personajes(width,int(random(0,height)),1,259,29,42);
  nuevoj= new Botones(440,300,400,50,215,166,0);
  tuto= new Botones(440,370,400,50,215,166,0);
  credit= new Botones(440,440,400,50,215,166,0);
  salir = new Botones(440, 510,400,50,215,166,0);
  pags= new Tutorial(0,1,false,false);
  toxicombo = new toxi();
   
  
}
void draw(){
  
  if (menu1==true){
  menu1();
  
  
  }
  else if(menu2==true){
  menu2();
  }
  else if (tutorial==true){
 pags.paginas();
    
 }
     
    
    
  
  else if(juego==true){
    
      parcialito= loadImage("parcial.png");
      plaza= loadImage("plazache.jpeg");
     image(plaza,0,0);
     copy(parcialito,9,4,19,20,20,20,19,20);
   timer();
    promedio();
    toxicombo.display();
    profe.moveProfes();
    profe.display();
    principal.movePerso();
    principal.display();
    principal.colision();
    barraestudio();
    barras();
   if(toxicombo.comer()==true){
    toxicombo = new toxi();
    if(vida<=1230){
    vida+=20;}
    else{
    vida+=1250-vida;}
    }
  }
  else if(creditos==true){
  creditos();
  }
 
     
  
}
void keyPressed(){
  if(key==CODED)principal.keycontrol(keyCode, true);
  if(key!=CODED)pags.controls(key,true);
   
}
void keyReleased(){
 if(key==CODED)principal.keycontrol(keyCode, false);
 if(key!=CODED)pags.controls(key,false);
}
void barras(){
  noFill();
  stroke(0,250,0);
  strokeWeight(5);
  rectMode(CORNERS);
  rect(900,20,1250,60);
  stroke(0);
  strokeWeight(0);
  fill(0);
  noStroke();
  rect(900,20,vida,60);
  textSize(15);
  text("SALUD",920,85);
  if(covid==true && vida!=900){vida-=dif;}
  if(vida==900&&muerteprom==false)
  {
    principal.velocidadperso=0;
     profe.velocidadprof=0;
     muertecov=true;
     background(0);
     fill(255,0,0);
     textSize(50);
     text("TIENES COVID",(width/2)-150,height/2);
     textSize(30);
     fill(0,0,255);
     text("presiona alguna letra para volver al menú",(width/2)-70,height-30);
     if(keyPressed==true&&key!=CODED){
    menu2=true;
    juego=false;
  setup();}
  
}
  
}
void menu2(){
  setup();
  muertecov=false;
  muerteprom=false;
  background(0);
  textSize(50);
  fill(255);
  text("Elige la dificultad",width/2-200,150);
  text("1.Facil",width/2-300,250);
  text("2.Medio",width/2-300,300);
  text("3.Mastodonte",width/2-300,350);
  textSize(10);
  text("elige con el teclado numerico", (width/2)-60, 400);
  textSize(20);
    text("Presione s para volver al menu principal",width-410,height-50);
  if(keyPressed==true){
      if(key=='1'){
        menu2=false;
        vida=1250;
       profe.velocidadprof=4;
       principal.velocidadperso=10;
       juego=true; 
    }                                                    
      else if(key=='2'){
      menu2=false;
      profe.velocidadprof=5;
      vida=1250;
      principal.velocidadperso=10;
      juego=true; 
      
    }
      else if(key=='3'){
        menu2=false;
        profe.velocidadprof=7;
        vida=1250;
        principal.velocidadperso=10;
        juego=true; 
        
    }
    else if (key=='s'){
      menu2=false;
      menu1=true;
    }
   } 
   
}
void menu1(){
 
  fondomenu=loadImage("unnamed.jpg");
  image(fondomenu,0,0);
  textSize(50);
  fill(255);
   text("Compitas Strike",width/2-200,150);
   nuevoj.dibujar();
   salir.dibujar();
   tuto.dibujar();
   credit.dibujar();
   tuto.tutorial();
   credit.creditos();
   nuevoj.nuevjueg();
   salir.salir();
   
   textSize(30);
   fill(0);
   text("Nuevo Juego",width/2-100,335);
   text("Historia y tutorial",width/2-150,405);
   text("Créditos",width/2-70,475);
   text("Salir",width/2-40,545);
   pegi = loadImage("7.png");
   copy(pegi,0,0,424,518,20,height-140,100,140);
   esrb = loadImage("índice.png");
   copy(esrb,3,4,176,267,140,height-140,100,140);
   
   
   
}
