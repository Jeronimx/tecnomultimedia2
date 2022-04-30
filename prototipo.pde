String estado = "Dibujar circulos";
int cantidad=10;
int cantidadDeCirculos = 0;
int colorear;
int numero;
int vel;
int tinte;
int colorx, satur;
PImage fondo, mascara;
int tono;
boolean c1, c2, c3;
Circulo c[];
Circulo formas[];

void setup() {
  imageMode( CENTER );
  frameRate(3);
  size(400, 600);
  numero = int( random( 0, 10 ) );
  colorx = 360;
  satur = 0;
  formas = new Circulo[cantidad];
  c = new Circulo[cantidad];
  colorMode(HSB, 360, 100, 100);
  vel = 10;
  background(360);
  colorear = 0;
  tono = 250;
  fondo = createImage( 380, 580, RGB );
  mascara = loadImage( "mascara.jpg" );
  //fill(0);
  //rect(20, 20, width-40, height-40);
  for (int i = 0; i < cantidad; i++) {
    formas[i] = new Circulo();
    c[i] = new Circulo();
  }

  if ( numero > 7 ) {
    fondo.mask( mascara );
  }
  println( numero );
  image( fondo, width/2, height/2);
}

void draw() {



  if ( mouseX > width/2 ) {
    colorear = colorear+vel;
  } else colorear = colorear-vel;

  for (int i = 0; i < cantidad; i++) {



    if ( mousePressed && estado.equals( "Dibujar circulos" )) {
      

//      int colorx_
//      int satur_ 
      c[i].dibujar(int( random(20, width-20) ), int( random(20, height-20) ), 0 );
      c[i].dibujarSat(int( random(20, width-20) ), int( random(20, height-20) ), colorx, satur );
      cantidadDeCirculos ++;
      println(cantidadDeCirculos);

      if ( cantidadDeCirculos >= 70 ) {
        estado = "Colorear Circulos";
      }
    }
    if ( estado.equals( "Colorear Circulos" ) ) {
        colorx = int( random( 0, 360 ) );
        satur = 360;
      }
    
    
  }
  pushStyle();
  noStroke();
  fill(360);
  rect(0, 0, 20, 600);
  rect(0, 0, 400, 20);
  rect(400-20, 0, width-40, 600);
  rect(0, 580, width, 400-40);
  popStyle();

  if ( key == 's' ) {
    save("hola.jpg");
  }
  println( estado, satur, colorx );
}
