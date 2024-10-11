Balls[] balls = new Balls[1000];
import processing.sound.*;
SoundFile Blop;

void setup()
{
  size(1000, 1000);
  fill(255, 177, 8);
  textSize(48);
  Blop = new SoundFile(this, "blop.wav");
  for (int i = 0; i < balls.length; i = i + 1) {
    balls[i] = new Balls();
  }
}

void draw()
{
  background(120);
  for (int i = 0; i < balls.length; i = i + 1) {
    balls[i].draw();
  }
}
