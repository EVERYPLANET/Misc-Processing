void setup() {
  fullScreen();
  //size(600,600);
  colorMode(HSB);
}

float numLines = 10.0f;
float saturation = 255;
float colour = 10;
float cycle = 0;
float hue;

void draw() {
  noStroke();
  background(255);
  saturation = map(mouseY,0,600,0,255) + 10;
  numLines = mouseX/(10);

  for(float i = 0;i<width; i+=width/numLines){
    for(float j = 0;j<height; j+=height/numLines+(width/numLines-height/numLines)){
      fill((colour*(i/100)+colour*(j/100)+cycle)%255, saturation, 255);
      circle(i+(width/numLines)/2,j + ((height/numLines)/2),width/numLines);
    }
  }
  
  cycle++;

}
