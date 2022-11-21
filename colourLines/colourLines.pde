void setup() {
  size(600,600);
  colorMode(HSB);
}

float numLines = 10.0f;
float saturation = 255;
float hue;

void draw() {
  noStroke();
  background(255);
  
  hue = mouseX;
  saturation = map(mouseY,0,600,0,255);

  for(float i = 0;i<width;i+=width/numLines){
    fill((map(i,0,600,0,255)+(map(mouseX,0,600,0,255)))%255, saturation, 255);
    rect(i,0,i+width/numLines,height);
  }

  
}
