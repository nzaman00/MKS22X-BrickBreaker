interface Displayable{
  void display();
}
interface Moveable{
  void move();
}
//interface Collideable{
//  boolean isTouching(Thing other);
//}

abstract class Thing implements Displayable{
  float x,y;
}
class Ball extends Thing implements Moveable {
  float x = 300;
  float y = 300;
  float Xspeed,Yspeed;
  void display(){
    fill(255, 204, 0);
    noStroke();
    ellipse(x,y,30,30);
  }
  void move(){
   Yspeed = 1;
   if(y >= 550){
     Xspeed = 1;
  }
  x += Xspeed;
  y += Yspeed;
  }
}
  

class Platform extends Thing implements Moveable {
  
  float y = 550;
  float x = mouseX;
 // void setup() {
 //   size(400, 200);
  //  noStroke();
 // }

  void display() {
    background(0);
    fill(209);
    rect(x, y, 150, 33);
  
  }
  void move() {
    if (mouseX > 450){
       x = 450;
    }else{
      x = mouseX;
    }
  }
  
}
ArrayList<Displayable> thingsToDisplay;
ArrayList<Moveable> thingsToMove;

void setup() {
  size(600, 600);

  thingsToDisplay = new ArrayList<Displayable>();
  thingsToMove = new ArrayList<Moveable>();
    Platform b = new Platform();
    Ball a = new Ball();
    thingsToDisplay.add(b);
    thingsToDisplay.add(a);
    thingsToMove.add(a);
    thingsToMove.add(b);
}
void draw() {
  background(255);

  for (Displayable thing : thingsToDisplay) {
    thing.display();
  }
  for (Moveable thing : thingsToMove) {
    thing.move();
  }
}
