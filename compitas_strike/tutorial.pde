 
 class Tutorial{
   int estados,pagina;
   boolean olds,i;
   
 Tutorial(int tempestados, int tempagina, boolean tempolds, boolean tempi){
 
   estados=tempestados;
   pagina=tempagina;
   olds=tempolds;
   i=tempi;
 }
 void paginas(){
   
    if(i==true&&olds==false){
      pagina++; 
    }
    olds=i;
    switch (pagina){
    case 1:
     background(0);
     textSize(40);
     fill(255);
     text("Bienvenid@ de nuevo a la universidad compa",width/2-410 ,height/2);
     text("¡espero que esté preparad@ para sobrevivir!",width/2-410,height/2+50);
     textSize(20);
     fill(255);
     text("Presione s para continuar",width-410,height-50);
     break;
    case 2: 
     background(0);
     textSize(40);
     text("Recuerde que seguimos en pandemia",width/2-410,height/2);
     text("¡No se le pegue a la gente! ¿oyó?",width/2-410,height/2+50);
     textSize(20);
     text("Presione s para continuar",width-410,height-50);
     break;
    case 3:
      background(0);
      textSize(40);
      text("Muevase usando las flechas",width/2-230,60);
      rect(100,70,40,40);
      rect(100,120,40,40);
      rect(50,120,40,40);
      rect(150,120,40,40);
      line(120,105,120,80);
      line(120,125,120,150);
      line(85,140,60,140);
      line(155,140,180,140);
      triangle(115,80,125,80,120,75);
      triangle(115,150,125,150,120,155);
      triangle(60,145,60,135,55,140);
      triangle(180,145,180,135,185,140);
      textSize(20);
     text("Presione s para continuar",width-410,height-50);
      principal.display();
      principal.movePerso();
     
      break;
    }
 }
 void controls (int s, boolean j){
   if(s=='s'){i=j;}
   }
 }
 
