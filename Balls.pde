class Balls {
  PVector position;
  PVector velocity;
  int diameter;
  color colour;

  Balls() {
    position = new PVector(width/2, height/2);
    velocity = new PVector(random(-10, 10), random(-10, 10));
    diameter = 30;
    colour = color(random(0, 255), random(0, 255), random(0, 255));
  }

  void draw() {
    noStroke();
    fill(colour);
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;
    
    circle(position.x, position.y, diameter);

    if (position.x < diameter/2) {
      velocity.x = random(5, 10);
      Blop.play();
      colour = color(random(0, 255), random(0, 255), random(0, 255));
    }
    if (position.x > width - diameter/2) {
      velocity.x = random(-10, -5);
      Blop.play();
      colour = color(random(0, 255), random(0, 255), random(0, 255));
    }

    if (position.y < diameter) {
      velocity.y = random(5, 10);
      Blop.play();
      colour = color(random(0, 255), random(0, 255), random(0, 255));
    }
    if (position.y > height - diameter/2) {
      velocity.y = random(-10, -5);
      Blop.play();
      colour = color(random(0, 255), random(0, 255), random(0, 255));
    }
  }
}
