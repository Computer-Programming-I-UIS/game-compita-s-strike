class Personajes{
    int x, y, velocidadperso=6,velocidadprof=4,i;
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
    i=frameCount;
     if(frameCount==7){        
       frameCount=0;}
    if (x<principal.x&&y>principal.y){
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
    else if (x>principal.x&&y>principal.y){
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
    else if (x<principal.x&&y<principal.y){
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
    else if (x>principal.x&&y<principal.y){
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
    else if (x==principal.x&&y<principal.y){
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
    else if (x==principal.x&&y>principal.y){
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
    else if (x<principal.x&&y==principal.y){
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
    else if (x>principal.x&&y==principal.y){
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
    for(int i=0;i<profesder.length;i++){
     d= dist(profesder[i].x+17,profesder[i].y+23,principal.x+17,principal.y+23);
     if(d>90){colision=false;}
     else{colision=true;}
     println(covid);
     if(d>120){covid=false;}
     else{covid=true;}
   }
  }
}
