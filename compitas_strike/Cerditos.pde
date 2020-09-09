void creditos(){  
  background(0);
  fill(255);
  textSize(50);
  text("Compitas Strike",width/2-120,70);
  textSize(30);
  text("Proyecto desarrollado por Rafael Santiago Suárez Gil y Daniel Augusto García",50,130);
  textSize(20);
  text("Los personajes utilizados son propiedad de la franquicia POKÉMON ",50,170);
  text("Las imágenes del menún principal y del escenario son representaciones de la Universidad Industrial de Santander UIS ",50,200);
  text("La imagen del menú principal fue tomada del server ''UISCRAFT'' de Minecraft",50,230);
  text("Las imágenes son utilizadas únicamente con fínes académicos, todos los derechos reservados a los respectivos autores",50,260);
  text("Banda sonora ''Adventure Meme'' compuesta por Kevin MacLeod, libre de copyright",50,290);
  text("Los efectos de sonido fueron tomados del sitio público sonidosmp3gratis.com y realizados por los desarrolladores",50,320);
  textSize(30);
  text("Agradecimientos especiales:",50,360);
  textSize(20);
  text("Profesor Camilo Eduardo Rojas Ortiz, Processing Foundation, Mojang Studios, Incompetech music y sonidosmp3gratis.com",50,390);
  text("Agradecemos también al usuario AngotPhoenix que nos apoyó durante la realización de este proyecto",50,420);
  textSize(20);
  text("Presione s para volver al menu principal",width-410,height-50);
  if(keyPressed){
  if(key=='s'){
     tutorial=false;
     menu1=true;}
   }
  
  
}
