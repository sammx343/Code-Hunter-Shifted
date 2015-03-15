public class pantallaDeInicio{
  
  int x, y;
  
  
  void showPantalla(){
    if (k == 0){
      image(img, 0, 0, width, height);
    }
    if (k == 1){
      image(img2, 0, 0, width, height);
    }
    if (k == 2){
      image(gameType, 0, 0, width, height);
    }
    
    if (k == 3 && P == 1){
       P++;
    }
    
    if (k == 4){
      if (overRect(0, height/10, width, height/2)){
        image(gameLink, 0, 0, width, height);
      }
    }
    
    if (k == 5 && P == 1){
       P++;
    }
    
    
    if (menu){
      image(Menu, width*0.62, height*0.105);
      image(homeButton,width*0.64,height*0.11);
      image(outButton,width*0.66,height*0.2);
    }
  }
  
  
  boolean overRect(int x, int y, int width1, int height1)  {
    if (mouseX >= x && mouseX <= x+width1 && mouseY >= y && mouseY <= y+height1) {
      return true;
    } else {
      return false;
    }
  }
}
