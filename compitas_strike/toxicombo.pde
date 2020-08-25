class toxi{
  PVector posicion;
  toxi(){
    posicion = new PVector(int(random(width)),(random(height)));
    
  }
  void display(){
    rectMode(CENTER);
    fill(0);
    rect(posicion.x, posicion.y, 20, 20);
  } 
  boolean comer(){
    if(dist(principal.x+17,principal.y+23,posicion.x,posicion.y)<20){
    return true;
    }
    else{
      return false;
    }
  }
}
