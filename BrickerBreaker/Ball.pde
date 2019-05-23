class Ball extends Thing implements Moveable, Collideable {
  float x = 300;
  float y = 300;
  float Yspeed = random(3,5);
  float Xspeed = random(-5,5);
  void display(){
    fill(255, 204, 0);
    noStroke();
    ellipse(x,y,30,30);
  }
  void move(){
    if(y <= 15){
   Yspeed *= -1;
    }
   //if(y >= 545){ //remove this part when collide works
    // Yspeed *= -1;
 // }
  if(x >= 585){
    Xspeed *= -1;
  }
  if(x <= 15){
    Xspeed *= -1;
  }
  //Xspeed = random(-5,5);
  
  x += Xspeed;
  y += Yspeed;
  dealWCollision(b);
  }
  void dealWCollision(Thing other){
    if(other instanceof Platform){
      Platform plat = (Platform) other;
      if(plat.x<= this.x && plat.x+ plat.wd >= this.x && this.y+15 >= plat.y && this.y+15 <= plat.y+15){
        Yspeed *= -1;
        println("Collision");
      }else{
      if( this.y+15 >= plat.y && this.y+15 <= plat.y+15 && this.x+15>=plat.x&& this.x-15<= plat.x+plat.wd){
       y= y-5;
       Yspeed *= -1;
       println("bounce");
      }
      }
    }
  }
}
