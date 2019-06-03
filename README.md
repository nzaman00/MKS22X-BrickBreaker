# MKS22X-BrickBreaker
## Project Description:
This project is a remade version of the famous Brick Breaker game. Using the platform, bounce the ball to hit all the bricks without letting the ball fall off the screen.
## Directions:
You only need to use the mouse to play the game. Use the mouse to control the platform, but you can only move the mouse left to right. You win if you can clear all the bricks, you lose if the ball drops off the screen.
## 5/20: 
Made the platform class, got it to move properly. The platform class moves along with the mouse, but if it reaches the walls, it does not move further.
## 5/21:
Made ball class and got it to bounce off the walls as if it was a real ball, but it does not bounce off the platform
## 5/22:
Got the ball class to bounce off the platform when they collide
## 5/23:
Fixed ball class to bounce when hit diagonally by the platform, but it does not move realistically. Fixed the bug where the ball keeps bouncing even after it falls off.
## 5/24:
Fixed the ball class so that the Xspeed of the ball changes depending on where the ball hits the platform. The closer to the middle, the steadier it moves.
## 5/27:
Made brick class constructor, but it does not collide yet. I changed the background temporarily to white so it's easier to see the bricks while I test everything
## 5/28:
Got the ball to bounce off a brick if hit from the bottom, from the top, or from the sides directly, but still have to get it to collide diagonally as well. Got the bricks to all load as different colors
## 5/29: 
Attempted to fix the bug with the ball get steadier and wilder, did not work out well. Also made it possible for the ball to hit the Bricks diagonally, there are a few bugs, but they shouldn't matter once the bricks ca disappear
## 5/30:
Tried to fix the bug where the ball goes through the bricks diagonally, did not work out well, but I also got the bricks to be in an array, so making them disappear finally works.
## 5/31:
Started making new algorithm with the help of Mr K to try fixing the bug, the top and bottom works well. 
