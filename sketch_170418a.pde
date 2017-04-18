color CurrentColor;
int strokeW;
int flag=0;
int hue=0;
int sat=0;
int bright=0;
int alpha=0;
 
void setup()
{
  size(640, 480);
  colorMode(HSB);
  background(255);
  stroke(hue, sat, bright, alpha);
  CurrentColor = color(210, 210, 210, 210);
 
}
void draw()
{
  noStroke();
  fill(CurrentColor);
  rect(0, 0, 100, 100);
  stroke(CurrentColor);
  strokeWeight(strokeW);
  if(flag==1) line(mouseX, mouseY, pmouseX, pmouseY);
  if (keyPressed){
    if (key == 's') sat = sat-1;
    if (key == 'S') sat = sat+1;
    if (key == 'b') bright = bright-1;
    if (key == 'B') bright = bright+1;
    if (key == 'h') hue = hue-1;
    if (key == 'H') hue = hue+1;
  }
}
 
void mouseDragged() {
  flag=1;
}
void mouseReleased(){
  flag=0;
}
 
 
void keyPressed() {
  if (key == 'c')  
    background(255);
    if (key == 'p') background(CurrentColor);
    if (key == '1') strokeW = 1;
    if (key == '2') strokeW = 2;
    if (key == '3') strokeW = 3;
    if (key == '4') strokeW = 4;
    if (key == '5') strokeW = 5;
    if (key == '6') strokeW = 6;
    if (key == '7') strokeW = 7;
    if (key == '8') strokeW = 8;
    if (key == '9') strokeW = 9;
    if (key == '0') strokeW = 0;  
}

//this program was partially written by someone else