//tp1 juliana quines streisys
// comision 1

PImage fondo;
void setup () {
  size(800, 400);
  fondo = loadImage("cacatua.png");
}
void draw() { 
  image(fondo, 0, 0, 400, 400);
  //fondo
  fill(77,64,56);
  rect(400,0,400,400);
 //armario
 fill(29,16,3);
 rect(640,0,160,130);
 fill(196);
 circle(716,64,10);
 circle(732,64,10);
 //pared
 fill(149,129,116);
 rect(400,0,240,100);
 //armario 2
 fill(88,41,0);
 rect(400,0,60,130);
 //almohada
 noStroke();
 fill(196);
 quad(400,289,510,248,719,299,797,312);
 quad(400,400,400,289,800,312,800,400);
 fill(250);
 quad(474,289,421,311,475,310,514,331);
 //patass
 fill(234,137,154);
 rect(518,360,6,10);
 rect(525,360,6,23);
 quad(530,361,540,365,539,372,530,367);
 quad(540,366,544,362,548,367,539,372);
 rect(623,365,8,10);
 quad(623,374,630,369,640,373,636,379);
 //cuerpo
 fill(199,187,172);
 circle(584,258,230);
 quad(500,336,513,360,536,360,536,344);
 fill(245,235,194);
 triangle(657,114,589,0,587,93);
 triangle(604,75,568,0,562,81);
 triangle(575,71,544,0,546,83);
 triangle(565,79,532,43,547,93);
 triangle(549,73,509,68,534,88);
 circle(588,222,190);
 circle(582,152,167);
 fill(236,121,83);
 circle(539,155,50);
 //ojo
 fill(200,203,202);
 circle(571,130,30);
 circle(589,132,20);
 fill(0);
 circle(569,129,20);
 fill(250);
 circle(572,126,2);
 //pico
 fill(242,197,208);
 circle(621,131,23);
 circle(638,131,23);
 quad(609,147,630,131,651,145,632,160);
 triangle(649,144,648,183,628,156);
 quad(612,150,605,145,611,134,627,138);
 //arriba del pico xd
 fill(77,77,77);
 circle(619,130,10);
 }

void mousePressed() {
  println(mouseX+","+mouseY);
}
