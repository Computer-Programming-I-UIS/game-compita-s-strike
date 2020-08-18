class Personajes{
    int x, y, velocidad=10;
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
       switch(wx){
       case 13:
         wx=77;
         delay(50);
         break;
       case 77:
         wx=141;
         delay(50);
         break;
       case 141:
         wx=207;
         delay(50);
         break;
       case 207:
         wx=13;
         delay(50);
         break;}
     }
     else if (abajo==true&&y<height-h){
     y+=velocidad;
     wy=460;
     switch(wx){
       case 13:
         wx=77;
         delay(50);
         break;
       case 77:
         wx=141;
         delay(50);
         break;
       case 141:
         wx=207;
         delay(50);
         break;
       case 207:
         wx=13;
         delay(50);
         break;}
   }
   else if (der==true && x<width-w){
   x+=velocidad;
    wy=590;
     switch(wx){
       case 13:
         wx=77;
         delay(50);
         break;
       case 77:
         wx=141;
         delay(50);
         break;
       case 141:
         wx=207;
         delay(50);
         break;
       case 207:
         wx=13;
         delay(50);
         break;}
       }
   else if (izq==true&&x>w/2){
     x-=velocidad;
     wy=526;
   switch(wx){
       case 13:
         wx=77;
         delay(50);
         break;
       case 77:
         wx=141;
         delay(50);
         break;
       case 141:
         wx=207;
         delay(50);
         break;
       case 207:
         wx=13;
         delay(50);
         break;}
       }
    else{
    x+=0; y+=0;
    wx=13;
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
