class Botones{
  int x,y,anch,larg,R,G,B;
  Botones(int tempx, int tempy, int tempanch, int templarg,int tempR,int tempG, int tempB){
  x=tempx;
  y=tempy;
  anch=tempanch;
  larg=templarg;
  R=tempR;
  G=tempG;
  B=tempB;
  }
  void dibujar(){
   fill(R,G,B);
  rect(x,y,anch,larg);
  if(mouseX>x&&mouseX<x+anch&&mouseY>y&&mouseY<y+larg){
    R=167;
    G=129;
  }
  else{
    R=215;
    G=166;
  }
  }
  void tutorial(){
    if(mouseX>x&&mouseX<x+anch&&mouseY>y&&mouseY<y+larg&&mousePressed){
    menu1=false;
    tutorial=true;
    }
   
  }
  void creditos(){
    if(mouseX>x&&mouseX<x+anch&&mouseY>y&&mouseY<y+larg&&mousePressed){
    menu1=false;
    creditos=true;}
  }
  void nuevjueg(){
    if(mouseX>x&&mouseX<x+anch&&mouseY>y&&mouseY<y+larg&&mousePressed){
    menu1=false;
    menu2=true;}
  }
  
}
