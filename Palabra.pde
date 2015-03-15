public class Palabra{

  String palabra1;
  String palabra2;
  String palabra3;
  String palabra4;
  int opcionCorrecta;
  int opcionElegida = 20;
  int puntos = 0;
  float timeNow;
  String imAct;
  
  Palabra(String palabra1, String palabra2, String palabra3, String palabra4, int opcionCorrecta){
    this.palabra1 = palabra1;
    this.palabra2 = palabra2;
    this.palabra3 = palabra3;
    this.palabra4 = palabra4;
    this.opcionCorrecta = opcionCorrecta;
    //this.timeNow = millis();
  }
  
  void dibujarPalabras(PImage s){
    image(s, width*0.2,height*0.05, width*0.7, height*0.4);
    textFont(f,32);                 // STEP 4 Specify font to be used
    fill(255);  
    text(palabra1, width*0.35,height*0.66);  // STEP 6 Display Text
    text(palabra2 ,width*0.35,height*0.76);
    text(palabra3,width*0.35,height*0.86);
    text(palabra4,width*0.35,height*0.96);
    
    if(mousePressed){
      if(overRect(0, 0, width, height )){
        opcionElegida = 1;
      }
      
      if(overRect(0, height*0.62, width, height*0.70 )){
        opcionElegida = 1;
      }
      if(overRect(0, height*0.72, width, height*0.80 )){
        opcionElegida = 2;
      }
      if(overRect(0, height*0.82, width, height*0.90 )){
        opcionElegida = 3;
      }
      if(overRect(0, height*0.92, width, height )){
        opcionElegida = 4;
      }
      
      if(opcionElegida == opcionCorrecta){
        puntos++;
      }
      
      seguir = false;
    }
  }
    
  
  
  
  
  boolean overRect(float x, float y, float width1, float height1)  {
    if (mouseX >= x && mouseX <= x+width1 && mouseY >= y && mouseY <= y+height1) {
      return true;
    } else {
      return false;
    }
   }
}
