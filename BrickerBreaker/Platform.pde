`class Platform extends Thing implements Moveable {
  float ht= 33;
  float wd = 150;
  float y = 550;
  float x = mouseX;
 // void setup() {
 //   size(400, 200);
  //  noStroke();
 // }

  void display() {
    background(0);
    fill(209);
    rect(x, y, wd, ht);
  
  }
  void move() {
    if (mouseX > 450){
       x = 450;
    }else{
      x = mouseX;
    }
  }
  
}
