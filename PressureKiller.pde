  boolean colorRandomStroke = false;
  boolean colorSquare = false;
  boolean colorCircle = false;
  boolean menuOn = false;
  float stroke_weight =2;
  float colorStroke = 0;
  int stroke_color = 0;
  //int fill_grey =0;
  String text_1 = "Click m to display menue";
  String text_menu = "Press m to hide menue\nPress 1, 2, 3 to select paint tool\nPress x to clear the canvas\nPress s to save as jpg.\nPress p to save as pdf.";
  
  void setup() {
    size(1920, 1920);
    background(255);
    colorMode(HSB, 255);//could set max range
    //in a raninbow mode
     //size(100, 100, P2D);
     textSize(40);
     fill(0, 102, 153, 204);
     text( text_1, 50, 50); 

    }  
    void draw() {
     if(menuOn == true){ 
     textSize(20);
     fill(0, 70, 153, 204);
     text( text_menu, 50, 90); }
     
    
     if(colorRandomStroke == true){
         int dir =1;//need some variable to control if statement, could use boolean
      //but use -1 and 1 also simple
       if (colorStroke<255 && dir==1) {  
          colorStroke++;//neeed a color oscillater
      }
      if (colorStroke > 0 && dir == -1) {
        colorStroke -- ;
      }
      if (colorStroke == 255) {
        dir *= -1;
      } 
      if (colorStroke == 0) {
        dir *= -1;
    }
  
  
    println(colorStroke);
    //  stroke(grey,0,0);//rgb
    stroke(colorStroke, 100, 255);//hue, saturation, brightness
    //use hsb, 
    //colorMode()
    colorStroke =random(0, 255);
   // stroke(grey);
    stroke_weight = random(0, 20);
    strokeWeight(stroke_weight);
  
    smooth();
    if (mousePressed) {
      line(pmouseX, pmouseY,mouseX, mouseY);
    }
   }
    
    if(keyPressed){
    if(key == 'x' || key == 'X'){
   // clear();//clear all including the background
    clear();
   background(255);}
   if(key == 'S' || key == 's'){//Save jpg
   save("drawing.jpg");
 }
   if(key == 'p' || key == 'P'){
   println("recording file");
   beginRecord(PDF, "drawing.pdf");
   }
   if(key == 'm' || key == 'M'){
   menuOn = true;}
    if(key == '1' || key == '!'){//mode1: colorRandomStroke
   colorRandomStroke = true;
   }
   if(key == '2' || key == '@'){//mode2: square
   colorSquare = true;
   }
   if(key == '3' || key == '#'){
   colorCircle = true;  
   }
    
  }
  }
