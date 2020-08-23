class Personajes{
    int x,y, velocidadperso=10,velocidadprof=4,i=0;
    boolean arriba, abajo, der, izq;
    int wx, wy, w, h;
    PImage prueba;
    float d;
   
    
    Personajes (int tempx, int tempy, int tempwx,int tempwy, int tempw, int temph){
   
    x=tempx;
    y=tempy;
    wx=tempwx;
    wy=tempwy;
    w=tempw;
    h=temph;
  }
 
    void display(){
   prueba= loadImage("sprites.png");
    copy(prueba,wx,wy,w,h,x,y,w,h);
    //noFill();
    //circle(x+17,y+23,120);
    
  }
  
    
    
   void movePerso(){ 
     i=frameCount;
     if(frameCount==7){        
      frameCount=0;  
     }
     //if (colision==false){
     if(arriba==true&&y>(h/2)){
       y-=velocidadperso;
       wy=652;
      switch(i){
       case 1:
         wx=77;
         break;
       case 4:
         wx=207;
         break;
       }
 
     }
     else if (abajo==true&&y<height-h){
     y+=velocidadperso;
     wy=459;
     switch(i){
       case 1:
         wx=77;
         break;
       case 4:
         wx=207;
         break;
       }
   }
   else if (der==true && x<width-w){
   x+=velocidadperso;
    wy=589;
     switch(i){
       case 1:
         wx=77;
         break;
       case 4:
         wx=207;
         break;
       }
       }
   else if (izq==true&&x>w/2){
     x-=velocidadperso;
     wy=525;
   switch(i){
       case 1:
         wx=77;
         break;
       case 4:
         wx=207;
         break;
       }
       }
   
    else{
    x+=0; y+=0;
    wx=13;
    }
  // }
   /*else{
   if(x<profe.x&&der==true){
   x+=;}
   else if(x>profe.x&&izq==true){
   x-=0;}
   else if(y>profe.y&&arriba==true){
   y-=0;}
   else if(y<profe.y&&abajo==true){
   y+=0;}
   else{
   }
 }*/
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
  void moveProfes(){
    if(colision==false){
    
    if (x<principal.x-(velocidadprof-1)&&y>principal.y+(velocidadprof-1)){
    x+=velocidadprof;
    y-=velocidadprof;
    wy=405;
    switch(i){
       case 1:
         wx=32;
         break;
       case 4:
         wx=98;
         break;
    }
  }
    else if (x>principal.x+(velocidadprof-1)&&y>principal.y+(velocidadprof-1)){
    x-=velocidadprof;
    y-=velocidadprof;
    wy=405;
    switch(i){
       case 1:
         wx=32;
         break;
       case 4:
         wx=98;
         break;
    }
  }
    else if (x<principal.x-(velocidadprof-1)&&y<principal.y-(velocidadprof-1)){
    x+=velocidadprof;
    y+=velocidadprof;
    wy=260;
    switch(i){
       case 1:
         wx=32;
         break;
       case 4:
         wx=98;
         break;
       }
  }
    else if (x>principal.x+(velocidadprof-1)&&y<principal.y-(velocidadprof-1)){
    x-=velocidadprof;
    y+=velocidadprof;
    wy=260;
    switch(i){
       case 1:
         wx=32;
         break;
       case 4:
         wx=98;
         break;} 
  }
    else if (x>=principal.x-(velocidadprof-1)&&x<=principal.x+(velocidadprof-1)&&y<principal.y+(velocidadprof-1)){
    y+=velocidadprof;
    wy=260;
    switch(i){
       case 1:
         wx=32;
         break;
       case 4:
         wx=98;
         break;} 
  }
    else if (x>=principal.x-(velocidadprof-1)&&x<=principal.x+(velocidadprof-1)&&y>principal.y-(velocidadprof-1)){
    y-=velocidadprof;
    wy=405;
    switch(i){
       case 1:
         wx=32;
         break;
       case 4:
         wx=98;
         break;}
    }
    else if (x<principal.x+(velocidadprof-1)&&y>=principal.y-(velocidadprof-1)&&y<=principal.y+(velocidadprof-1)){
    x+=velocidadprof;
    wy=356;
    switch(i){
       case 1:
         wx=32;
         break;
       case 4:
         wx=98;
         break;} 
  }
    else if (x>principal.x+(velocidadprof-1)&&y>=principal.y-(velocidadprof-1)&&y<=principal.y+(velocidadprof-1)){
    x-=velocidadprof;
    wy=307;
    switch(i){
       case 1:
         wx=32;
         break;
       case 4:
         wx=98;
         break;} 
  }
  
    else{
    y+=0;
    x+=0;
    }
  }
}

  void colision(){
    
     d= dist(profe.x+17,profe.y+23,principal.x+17,principal.y+23);
     if(d>90){colision=false;}
     else{colision=true;}
     //println(covid);
     if(d>100){covid=false;}
     else{covid=true;}
   
  }
}
