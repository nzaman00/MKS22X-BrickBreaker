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
ArrayList<Bricks> bricksToDisplay;
 Ball b;
 Platform p;
 Bricks a;
 Bricks c;
 Bricks d;
 Bricks e;
 Bricks f;
void setup() {
  size(600, 600);
  background(0);

  thingsToDisplay = new ArrayList<Displayable>();
  thingsToMove = new ArrayList<Moveable>();
  bricksToDisplay = new ArrayList<Bricks>();
  bricksToDisplay.add(new Bricks(0, 50));
  bricksToDisplay.add(new Bricks(300, 50));
  bricksToDisplay.add(new Bricks(200, 50));
  bricksToDisplay.add(new Bricks(400, 50));
  bricksToDisplay.add(new Bricks(500, 50));
   /* a = new Bricks(0, 50);
    c = new Bricks(300, 50);
    d = new Bricks(200, 60);
    e = new Bricks(400, 50);
    f = new Bricks(500, 60);*/
    p = new Platform();
    b = new Ball();
    /*thingsToDisplay.add(a);
    thingsToDisplay.add(c);
    thingsToDisplay.add(d);
    thingsToDisplay.add(e);
    thingsToDisplay.add(f);*/
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
  for(Bricks thing : bricksToDisplay) {
     thing.display(); 
  }
  textSize(32);
  text(str(b.y), 0,40);
  fill(255);
}
