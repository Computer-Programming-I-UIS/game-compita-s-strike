class Personajes{
    float x, y, anch, larg,velocidad=2.5;
    boolean arriba, abajo, der, izq;
    Personajes (float tempx, float tempy, float tempanch, float templarg){
    x=tempx;
    y=tempy;
    anch=tempanch;
    larg=templarg;
  }
    void display(){
    rectMode(CENTER);
    rect(x,y,anch,larg);
  }
    
   void move(){
     
     if(keyPressed == true){                                
      if (key == CODED) {                                  
        switch(keyCode) {          
        case UP:
          arriba=true; 
         abajo=false;
         der=false;
         izq=false;
        break;
        
        case DOWN:  
          arriba=false; 
         abajo=true;
         der=false;
         izq=false;
         break;
   
       case LEFT:     
          arriba=false; 
         abajo=false;
         der=false;
         izq=true;                                      
        break;                                                             
        
       case RIGHT:
         arriba=false; 
         abajo=false;
         der=true;
         izq=false;                                      
           break;
        default:
        arriba=false; 
         abajo=false;
         der=false;
         izq=false;                                      
           break;
       
         }
       }
     if(arriba==true&&y>(larg/2)){
       y-=velocidad;
     }
     else if (abajo==true&&y<height-larg/2){
     y+=velocidad;
   }
   else if (der==true && x<width-anch/2){
   x+=velocidad;}
   else if (izq==true&&x>anch/2){
     x-=velocidad;}
    else{
    x+=0; y+=0;
    }
     
     } 

}
}
