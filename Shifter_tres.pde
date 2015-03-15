import ketai.ui.*;
import ketai.data.*;
import ketai.sensors.*;
import ketai.net.nfc.record.*;
import ketai.net.bluetooth.*;
import ketai.net.wifidirect.*;
import ketai.net.*;
import ketai.net.nfc.*;
import ketai.camera.*;
import ketai.cv.facedetector.*;

import android.view.MotionEvent;

PImage img;
PImage img2;
PImage gameType;
PImage gameLink;
PImage gameCustom;
PImage Menu;
PImage homeButton;
PImage outButton;
PImage selectedHome;
PImage selectedOut;

PImage boat;
PImage car;
PImage board;
PImage flags;
PImage orange;
PImage penguin;
PImage tree;
  
PImage fondo;
PImage contenedor;
PImage opcion1;
PImage opcion2;

PFont f;

int time;
int wait = 1000;

int P = 1;
int k = 0;
int lastP = 0;
boolean menu = false;
boolean seguir = false;

 int escena = 1;

Palabra[] palabras = new Palabra[8];

pantallaDeInicio PDI;
Game linkIt;

int time1 = 0;

void setup ()
{
  orientation(PORTRAIT);
  f = createFont("Glober Thin Free",25,true); 
  size(displayWidth,displayHeight); 
  
  palabras[0] = new Palabra("car","cards", "care", "carrot", 1);
  palabras[1] = new Palabra("float","coat","coal","boat",4);
  palabras[2] = new Palabra("flat","flan","flag","fat",3);
     palabras[3] = new Palabra("orange","orangey","sporange","tangerine",1);
      palabras[4] = new Palabra("pingu","pengwing","penguin","pengo",3);
       palabras[5] = new Palabra("teeth","three","tree","tick",3);
  
  img = loadImage("pantalla_inicio-01.png");
  img2 = loadImage("gamemode_screen.png");
  gameType = loadImage("screengames.png");
  gameLink = loadImage("mpselect3-01.png");
  gameCustom = loadImage("customize_screen.png");
  Menu = loadImage("menudesplegable.png");

  homeButton = loadImage("home_button.png");
  outButton = loadImage("out_button.png");
  selectedHome = loadImage("selected_home.png");
  selectedOut = loadImage("selected_out.png");
  
  //Images for game
  boat = loadImage("juego/boat.png");
  car = loadImage("juego/car.png");
  board = loadImage("juego/chalk_board.png");
  flags = loadImage("juego/flags.png");
  orange = loadImage("juego/orange.png");
  penguin = loadImage("juego/penguin.png");
  tree = loadImage("juego/tree.png");
  
  fondo = loadImage("juego/fondo_rojo.png");
  contenedor = loadImage("juego/contenedor.png");
  opcion1= loadImage("juego/opcion_one.png");
  opcion2 = loadImage("juego/opcion_two.png");
  
  PDI = new pantallaDeInicio();
  linkIt = new Game();
}

void draw ()
{
  time1++;
  drawPantalla();
  //println(k);
}

void mouseReleased() {
  //Active botton menu
  if (overRect(0, 0 , width, height/10) && k > 0){
    menu = true;
  }
  //Change image
  if (menu == false){
    if (k < 2 && overRect(0,height/10 , width, height/2)){
      k++;
    }
    if (k == 2 && overRect(0, height/2 , width, height )){
      k++;
    }
  }
  
  if((overRect(0, 0, width/2 + width/10, height ) == true) && menu){
     menu = false;
  }
  if(seguir == false){
    escena++;
  }
}

public void drawPantalla(){
   switch(P){
      case 1: 
          PDI.showPantalla();
          break;
      case 2:
          linkIt.drawGame();
          break;
  }
}
 
 boolean overRect(int x, int y, int width1, int height1)  {
    if (mouseX >= x && mouseX <= x+width1 && mouseY >= y && mouseY <= y+height1) {
      return true;
    } else {
      return false;
    }
 }
 
@ Override
void onBackPressed() {
  if (menu == false){
    if(k==0) {
      super.onBackPressed();
    } else {
      k=k-1;
    }
  }else {
    menu = false;
  }
}
