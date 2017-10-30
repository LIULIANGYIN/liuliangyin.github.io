float[]x= new float [50];
float[]y= new float [50];
float[]w= new float [50];
void setup() {
    size(700, 700);
      background(255);
    smooth();
}
void draw(){
 int i;
  for (i = 1; i < 50; i++) {
    float r, g, b; 
    r = random(200, 255);
    g = random(200, 255);
    b = random(200,255 );
  noStroke();
  fill(r,g,b,80);
  ellipse(x[i],y[i],w[i],w[i]);
  }
}
void mousePressed() {
  int i;
  for (i = 0; i < 50; i++) {
    float r, rx, ry; 
    rx = random(-30,30);
    ry = random(-10,10);
    r = sqrt(rx*rx+ry*ry);
    w[i] = map(r, 0, 300, 50, 10);
    x[i] = mouseX + rx;
    y[i] = mouseY + ry;
  }
}