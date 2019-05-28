class Bricks extends Thing{
 float w;
 float h;
 float x;
 float y;
 float c1, c2, c3;
 Bricks(float xCor, float yCor){
  x = xCor;
  y = yCor;
  w = 50;
  h = 25;
  c1 = random(0,300);
  c2 = random(0,300);
  c3 = random(0, 300);
 }
 void display(){
  fill(c1, c2, c3);
  stroke(0);
  rect(x, y, w, h); 
 }
}
