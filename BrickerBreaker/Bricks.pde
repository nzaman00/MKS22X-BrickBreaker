class Bricks extends Thing{
 float w;
 float h;
 float x;
 float y;
 Bricks(float xCor, float yCor){
  x = xCor;
  y = yCor;
  w = 50;
  h = 25;
 }
 void display(){
  fill(175, 100, 220);
  noStroke();
  rect(x, y, w, h); 
 }
}
