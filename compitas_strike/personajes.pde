class Personajes{
    int x, y, velocidad=3;
    boolean arriba, abajo, der, izq;
    int wx=13, wy=460, w=34, h=50;
    PImage prueba;
   
    
    Personajes (int tempx, int tempy){
   
    
    x=tempx;
    y=tempy;
    
  }
    void display(){
   prueba= loadImage("sprites.png");
    
    copy(prueba,wx,wy,w,h,x,y,w,h);
    
  }
    
   void move(){
        
       
     if(arriba==true&&y>(h/2)){
       y-=velocidad;
       wy=653;
     }
     else if (abajo==true&&y<height-h){
     y+=velocidad;
     wy=460;
   }
   else if (der==true && x<width-w){
   x+=velocidad;
 wy=590;}
   else if (izq==true&&x>w/2){
     x-=velocidad;
   wy=526;}
    else{
    x+=0; y+=0;
    }
     
  } 

    void keycontrol(int k, boolean b){
   switch(k){
     case UP:
     arriba=b;
     
     break;
     case DOWN:
     abajo=b;
     
     break;
     case LEFT:
     izq=b;
     
     break;
     case RIGHT:
     der=b;
     
     break;}
}
}
