int time=round(random(500,600));
float prom=5,estudio=100,nota=5; 

void timer(){
  println(time);
  time-=1/frameRate;
  if(time==0){
  prom=(prom+nota)/2;
  time=round(random(2000,4000));
  estudio=100;
  }
}
void promedio(){
  textSize(50);
  text(prom,width/2,60);
  nota=map(estudio,100,450,0,5);
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
  if(dist(150,625,principal.x,principal.y)<150 && estudio!=450){
  estudio++;
  }
}
