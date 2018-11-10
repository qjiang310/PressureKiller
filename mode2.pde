void setup() {
  size(800, 600);
  background(240);
}
void draw() {
  circle();
  //if(mousePressed && (mouseButton == LEFT)) {
  //  float s = random(80,90);
  //  float R = random(0,10);
  //  float G = random(150,164); 
  //  float B = random(250,255); 
  //  stroke(20);
  //  fill(R,G,B);
  //  ellipse(mouseX,mouseY,s,s);
  //} else if(mousePressed && (mouseButton == RIGHT)){
  //  float s = random(80,90);
  //  float R = random(0,10);
  //  float G = random(150,164); 
  //  float B = random(250,255); 
  //  stroke(20);
  //  fill(R,G,B);
    
  //  ellipse(mouseX,mouseY,s,s);
  //  ellipse(800-mouseX,mouseY,s,s);
  //}
}

void circle(){
  if(mousePressed && (mouseButton == LEFT)) {
    float s = random(80,90);
    float R = random(0,10);
    float G = random(150,164); 
    float B = random(250,255); 
    stroke(20);
    fill(R,G,B);
    ellipse(mouseX,mouseY,s,s);
  } else if(mousePressed && (mouseButton == RIGHT)){
    float s = random(80,90);
    float R = random(0,10);
    float G = random(150,164); 
    float B = random(250,255); 
    stroke(20);
    fill(R,G,B);
    
    ellipse(mouseX,mouseY,s,s);
    ellipse(800-mouseX,mouseY,s,s);
  }
}
