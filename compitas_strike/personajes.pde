class Personajes{
    int x,y, velocidadperso=10,velocidadprof=4,tiempo=0;
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
    
  }
  
    
    
   void movePerso(){ 
    tiempo-=1/frameRate;
    if(tiempo==0){
    tiempo=7;} 
     
     if(arriba==true&&y>(95)){
       y-=velocidadperso;
       wy=652;
        if(tiempo==4){wx=77;}
    else if(tiempo==1){wx=207;}
      
     }
     else if (abajo==true&&y<height-h){
     y+=velocidadperso;
     wy=459;
   if(tiempo==4){wx=77;}
    else if(tiempo==1){wx=207;}
   }
   else if (der==true && x<width-w){
   x+=velocidadperso;
    wy=589;
    if(tiempo==4){wx=77;}
    else if(tiempo==1){wx=207;}
       }
   else if (izq==true&&x>w/2){
     x-=velocidadperso;
     wy=525;
  if(tiempo==4){wx=77;}
    else if(tiempo==1){wx=207;}
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
    tiempo-=1/frameRate;
  if(tiempo==0){
  tiempo=7;} 
    if(colision==false){
    
   if(tiempo==4){wx=32;}
    else if(tiempo==1){wx=98;}
    if (x<principal.x-(velocidadprof-1)&&y>principal.y+(velocidadprof-1)){
    x+=velocidadprof;
    y-=velocidadprof;
    wy=405;
   
       
    
  }
    else if (x>principal.x+(velocidadprof-1)&&y>principal.y+(velocidadprof-1)){
    x-=velocidadprof;
    y-=velocidadprof;
    wy=405;
    
 
  }
    else if (x<principal.x-(velocidadprof-1)&&y<principal.y-(velocidadprof-1)){
    x+=velocidadprof;
    y+=velocidadprof;
    wy=260;

  }
    else if (x>principal.x+(velocidadprof-1)&&y<principal.y-(velocidadprof-1)){
    x-=velocidadprof;
    y+=velocidadprof;
    wy=260;

  
  }
    else if (x>=principal.x-(velocidadprof-1)&&x<=principal.x+(velocidadprof-1)&&y<principal.y+(velocidadprof-1)){
    y+=velocidadprof;
    wy=260;
 
     
  }
    else if (x>=principal.x-(velocidadprof-1)&&x<=principal.x+(velocidadprof-1)&&y>principal.y-(velocidadprof-1)){
    y-=velocidadprof;
    wy=405;

  
    }
    else if (x<principal.x+(velocidadprof-1)&&y>=principal.y-(velocidadprof-1)&&y<=principal.y+(velocidadprof-1)){
    x+=velocidadprof;
    wy=356;

   
  }
    else if (x>principal.x+(velocidadprof-1)&&y>=principal.y-(velocidadprof-1)&&y<=principal.y+(velocidadprof-1)){
    x-=velocidadprof;
    wy=307;

  }
  
    
  }
  else{
    y+=0;
    x+=0;
    wx=1;
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
