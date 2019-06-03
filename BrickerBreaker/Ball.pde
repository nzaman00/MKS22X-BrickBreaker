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
      y = 15;
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
        if(dist(this.x,this.y,plat.x+75,plat.y) <= 25){
         Xspeed *= .8; 
         
        }else{
        if(dist(this.x,this.y,plat.x+75,plat.y) >= 50){
         Xspeed *= 1.1; 
         
        }
        }
        //fix this!!!
        /*if((this.x == plat.x+75) || (this.x+50 >= plat.x+25 && this.x-50 <= plat.x+25)){
         Xspeed *= .5;
         println("steadied");
       }else{
       Xspeed *= 1.25;
       println("wild");}*/
      }else{
      if( this.y+this.r >= plat.y && this.y+this.r <= plat.y+plat.ht && this.x+this.r>=plat.x&& this.x-this.r<= plat.x+plat.wd){
       y= y-5;
       Yspeed *= -1;
       Xspeed *= -1.25;
       /*if(this.x+15>=plat.x || this.x-15 <=plat.x){
        Xspeed *= 1.5; 
        println("WILD");
       }*/
      // println("bounce");
      }
      }
    }
    if(other instanceof Bricks){
     Bricks Brick = (Bricks) other;
     if(this.x>= Brick.x && this.x <= Brick.x+ Brick.w){//top and bottom
      if (this.y+this.r >= Brick.y && this.y < Brick.y + Brick.h){
       y -= 5;
       Yspeed *= -1;
       if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       }
      }
      if(this.y-this.r <= Brick.y+Brick.h && this.y> Brick.y){
       y +=5;
       Yspeed *= -1;
       if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       }
      }
     }
     if(this.y>= Brick.y && this.y <= Brick.y+ Brick.h){//left and right
      if(this.x +r >= Brick.x && this.x < Brick.x+Brick.w){//from the left
        x -= 5;
        Xspeed *= -1;
        if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       }
      }
      if(this.x-r <= Brick.x+Brick.h && this.x > Brick.x){//from the right
        x += 5;
        Xspeed *= -1;
        if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       } 
      }
      
     }
     if(dist(this.x, this.y, Brick.x, Brick.y) <= sqrt(2) * this.r){//top left diag
       y -= this.r;
       x+= this.r;
       Xspeed *= -1;
       Yspeed *= -1;
       if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       } 
       
       
     }
     if(dist(this.x,this.y, Brick.x, Brick.y+Brick.h) <= sqrt(2) * this.r){//bottom left diag
       x += this.r;
       y += this.r;
       Xspeed *= -1;
       Yspeed *= -1;
       if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       } 
       
     }
     if(dist(this.x,this.y,Brick.x+Brick.w,Brick.y)<= sqrt(2)*this.r){//top right
       x -= this.r;
       y -= this.r;
       Xspeed *= -1;
       Yspeed *= -1;
       if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       }   
     }
     if(dist(this.x,this.y,Brick.x+Brick.w,Brick.y+Brick.h) <= sqrt(2)*this.r){//bottom right
       x-= this.r;
       y+= this.r;
       Xspeed *= -1;
       Yspeed *= -1;
       if(Brick.count > 0){
         Brick.count--;
       }
       else{
         bricksToDisplay.remove(Brick);
       }   
       
     }
     
 
      
    }
    }
  
}
