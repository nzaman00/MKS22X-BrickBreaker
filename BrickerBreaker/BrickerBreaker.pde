interface Displayable{
  void display();
}
interface Moveable{
  void move();
}
interface Collideable{
  void dealWCollision(Thing other);
}

abstract class Thing implements Displayable{
  float x,y;
}

//ball
  

//platform
ArrayList<Displayable> thingsToDisplay;
ArrayList<Moveable> thingsToMove;
 Ball a;
 Platform b;
void setup() {
  size(600, 600);

  thingsToDisplay = new ArrayList<Displayable>();
  thingsToMove = new ArrayList<Moveable>();
    b = new Platform();
    a = new Ball();
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
