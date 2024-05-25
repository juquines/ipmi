//tp2 juliana quines streisys 
//comision 1

PFont fuente;
PImage southpark1, southpark2, southpark3, southpark4, rata1,rata2;
String estado;
String texto1, texto2, texto3,texto4, texto5, texto6;
int segundos;
int py, px, dou, x4, y4,x1,x2,x3,x, y, ancho, alto;
color boton;

void setup (){
   background(0);
  size (640,480);
  estado= "pant1";
  py = height;
  px = width/2;
  dou = width/2;
  x4 = width/2;
  y4 = width/2;
  x2 = 171;
  x3 = 70;
  x = 495;
  y = 405;
  ancho = 100;
  alto = 50;
  boton = color(255,120, 0);
southpark1=loadImage("southpark1.jpg");
southpark2=loadImage("southpark2.jpg");
southpark3=loadImage("southpark3.jpg");
southpark4=loadImage("southpark4.jpg");
rata1=loadImage("rata1.png");
rata2=loadImage("rata2.png");
fuente=loadFont("spfuente.vlw");
textFont(fuente,70);
texto1 ="SOUTH \nPARK";
texto2 ="Kyle Broflovski interpretado por Matt Stone";
texto3 ="Eric Cartman interpretado por Trey Parker";
texto4 = "OH DIOS MIO,MATARON A KENNY";
texto5 ="Stan Marsh interpretado por Trey Parker";
texto6 ="Kenny McCormick";
}

void draw(){
if (estado.equals("pant1")){
 image(southpark1,0,0,640,480);
 textSize (70);
 textAlign(CENTER);
  fill(255,231,0);
  text(texto1, 100, py, 440, 400);
  if (py>80) {
   py --;} }
  else if (estado.equals("pant2")) {
    image(southpark2,0,0,640,480);
    textSize (30);
  fill (255,231,0);
  text(texto2,px,90,300,100);
  if (px<350){
    px ++;}
  text(texto3,dou,330,300,100);
  if (dou>20){
    dou --;} } 
    else if (estado.equals("pant3")) {
    image(southpark3,0,0,640,480);
    text(texto4,390,200,250,300);}
    else if (estado.equals("pant4")) {
    image(southpark4,0,0,640,480);
    image(rata1,x2,346,100,90);
    if (x2<172 && segundos>20){
      x2 --;}
      image(rata2,x3,380,100,80);
      if (x3<650 && segundos>20){
      x3 ++;}
    fill(255,231,0);
    text(texto5,x4,90,300,100);
    if (x4>20){
    x4 --;}
    text(texto6,y4,330,300,100);
    if (y4<350){
    y4 ++;}
    textSize (15);
    fill(boton);
  rect(x, y, ancho, alto);
  fill(255,231,0);
    {text("reiniciar",547,435);
    textSize (30);
  } }

if (frameCount%60 == 0) {
    segundos++;
  }
  if (segundos<8) {
    estado = "pant1";
  } else if (segundos>=8 && segundos<= 14) {
    estado = "pant2";
  } else if (segundos > 14 && segundos <19) {
    estado = "pant3";
  } else {
    estado = "pant4";
  } }
  
void mousePressed() {
  println(mouseX+","+mouseY);
  if (mouseX>= x && mouseX< x+ancho && mouseY>y && mouseY< y+alto && segundos>24) {
    estado= "pant1";
  segundos= 0;
py = height;
  px = width/2;
  dou = width/2;
  x4 = width/2;
  y4 = width/2;
  x2 = 171;
  x3 = 70;
  x = 495;
  y = 405;
  ancho = 100;
  alto = 50;
  boton = color(255,120, 0);}
}
