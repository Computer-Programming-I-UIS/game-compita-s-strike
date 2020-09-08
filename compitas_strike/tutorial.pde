 
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
   principal.velocidadperso=10;
   profe.wy=259;
   profe.wx=1;
   
    if(i==true&&olds==false){
      pagina++; 
    }
    olds=i;
    switch (pagina){
    case 1:
     background(0);
     textSize(40);
     fill(255);
     text("Bienvenido de nuevo a la universidad compa",width/2-410 ,height/2);
     text("¡espero que esté preparado para sobrevivir!",width/2-410,height/2+50);
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
     case 4:
      background(0);
      textSize(30);
      text("¡Mantengase alejado del profesor que va a intentar acercarsele!",width/2-400,70);
      text("si no se aleja su barra de salud va a disminuir",width/2-300,115);
      text("y si llega a 0 se va a contagiar de Covid-19",width/2-300,160);
      profe.display();
      profe.x=width/2;
      profe.y=height/2;
      textSize(20);
      text("Presione s para continuar",width-410,height-50);
     
     break;
    case 5:
      background(0);
      textSize(30);
      text("Para recuperar su salud puede comerse un toxicombo... ",width/2-400,70);
      text("Son muy efectivos para atacar cualquier virus",width/2-300,115);
     toxi= loadImage("toxi.png");
    copy(toxi,10,9,150,160,width/2-50,height/2-50,100,100);
    textSize(20);
     text("Presione s para continuar",width-410,height-50);
      break;
     case 6:
      background(0);
      textSize(30);
      text("Compa ¡recuerde que también tiene que estudiar!",width/2-400,70);
      text("Los líbros estarán disponibles en todo momento",width/2-400,115);
      text("estos le permitirán prepararse para el ataque silencioso y repentino de los parciales",width/2-600,160);
      text("¡OJO! solo sabrá que atacarán cuando oiga ''parcial inminente''" ,width/2-500,205);
      text("así que ¡mantengase preparado!",width/2-200,250);
      text("si no se prepara su promedio bajará",width/2-250,295);
      text("Si su promedio queda por debajo de 3 QUEDARÁ EN BOLSA",width/2-360,340); 
       libros= loadImage("libros.png");
      copy(libros,2,28,436,394,width/2-75,360,150,150);
      textSize(20);
      text("Presione s para volver al menu principal",width-410,height-50);
       break;
     default:
     setup();
     tutorial=false;
     menu1=true;
    }
 }
 void controls (int s, boolean j){
   if(s=='s'){i=j;}
   }
 }
 
