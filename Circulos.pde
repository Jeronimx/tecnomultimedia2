class Circulo {
  float posX;
  float posY;
  float tam;
  float tinte;
  color relleno;
  Circulo() {
    //posX = width/2;
    //posY = height/2;
    tam = 40;
    tinte = 0;
    relleno = color( tinte, random(300,360), random(150,240) );
  }
  
  void dibujar( int posX, int posY, int tono){
    fill(tono, 100,100);
    ellipse(posX,posY,tam,tam);
    fill(tono, 90,80);
    ellipse(posX,posY,tam-15,tam-15);
    fill(tono, 82,59);
    ellipse(posX,posY,tam-30,tam-30);
  }
  

  
  void dibujarSat( int posX, int posY, color tono, color sat){
      
    fill(tono, sat,100);
    ellipse(posX,posY,tam,tam);
    fill(tono, sat,80);
    ellipse(posX,posY,tam-15,tam-15);
    fill(tono, sat,59);
    ellipse(posX,posY,tam-30,tam-30);
  }
  
  
  
}
