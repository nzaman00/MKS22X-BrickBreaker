class Ball extends Thing implements Moveable, Collideable {
  float x = 300;
  float y = 300;
  float r = 15;
  float Yspeed = random(3,5);
  float Xspeed = random(-5,5);
  void display(){
    fill(255, 204, 0);
    noStroke();
    ellipse(x,y,2*r,2*r);
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
  
  /*x += Xspeed;
  y += Yspeed;*/
  dealWCollision(p);
  for(int i =0; i < bricksToDisplay.size(); i++) {
     dealWCollision(bricksToDisplay.get(i)); 
  }
  x += Xspeed;
  y += Yspeed;
  /*dealWCollision(a);
  dealWCollision(c);
  dealWCollision(d);
  dealWCollision(e);
dealWCollision(f);*/
 // distFrmCtr(p);
  }
  void dealWCollision(Thing other){
    if(other instanceof Platform){
      Platform plat = (Platform) other;
      if(plat.x<= this.x && plat.x+ plat.wd >= this.x && this.y+15 >= plat.y && this.y+15 <= plat.y+15){
        Yspeed *= -1;
        //fix this!!!
        /*if((this.x == plat.x+75) || (this.x+50 >= plat.x+25 && this.x-50 <= plat.x+25)){
         Xspeed *= .5;
         println("steadied");
       }else{
       Xspeed *= 1.25;
       println("wild");}*/
        println("Collision");
      }else{
      if( this.y+this.r >= plat.y && this.y+this.r <= plat.y+plat.ht && this.x+this.r>=plat.x&& this.x-this.r<= plat.x+plat.wd){
       y= y-5;
       Yspeed *= -1;
       /*if(this.x+15>=plat.x || this.x-15 <=plat.x){
        Xspeed *= 1.5; 
        println("WILD");
       }*/
       println("bounce");
      }
      }
    }
    if(other instanceof Bricks){
     Bricks Brick = (Bricks) other;
     if(  this.y-this.r <= Brick.y+Brick.h&& this.y-this.r >= Brick.y && this.x >= Brick.x && this.x <= Brick.x +Brick.w){//from bottom
       y+= 10;
       Yspeed *= -1;
       if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       }
    }
    if( this.y+this.r <= Brick.y+Brick.h&& this.y+this.r >= Brick.y && this.x >= Brick.x && this.x <= Brick.x +Brick.w){//top
      Yspeed *= -1;
      if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       }
      }
      if(this.y >= Brick.y && this.y <= Brick.y +Brick.h && (this.x+25 == Brick.x || this.x-25 == Brick.x+50)){//side
      x += 10;
       Yspeed *= -1;
       Xspeed *= -1;
       if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       }
    }
    if(  this.y - this.r <= Brick.y+Brick.h&&    this.y+this.r >= Brick.y /*&& this.y+this.r <= Brick.y+Brick.h*/ && this.x+this.r>=Brick.x&& this.x-15<= Brick.x+Brick.w){
       y= y-5;
       Yspeed *= -1;
       //Xspeed *= -1;
       if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       }
    }
      
    }
    }
  //void distFrmCtr(Thing other){
    
   // if(other instanceof Platform){
     // Platform plat = (Platform) other;
     // if(this.x == plat.x+75){
       // Xspeed = 0;
      //}
     // if(plat.x+75
      
   // }
    
    
 // }
  
}
