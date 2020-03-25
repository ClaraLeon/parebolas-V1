//TIEMPO------------------------------------------------------
int minutos;
int segundos;
int milisegundos;

//Fondos
PImage fondoInicio;
PImage tablero;
PImage logo;
PImage btnNext;
PImage fondoDos;
PImage pantalla3;
PImage pantalla4;
PImage pantalla5;
PImage pantalla51;
//PImage [] gif;
//int contarImg;
//int frame;

//fuente
PFont fuente;

//ESTADOS
int estado =0;
int stop = 0;

//tecla
int presion = 0;

void setup()
{
  size(724, 543);

  //IMAGENES DE FONDO
  fondoInicio= loadImage("FondInicial.png");
  tablero= loadImage("tablero.png");
  logo= loadImage("logo.png");
  btnNext = loadImage("btn-next.png");
  fondoDos= loadImage("pantalla2.png");
  pantalla3=loadImage("pantalla3.png");
  pantalla4=loadImage("pantalla4.png");
   pantalla5=loadImage("3.png");
    pantalla51=loadImage("7.png");

  /*contarImg= 7;
  gif= new PImage[contarImg];
  for (int i=0; i< contarImg; i++) {
    gif[i]=loadImage(i +".png");
    i++;
  }*/
  //FUENTE
  fuente= loadFont("ArialRoundedMTBold-48.vlw");
  textFont(fuente);

  //TIEMPO
  minutos  = minute();
  segundos = second();
  milisegundos = 6000;
}


void draw()
{
  //inicial();


  if (estado==0)
  {
    inicial();
  } else if (estado == 1) {
    pantalla2();
  } else if (estado == 2) {
    pantalla3();
  } else if (estado == 3) {
    pantalla4();
  } else if (estado == 4) {
    pantalla5();
  }
}
/*
void keyPressed() { // cuando se oprime una tecla
 //println("" + keyCode); //para averiguar el codigo de las teclas
 if (keyCode == 32) {
 presion=1;
 } 
 }*/

void keyPressed() { // cuando se oprime una tecla
  //println("" + keyCode); //para averiguar el codigo de las teclas
  if (keyCode == 32) {
    estado= estado+1;
    println(estado);
  }
}

void keyReleased() {// cuando se suelta esa tecla
  if (keyCode == 32) {
    println("NO estoy presionando: "+presion);
  }
}
//FONDO---------------------------------------------------------------------------
void fondo() {
  background(#fce4a2);
  image(tablero, 80, 124);
  image(logo, 76, 31);

  fill(#898888);
  textSize(17);
  textAlign(LEFT);
  text("Presiona el ", 386, 500);
  image(btnNext, 486, 475);
  text("para continuar", 533, 500);
}
//PANTALLA INICIAL ---------------------------------------------------------------------
void inicial() {
  text("hola", 100, 100);
  background(fondoInicio);

  /*
  if (presion==1) {
   estado=1;
   println("EL ESTADO ES: "+ estado + "Y STOP ESTA: " + stop);
   }*/
}

//PANTALLA 2 ---------------------------------------------------------------------------
void pantalla2() {
  background(fondoDos);
  //text("te odio mugre codigo", 300, 300);
}

//PANTALLA 3 ---------------------------------------------------------------------------
void pantalla3() {
  fondo();
  fill(#898888);
  textSize(17);
  String a="Al frente encontrarás algunos elementos que son distractores";
  text(a, 113, 169, 591, 169);

  image(pantalla3, 104, 189);
}

//PANTALLA 4 ---------------------------------------------------------------------------
void pantalla4() {
  fondo();
  fill(#898888);
  textSize(17);
  String b="Estos elementos estan representados con números";
  text(b, 150, 169, 591, 169);

  image(pantalla4, 97, 244);
}

//PANTALLA 5 ---------------------------------------------------------------------------
void pantalla5() {
  fondo();
  fill(#898888);
  textSize(17);
  String c="Para elegir un número debes colocar la figura en su respectivo espacio e inmediantamente quitarlo";
  textAlign(CENTER);
  text(c, 120, 169, 500, 169);
  image(pantalla5, 97, 189);
  image(pantalla51, 130, 189);
  //frame=(frame+1)%contarImg;
  //image(gif[frame], 90, 118);
  
  
}
