int time=round(random(700,800)),parciales=0;
float prom=5,estudio=100,nota=5; 


void timer(){
  libros= loadImage("libros.png");
  copy(libros,2,28,436,394,150,570,150,150);
  time-=1/frameRate;
  if(time==0){
  prom=(prom+nota)/2;
  time=round(random(700,800));
  estudio=100;
  parciales++;
  }
  else if(time==80){
  parci.trigger();}
}
void promedio(){
  
  textSize(50);
  fill(0);
  text(prom,width/2-155,60);
  text(parciales,width/2+110,60);
  textSize(15);
  text("PARCIALES",width/2+85,85);
  text("PROMEDIO",width/2-135,85);
  nota=map(estudio,100,450,0,5);
  if(prom<3&&muertecov==false){
    background(0);
    bolsa.shiftGain(bolsa.getGain(),+20,1024);
    player1.pause();
    bolsa.play();
  principal.velocidadperso=0;
     profe.velocidadprof=0;
     muerteprom=true;
     fill(255,0,0);
     textSize(50);
     text("ESTÁS BOLSA",(width/2)-150,height/2);
     text("Sobreviviste a:",(width/2-250),height/2+70);
     text(parciales-1,width/2+100,height/2+70);
     text("parciales", width/2+160,height/2+70);
     bolsa.play();
     eyc.stop();
     time=10000;
     textSize(30);
     fill(0,0,255);
     text("presiona alguna letra para volver al menú",(width/2)-70,height-30);
     if(keyPressed==true&&key!=CODED){
    menu2=true;
    juego=false;
    time=round(random(700,800));
    principal.x=width/2;
  principal.y=height/2;
  profe.x=width;
  profe.y=int(random(0,height));
    prom=5;
    nota=5;
    }
  }
}
void barraestudio(){
  noFill();
  stroke(0,250,0);
  strokeWeight(5);
  rectMode(CORNERS);
  rect(100,20,450,60);
  stroke(0);
  strokeWeight(0);
  fill(0);
  noStroke();
  rect(100,20,estudio,60);
  textSize(15);
  text("ESTUDIO",120,85);
  if(principal.x>=150&&principal.x<=300 && principal.y<=720&&principal.y>=570 &&estudio<=444){
  estudio+=1.5;}
  else if(principal.x>=150&&principal.x<=300 && principal.y<=720&&principal.y>=570 &&estudio>444&&estudio!=450){
  estudio++;}

  
}
