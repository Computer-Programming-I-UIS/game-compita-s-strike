int time;
float prom=5,estudio=100,nota=5; 

void timer(){
  
  time-=1/frameRate;
  if(time==0){
  prom=(prom+nota)/2;
  time=round(random(700,800));
  estudio=100;
  }
}
void promedio(){
  libros= loadImage("libros.png");
  copy(libros,2,28,436,394,150,570,150,150);
  textSize(50);
  text(prom,width/2-20,60);
  textSize(15);
  text("PROMEDIO",width/2-15,85);
  nota=estudio/110;
  if(prom<3&&muertecov==false){
    background(0);
  principal.velocidadperso=0;
     profe.velocidadprof=0;
     muerteprom=true;
     fill(255,0,0);
     textSize(50);
     text("ESTÁS BOLSA",(width/2)-150,height/2);
     textSize(30);
     fill(0,0,255);
     text("presiona alguna letra para volver al menú",(width/2)-70,height-30);
     if(keyPressed==true&&key!=CODED){
    menu2=true;
    juego=false;
    setup();
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
  if(principal.x>=150&&principal.x<=300 && principal.y<=720&&principal.y>=570 &&estudio!=450){
  estudio++;

  }
}
