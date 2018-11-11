boolean colorRandomStroke = false;
boolean colorSquare = false;
boolean colorCircle = false;
boolean menuOn = false;
float stroke_weight =5;
float colorStroke = 0;
int stroke_color = 0;
//int fill_grey =0;
String text_1 = "Click m to display menu, click x to restart\n";
String text_menu = "Press 1, 2, 3 to select paint tool\n" 
                 + "Press s to save as jpg.\n"
                 + "Press p to save as pdf.";
int count = 1;

void setup() {
  size(800, 600);  // FIXME want to make it adaptive to different computer
  colorMode(HSB, 255);
  background(255);  // FIXME want to make it chanagable
  
  
  textSize(30);
  fill(0, 102, 153, 204);
  text(text_1, 50, 50);
}

void draw() {
  userSet();
  
  if (menuOn == true) {
    textSize(20);
    fill(0, 70, 153, 204);
    text(text_menu, 50, 90);
  }
  if (colorRandomStroke) {
    mode1();
  }
  if (colorSquare) {
    mode2();
  }
  if (colorCircle) {
    mode3();
  }
  
  showSentence();
}

void userSet() {
  if (keyPressed) {
    if (key == 'x' || key == 'X') {
      clear();
      background(255);
      colorRandomStroke  = false;
      colorSquare = false;
      colorCircle = false;
      textSize(30);
      fill(0, 102, 153, 204);
      text(text_1, 50, 50);
    }
    if (key == 'S' || key == 's') {
      save("drawing.jpg");
    }
    if (key == 'p' || key == 'P') {
      println("drawing file");
      beginRecord(PDF, "drawing.pdf");
    }
    if (key == 'm' || key == 'M') {
      if (menuOn == false) {
        menuOn = true;
      } else {
        menuOn = false;
      }
    }
    if (key == '1') {
      colorRandomStroke = true;
      colorSquare = false;
      colorCircle = false;
    }
    if (key == '2') {
      colorRandomStroke = false;
      colorSquare = true;
      colorCircle = false;
    }
    if (key == '3') {
      colorRandomStroke = false;
      colorSquare = false;
      colorCircle = true;
    }
  }
}
void mode1() {
  colorStroke = random(0, 255);
  stroke(colorStroke, 100, 255);
  stroke_weight = random(10, 20);
  strokeWeight(stroke_weight);
  
  smooth();
  if (mousePressed && (mouseButton == LEFT)) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else if (mousePressed && (mouseButton == RIGHT)) {
    line(800-pmouseX, 800-pmouseY, mouseX, mouseY);
  }
}
void mode2() {//Sqaure
  colorStroke = random(0, 255);
  stroke(colorStroke, 100, 255);
  stroke_weight = random(3, 20); 
  strokeWeight(stroke_weight);
  float c = random(0, 255);
  float w = random(30,35);
  if (mousePressed && (mouseButton == LEFT)) {
    rect(mouseX-10, mouseY-10, w, w);
    fill(c,10);
  } else if (mousePressed && (mouseButton == RIGHT)) {
    rect(mouseX-10, mouseY-10, w, w);
    rect(800-(mouseX-10), 800-(mouseY-10), w, w);
    fill(c,10);
  }
}
void mode3() {
   colorStroke = random(0, 255);
   stroke(colorStroke, 100, 255);
   stroke_weight = random(2, 5); 
   strokeWeight(stroke_weight);
   float c = random (0, 255);
   float s = random(85,90);
   if(mousePressed && (mouseButton == LEFT)) { 
    fill(c,10);
    ellipse(mouseX,mouseY,s,s);
  } else if(mousePressed && (mouseButton == RIGHT)){
    fill(c);
    ellipse(mouseX,mouseY,s,s);
    ellipse(800-mouseX,mouseY,s,s);
  }
}

void showSentence() {
  if (count%500 == 0) {
    textSize(40);
    fill(0, 500, 200, 100);
    text("Try everything you can imagine", random(width-300), random(height-20));
  }
    count++;
}


    
    
  
