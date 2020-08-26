class toxi{
  PVector posicion;
  toxi(){
    posicion = new PVector(random(principal.w/2,width-principal.w),random(95,height-principal.h));
    
  }
  void display(){
    toxi= loadImage("toxi.png");
    copy(toxi,10,9,150,160,int(posicion.x),int(posicion.y),30,30);
  } 
  boolean comer(){
    if(dist(principal.x+17,principal.y+23,int(posicion.x),int(posicion.y))<30){
    return true;
    }
    else{
      return false;
    }
  }
}
