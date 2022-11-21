void setup() {
  size(600,600);
  colorMode(HSB);
}

float startDegree = 0;

void draw() {
  background(255);
  pushMatrix();
  translate(height/2,width/2);
  
  for(float degrees = (startDegree % 360);degrees<360;degrees+=360/5){
    line(0,0,cos(radians(degrees))*100,sin(radians(degrees))*100);
  }
  popMatrix();
  startDegree += 1;
}
