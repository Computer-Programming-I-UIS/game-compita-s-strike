import ddf.minim.*;
Minim menu,tox,parc,cov,bols,ey;
AudioPlayer player1,bolsa,covi;
AudioSample toxic,eyc,parci;


PImage plaza,parcialito,fondomenu,libros,toxi,pegi,esrb,titulo,fondofeo;

boolean colision=false,covid=false,menu1=true,menu2=false, menu3=false,tutorial=false,creditos=false, juego=false,muertecov=false,muerteprom=false,plazct=false,plazche=false,i=false,oldi=false;
float vida=1250;
Personajes principal;
Personajes profe;

Tutorial pags;
toxi toxicombo;
int dif=2,r1=215,r2=215,r3=215,r4=215,g1=166,g2=166,g3=166,g4=166,tempo=0;
void setup(){
  
  size(1280,720);
  menu= new Minim(this);
  tox = new Minim (this);
  ey= new Minim(this);
  bols = new Minim(this);
  parc = new Minim(this);
  cov= new Minim(this);
  player1 = menu.loadFile("menu.wav",1024);
  toxic = tox.loadSample("toxi.mp3",2000);
  eyc = ey.loadSample("cuidadito.mp3",1024);
  bolsa = bols.loadFile("bolsa.mp3",1024);
  covi = cov.loadFile("covid.mp3",1024);
  parci = parc.loadSample("parcial.mp3",1024);
  principal= new Personajes (width/2,height/2,13,460,34,50);  
  profe= new Personajes(width,int(random(0,height)),1,259,29,42);
  pags= new Tutorial(0,1,false,false);
  toxicombo = new toxi();
  
 
}
void draw(){

   tempo-=1/frameRate;
   if(tempo==0){
    player1.rewind();  
    tempo=1000;}
  println(tempo);
  if (menu1==true){
  
  player1.play();
      
      menu1();
    }
  else if(menu3==true){
    menu3();
    
  }
  else if(menu2==true){ 
  player1.play();
      
   menu2();
  }
  else if (tutorial==true){
  player1.pause();
 
  pags.paginas();
    
 }
  
  else if(juego==true){
  parci.shiftGain(parci.getGain(),+100,1024);  
  player1.shiftGain(player1.getGain(),-10,1024);
  eyc.shiftGain(eyc.getGain(),-10,1024); 
   parcialito= loadImage("parcial.png");
  if(plazche==true){
   image(plaza,0,0);}
  else{
    image(fondofeo,0,0);}
   fill(255,191,0);
   rect(0,0,width,100);
   copy(parcialito,9,4,19,20,width/2+70,20,30,30);
   timer();
    
    toxicombo.display();
    profe.moveProfes();
    profe.display();
    principal.movePerso();
    principal.display();
    principal.colision();
    barraestudio();
    barras(); 
     promedio();
   if(toxicombo.comer()==true){
    toxicombo = new toxi();
    if(vida<=1210){
    vida+=40;
    toxic.trigger();}
    else{
    vida+=1250-vida;
  toxic.trigger();}
    }
  }
  else if(creditos==true){
    player1.pause();
  creditos();
  }
 
    
  
}
/**************FUNCIONES PARA BUEN FUNCIONAMIENTO DE LAS TECLAS************/
void keyPressed(){
  if(key==CODED)principal.keycontrol(keyCode, true);
  if(key!=CODED)pags.controls(key,true);
  if(key!=CODED)volvera(key,true);
  
   
}
void keyReleased(){
 if(key==CODED)principal.keycontrol(keyCode, false);
 if(key!=CODED)pags.controls(key,false);
 if(key!=CODED)volvera(key,false);
}

/**********TODO LO RELACIONADO A LA BARRA DE VIDA Y MUERTE POR COVID***********/
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
  if(covid==true && vida!=900){
  vida-=dif;
  }
  if(vida==900&&muerteprom==false)
  {
    principal.velocidadperso=0;
     profe.velocidadprof=0;
     muertecov=true;
     background(0);
     fill(255,0,0);
     textSize(50);
     time=10000;
     eyc.stop();
     
      covi.shiftGain(covi.getGain(),+200,1024);
      player1.pause();
  

   covi.play();
   
     
     text("TIENES COVID",(width/2)-150,height/2);
     text("Sobreviviste a:",(width/2-250),height/2+70);
     text(parciales,width/2+100,height/2+70);
     text("parciales", width/2+160,height/2+70);
     textSize(30);
     fill(0,0,255);
     text("presiona alguna letra para volver al menú",(width/2)-70,height-30);
     if(keyPressed==true&&key!=CODED){
    menu2=true;
    juego=false;
    prom=5;
    nota=5;
    estudio=100;
    time=round(random(700,800));
    
  principal.x=width/2;
  principal.y=height/2;
  profe.x=width;
  profe.y=int(random(0,height));}
  
}
  
}
/*************SELECCIÓN DIFICULTAD************************/
void menu2(){
  cursor(ARROW);
  covi.rewind();
  covi.pause();
  bolsa.rewind();
  bolsa.pause();
  parciales=0;
  principal.x=width/2;
  principal.y=height/2;
  profe.x=width;
  profe.y=int(random(0,height));;
  muertecov=false;
  muerteprom=false;
  background(0);
  textSize(50);
  fill(255);
  text("Elige la dificultad",width/2-200,150);
  text("1.Facil",width/2-300,250);
  text("2.Medio",width/2-300,300);
  text("3.Mastodonte",width/2-300,350);
  textSize(20);
  text("elige con el teclado numerico", (width/2)-60, 400);
  textSize(20);
    text("Presiona s para volver a selección de escenario",width-500,height-50);
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
    if(i==true&&oldi==false){ 
      menu3=true;
      menu2=false;
      }
     oldi=i;
   } 
   
}

