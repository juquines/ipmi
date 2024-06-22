// tp3 juliana quines streisys
// comision 1
// link video https://youtu.be/15CiGatt3Wg

PImage foto;
int valor;

void setup() {
  size(800, 400);
  background (255) ;
  foto = loadImage ("tp3foto.png");
  valor=0;
}

void draw() {
  noStroke();
  
  //dibujo
  //ciclos for anidados
  for (int i=10; i<20; i++) {
    for (int j=0; j<40; j++) {
      bon(i, j);
      rect(i*40, j*10, 40, 10);
    }
  }
  for (int k=0; k<24; k++) {
    for (int l=0; l<6; l++) {
      bon(k, l);
      rect(k*10+480, l*40+80, 10, 40);
    }
  }
  image(foto, 0, 0, 400, 400);
}

//colores
//funcion q no retorna
void bon (int a, int b) {

  //condicionales if/else

  if (valor==0) {

    if ((a+b)%2==0) {
      fill(0);
    } else {
      fill(255);
    }
  }
  if (valor==1) {

    if ((a+b)%2==0) {
      fill(255, 0, 255);
    } else {
      fill(255, 255, 0);
    }
  }
  if (valor==2) {

    if ((a+b)%2==0) {
      fill(0, 0, 255);
    } else {
      fill(255, 127, 0);
    }
  }
  if (valor==3) {

    if ((a+b)%2==0) {
      //funcion random
      fill(0, random(255), 0);
    } else {
      fill(random(255), 0, 0);
    }
  }
}

//evento mouse q modifique variable
void mousePressed() {
  valor = modvalor(valor);
}

//funcion q retorna valor
int modvalor(int v) {
  if (v<3) {
    v++;
  } else {
    v=0;
  }
  return v;
}

//reinicio
void iniciar() {
  foto = loadImage("tp3foto.png");
  valor = 0;
}

void keyPressed() {
  if (key == 'j') {
    iniciar();
  }
}
