
int cantidad=20;
int colorear;
int vel;
int tinte;
int tono;
boolean c1, c2, c3;
Circulo c[];
Circulo formas[];

void setup() {
  frameRate(10);
  size(400, 600);
  formas = new Circulo[cantidad];
  c = new Circulo[cantidad];
  colorMode(HSB, 360, 100, 100);
  vel = 10;
  background(230);
  colorear = 0;
  tono = 250;
  fill(0);
  rect(20, 20, width-40, height-40);
  for (int i = 0; i < cantidad; i++) {
    formas[i] = new Circulo();
    c[i] = new Circulo();
  }
}

void draw() {

  if ( mouseX > width/2 ) {
    colorear = colorear+vel;
  } else colorear = colorear-vel;

  for (int i = 0; i < cantidad; i++) {

    if ( mousePressed ) {
      if ( mouseY > height/2 ) {
        c[i].dibujarSat(int( random(20, width-20) ), int( random(20, height-20) ), 350, 0 );
      }
      if ( mouseY < height/2 ) {
        c[i].dibujarSat(int( random(20, width-20) ), int( random(20, height-20) ), tono, 360 );
      }
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
}
