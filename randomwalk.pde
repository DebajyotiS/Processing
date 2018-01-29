int r;
int x = 300;
int y = 200;
void setup() {
  size(600,400);
background(0);
}
void draw ()
{
  stroke(255,200,0);
  strokeWeight(1);
  
  ellipse(x,y,0.1,0.1);
  r = floor(random(4));
  switch(r){
  case 0:
  x = x+floor(random(4));
  break;
  case 1:
  x = x-floor(random(4));
  break;
  case 2:
  y=y+floor(random(4));
  break;
  case 3:
  y=y-floor(random(4));
  break;
  }
}