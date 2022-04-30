String estado = "Nada";
Circulo c[];
void setup(){
  imageMode( CENTER );
  colorMode( HSB, 360 );
  size( 400,600 );
 
 c = new Circulo[10];
 for (int i = 0; i < 10; i++) {
    c[i] = new Circulo();
  }
  
}

void draw(){
  if( estado.equals( "Nada" ) ){
    background( 360 );
  }
  if( key == 'r' ){
   estado = "Dibujar Circulos";
  }
  if( estado.equals( "Dibujar Circulos" ) ){
  c[9].dibujarCirculo();
  c[9].actualizar();
  }
  if( key == 'l' ){
    estado = "Nada";
  }
  
  
}
