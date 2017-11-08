class botarga {
  String nombre;
  int hp;
  int ataque;
  int tipo;
  int seleccionado;

  botarga(String nombre_, int hp_, int ataque_, int tipo_) {
    nombre =nombre_;
    hp = hp_;
    ataque = ataque_;
    tipo = tipo_;
  }

  void display() {

    switch(tipo) {
    case 0:
      pushMatrix();
      rectMode(CENTER);
      translate(350, 200);
      image(plyr1, -100, -190);
      popMatrix();
      break;
    case 1:
      pushMatrix();
      rectMode(CENTER);
      translate(650, 200);
      image(plyr2, -100, -190);
      popMatrix();
      break;
    case 2:
      pushMatrix();
      rectMode(CENTER);
      translate(950, 200);
      image(plyr3, -100, -190);
      popMatrix();
      break;
    case 3:
      pushMatrix();
      rectMode(CENTER);
      translate(350, 570);
      image(plyr4, -100, -190);
      popMatrix();
      break;
    case 4:
      pushMatrix();
      rectMode(CENTER);
      translate(650, 570);
      image(plyr5, -100, -190);
      popMatrix();
      break;
    case 5:
      pushMatrix();
      rectMode(CENTER);
      translate(950, 570);
      image(plyr6, -100, -190);
      popMatrix();
      break;
    }
  }
  
  void jugando(){
    
      switch(seleccionado){
        case 0:
      pushMatrix();
      rectMode(CENTER);
      translate(420, 360);
      image(plyr1, -100, -190);
      popMatrix();
      break;
      
      case 1:
      pushMatrix();
      rectMode(CENTER);
      translate(420, 360);
      image(plyr2, -100, -190);
      popMatrix();
      break;
      
      case 2:
      pushMatrix();
      rectMode(CENTER);
      translate(420, 360);
      image(plyr3, -100, -190);
      popMatrix();
      break;
      
      case 3:
      pushMatrix();
      rectMode(CENTER);
      translate(420, 360);
      image(plyr4, -100, -190);
      popMatrix();
      break;
      
      case 4:
      pushMatrix();
      rectMode(CENTER);
      translate(420, 360);
      image(plyr5, -100, -190);
      popMatrix();
      break;
      
      case 5:
      pushMatrix();
      rectMode(CENTER);
      translate(420, 360);
      image(plyr6, -100, -190);
      popMatrix();
      break;
        
      }
    
  }
  
  void p2jugando(){
    
      switch(p2seleccionado){
        case 0:
      pushMatrix();
      rectMode(CENTER);
      translate(840, 360);
      noFill();
      stroke(0);
      rect(0, 0, 50, 50);
      image(plyr1, -100, -190);
      popMatrix();
      break;
      
      case 1:
      pushMatrix();
      rectMode(CENTER);
      translate(840, 360);
     
      image(plyr2, -100, -190);
      popMatrix();
      break;
      
      case 2:
      pushMatrix();
      rectMode(CENTER);
      translate(840, 360);
      
      image(plyr3, -100, -190);
      popMatrix();
      break;
      
      case 3:
      pushMatrix();
      rectMode(CENTER);
      translate(840, 360);
      
      image(plyr4, -100, -190);
      popMatrix();
      break;
      
      case 4:
      pushMatrix();
      rectMode(CENTER);
      translate(840, 360);
      
      image(plyr5, -100, -190);
      popMatrix();
      break;
      
      case 5:
      pushMatrix();
      rectMode(CENTER);
      translate(840, 360);
      image(plyr6, -100, -190);
      popMatrix();
      break;
        
      }
    
  }
} 