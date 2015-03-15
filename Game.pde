public class Game{
  
 //int 
 int time2;
 //ArrayList<int> num = new ArrayList();
 
 
 void drawGame(){
   
   time2 = time1;
   image(fondo, 0, 0, width, height);
   image(contenedor, 0, height/2, width, height/10);
   image(opcion1,0,height*0.62);
   image(opcion2,0,height*0.72);
   image(opcion1,0,height*0.82);
   image(opcion2,0,height*0.92);
   
   if(escena == 1 && seguir == false){
     palabras[0].dibujarPalabras(car); 
     seguir = true;
   }
   if(escena == 2 && seguir == false){
     palabras[1].dibujarPalabras(boat); 
     seguir = true;
   }
   if(escena == 3 && seguir == false){
     palabras[2].dibujarPalabras(flags); 
     seguir = true;
   }
   if(escena == 4 && seguir == false){
     palabras[3].dibujarPalabras(orange); 
     seguir = true;
   }
   if(escena == 5 && seguir == false){
     palabras[4].dibujarPalabras(penguin); 
     seguir = true;
   }
   if(escena == 6 && seguir == false){
     palabras[5].dibujarPalabras(tree); 
     seguir = true;
   }
 }



}
