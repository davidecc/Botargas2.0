import processing.video.*;
import processing.sound.*;

int pantalla;
boolean p1select = false;
boolean p2select = false;
int turno;
int vidaj1;
int vidaj2;
int seleccionado;
int p2seleccionado;

PImage bg1;
PImage bg2;
PImage bg3;
PImage plyr1;
PImage plyr2;
PImage plyr3;
PImage plyr4;
PImage plyr5;
PImage plyr6;

botarga p1;
botarga p2;
botarga p3;
botarga p4;
botarga p5;
botarga p6;

botarga p1b;
botarga p2b;
botarga p3b;
botarga p4b;
botarga p5b;
botarga p6b;

botarga j1;
botarga j2;

Movie movie;
SoundFile file;


void setup() {
  size(1280, 720);

  movie = new Movie(this, "intro.m4v");
  movie.loop();

  file = new SoundFile(this, "music.mp3");
  file.loop();

  p1 = new botarga("1", 10, 1, 0);
  p2 = new botarga("2", 10, 1, 1);
  p3 = new botarga("3", 10, 1, 2);
  p4 = new botarga("4", 10, 1, 3);
  p5 = new botarga("5", 10, 1, 4);
  p6 = new botarga("6", 10, 1, 5);

  p1b = new botarga("1", 10, 1, 0);
  p2b = new botarga("2", 10, 1, 1);
  p3b = new botarga("3", 10, 1, 2);
  p4b = new botarga("4", 10, 1, 3);
  p5b = new botarga("5", 10, 1, 4);
  p6b = new botarga("6", 10, 1, 5);

  bg1= loadImage("bg1.jpg");
  bg2= loadImage("bg2.jpg");
  bg3= loadImage("bg3.jpg");
  plyr1= loadImage("1.png");
  plyr2= loadImage("2.png");
  plyr3= loadImage("3.png");
  plyr4= loadImage("4.png");
  plyr5= loadImage("5.png");
  plyr6= loadImage("6.png");
  
}



void draw() {
  switch(pantalla) {
  case 0:
    intro();
    break;
  case 1:
    historia();
    break;
  case 2:
    selection();
    break;
  case 3:
    juego();
    break;
  case 4:
    fin();
    break;
  } 
  println(pantalla);
}

void intro() {
    background(0);
    image(movie, 0, 0);
    textSize(32);
    fill(255);
    text("PULSA LETRA P PARA CONTINUAR", 370, 550);
   
    
  keyPressed();
  if ((key=='p') || (key == 'P')) {
    pantalla = 1;
  }
}

void historia() {
  image(bg1,0,0);
  
pushMatrix();
    textSize(40);
    fill(random(200,255));
    text("PREPÁRATE PARA DEFENDER TUS COLORES A MUERTE", 110,200);
    textSize(30);
    fill(250,255,50);
    text("PULSA LETRA O PARA CONTINUAR", 350,500);
    popMatrix();


  keyPressed();
  if ((key == 'O') || (key == 'o')) {
    pantalla = 2;
  }
}





void selection() {
  background(0);
  bg2 = loadImage("bg2.jpg");
  image(bg2, 0, 0);
  p1.display();
  p2.display();
  p3.display();
  p4.display();
  p5.display();
  p6.display();

textSize(25);
    fill(255,130,20);
    text("Selecciona tu botarga1 CON q,w,e,r,t,y", 90,400);
     text("Selecciona tu botarga2 CON a,s,d,f,g,h", 600,400);
   
  if (p1select && p2select) {
    pantalla = 3;
    turno += 1;
  }
  if (keyPressed) {
    switch(key) {
    case 'q':
      j1 = p1;
      vidaj1=j1.hp;
      p1select = true;
      break;
    case 'w':
      j1 = p2;
      vidaj1=j1.hp;
      p1select = true;
      break;
    case 'e':
      j1 = p3;
      vidaj1=j1.hp;
      p1select = true;
      break;
    case 'r':
      j1 = p4;
      vidaj1=j1.hp;
      p1select = true;
      break;
    case 't':
      j1 = p5;
      vidaj1=j1.hp;
      p1select = true;
      break;
    case 'y':
      j1 = p6;
      vidaj1=j1.hp;
      p1select = true;
      break;
    case 'a':
      j2 = p1b;
      vidaj2=j2.hp;
      p2select = true;
      break;
    case 's':
      j2 = p2b;
      vidaj2=j2.hp;
      p2select = true;
      break;
    case 'd':
      j2 = p3b;
      vidaj2=j2.hp;
      p2select = true;
      break;
    case 'f':
      j2 = p4b;
      vidaj2=j2.hp;
      p2select = true;
      break; 
    case 'g':
      j2 = p5b;
      vidaj2=j2.hp;
      p2select = true;
      break;
    case 'h':
      j2 = p6b;
      vidaj2=j2.hp;
      p2select = true;
      break;
    }
  }
}




void juego() {
  background(0);
  
  bg3 = loadImage("bg3.jpg");
  image(bg3, 0, 0);
  fill(random(34,300));
    text("Golpe J1 : X Golpe J2 : M", 500,500);
  if (j1==p1) {
    seleccionado=0;
    p1.jugando();
  }
  if (j1==p2) {
    seleccionado=1;
    p2.jugando();
  }
  if (j1==p3) {
    seleccionado=2;
    p3.jugando();
  }
  if (j1==p4) {
    seleccionado=3;
    p4.jugando();
  }
  if(j1==p5){
    seleccionado=4;
    p5.jugando();
  }
  if(j1==p6){
    seleccionado=5;
    p6.jugando();
  }
    if (j2==p1b) {
    p2seleccionado=0;
    p1.p2jugando();
  }
  if (j2==p2b) {
    p2seleccionado=1;
    p2.p2jugando();
  }
  if (j2==p3b) {
    p2seleccionado=2;
    p3.p2jugando();
  }
  if (j2==p4b) {
    p2seleccionado=3;
    p4.p2jugando();
  }
  if(j2==p5b){
    p2seleccionado=4;
    p5.p2jugando();
  }
  if(j2==p6b){
    p2seleccionado=5;
    p6.p2jugando();
  }
  
  println(j1.nombre + ","+vidaj1+ ",");
  println(j2.nombre + ","+vidaj2+ ",");
  if (vidaj1 <= 0 || vidaj2<=0) {
    pantalla =4;
  }
  switch (turno) {
  case 1:
  
    keyPressed();
    if ((key=='x') || (key == 'X') ) {
      vidaj2 -= j1.ataque;
      turno = 2;
    }
    break;
  case 2:
    keyPressed();
    if ((key=='m') || (key == 'M') ) {
      vidaj1 -= j2.ataque;
      turno = 1;
    }
    break;
  }
  
  pushMatrix();
    fill(2,255,15);
    rect(150, 50, (vidaj1 *40), 20);
    popMatrix();

    pushMatrix();
     fill(2,255,15);
    rect(600, 50, (vidaj2*40), 20);
    popMatrix();
}

void fin() {
    background(0);
    fill(255,0,0);
    text("CLICK PARA EMPEZAR",450,350);
    if (vidaj1<=0){
      textSize(200);
      text("J 2 WIN ",200,100);
    }
    else if (vidaj2<=0){
      text("J 1 WIN ",200,100);
      
    }
    
     if (mousePressed) {
    pantalla = 0;
    p1select = false;
    p2select = false;
    turno = 0;
    vidaj1 = 0;
    vidaj2 = 0;
     }
  }