/******************************MENÚ PRINCIPAL********************************************/
void menu1(){
  fondomenu=loadImage("fondo-menu.jpeg");
  image(fondomenu,0,0);
  rectMode(CORNER);
  stroke(0);
  fill(r1,g1,0);
  rect(440,300,400,50);
  fill(r2,g2,0);
  rect(440,370,400,50);
  fill(r3,g3,0);
  rect(440,440,400,50);
  fill(r4,g4,0);
  rect(440, 510,400,50);
  if(mouseX>440&&mouseX<840&&mouseY>300&&mouseY<350){
    r1=167;
    g1=129;
    r2=215;
    g2=166;
    r3=215;
    g3=166;
    r4=215;
    g4=166;
    cursor(HAND);
    if(mousePressed){
    menu1=false;
    menu3=true;}
    }
   else if(mouseX>440&&mouseX<840&&mouseY>370&&mouseY<420){
    r2=167;
    g2=129;
    r1=215;
    g1=166;
    r3=215;
    g3=166;
    r4=215;
    g4=166;
    cursor(HAND);
    if(mousePressed){
    menu1=false;
    tutorial=true;
    }}
   else if(mouseX>440&&mouseX<840&&mouseY>440&&mouseY<490){
    r1=215;
    g1=166;
    r2=215;
    g2=166;
    r3=167;
    g3=129;
    r4=215;
    g4=166;
    
    cursor(HAND);
    if(mousePressed){
    menu1=false;
    creditos=true;}}
   else if(mouseX>440&&mouseX<840&&mouseY>510&&mouseY<560){
    r1=215;
    g1=166;
    r2=215;
    g2=166;
    r3=215;
    g3=166;
    r4=167;
    g4=129;
    cursor(HAND);
  
    if(mousePressed){
    exit();}}
  else{
    r1=215;
    g1=166;
    r2=215;
    g2=166;
    r3=215;
    g3=166;
    r4=215;
    g4=166;
    cursor(ARROW);
  }

  titulo=loadImage("titulo2.png");
  
   textSize(30);
   fill(0);
   text("Nuevo Juego",width/2-100,335);
   text("Historia y tutorial",width/2-130,405);
   text("Créditos",width/2-70,475);
   text("Salir",width/2-40,545);
   pegi = loadImage("7.png");
   copy(pegi,0,0,424,518,20,height-140,100,140);
   esrb = loadImage("índice.png");
   copy(esrb,3,4,176,267,140,height-140,100,140);
   image(titulo,width/2-350,150);
}
/***************************SELECCIÓN DE ESCENARIO*******************************************/
void menu3(){
  background(0);
    plaza= loadImage("plazache.png");
    fondofeo=loadImage("dibujo.png");
    textSize(60);
    fill(255);
    text("Selecciona el escenario",(width/2)-300,100 );
    textSize(20);
    text("Plazoleta ''Che''",width/2-450,height/2+150);
    text("Plazoleta Camilo Torres",width/2+250,height/2+150);
    image(plaza,width/2-550,height/2-100, 400,200);
    image(fondofeo,width/2+150,height/2-100, 400,200);
    if(mouseX>=width/2-550&&mouseX<=width/2-150&&mouseY>=height/2-100&&mouseY<=height/2+100){
    cursor(HAND);
      if(mousePressed){
        menu3=false;
        menu2=true;
        plazche=true;
        plazct=false;
    }}
    else if(mouseX>=width/2+150&&mouseX<=width/2+550&&mouseY>=height/2-100&&mouseY<=height/2+100){
    cursor(HAND);
      if(mousePressed){
        menu3=false;
        menu2=true;
        plazct=true;
        plazche=false;
    }}
    else{cursor(ARROW);}
    if(i==true&&oldi==false){ 
      menu1=true;
      menu3=false;
      }
     oldi=i;
     text("Presiona s para volver al menú principal",width-500,height-50);
  }
  void volvera(int s, boolean j){
    if(s=='s'){i=j;}
    
  }
  
