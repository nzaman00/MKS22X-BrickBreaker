class Bricks extends Thing{
 float w;
 float h;
 float x;
 float y;
 float c1, c2, c3;
 //float[][] Col = new float[3][3];
 //Col[0][0] = 20.0;
 //Col[0][1] = 75;
 //Col[0][2] = 200;
 //Col[1][0] = 255;
 //Col[1][1] = 204;
 //Col[1][2] = 0;
 float count;
 
 Bricks(float xCor, float yCor){
  x = xCor;
  y = yCor;
  w = 50;
  h = 25;
  //c1 = random(0,300);
  //c2 = random(0,300);
 // c3 = random(0, 300);
 count = (int)random(0,3);
 }
 void display(){
  //fill(c1, c2, c3);
  if(count >= 0 && count < 1){
    fill(0,75,0);
  }
  if(count >= 1 && count <2){
    fill(255, 204, 0);
  }
  if(count == 2.0){
    fill(255,0,0);
  }
  stroke(0);
  rect(x, y, w, h); 
  println(count);
 }
}
