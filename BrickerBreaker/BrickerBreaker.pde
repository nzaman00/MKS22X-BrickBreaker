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
 Ball b;
 Platform p;
void setup() {
  size(600, 600);

  thingsToDisplay = new ArrayList<Displayable>();
  thingsToMove = new ArrayList<Moveable>();
    p = new Platform();
    b = new Ball();
    thingsToDisplay.add(p);
    thingsToDisplay.add(b);
    thingsToMove.add(b);
    thingsToMove.add(p);
}
void draw() {
  background(255);

  for (Displayable thing : thingsToDisplay) {
    thing.display();
  }
  for (Moveable thing : thingsToMove) {
    thing.move();
  }
  textSize(32);
  text(str(b.y), 0,40);
  fill(255);
}
