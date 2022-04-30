class Circulo{
  int x,y,tam;
  int colores;
  
  Circulo(){
    x = int(random( 0, width ) );
    y = int(random(0, height ) );
    tam = 50;
    colores = 0;
  }
  
  void dibujarCirculo(){
    
    fill( colores );
    ellipse( x,y,tam,tam );
    
  }
  
  void actualizar(){
    
    if( key == 's' ){
      colores = int( random( 0 , 360 ) );
    } else {
      colores = 0;
    }
    
  }
  



}
