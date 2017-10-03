NormalParticle[] cactus = new NormalParticle[500];

void setup()
{
  background(0);
  size(500, 500);
  for (int i =0; i < cactus.length; i++)
  {
    cactus[i] = new NormalParticle();
    cactus[1] = new Jumbo();
    cactus[0] = new Oddball();
  }
}
void draw()
{
  background(0);
  for (int i =0; i < cactus.length; i++)
  {
    cactus[i].move();
    cactus[i].show();
  }
}
class NormalParticle
{
  double myX, myY, myAng, mySpeed;
  int myColor;
  NormalParticle()
  {
    myX = 250;
    myY = 250;
    myAng = (Math.random())*4*PI;
    mySpeed = (Math.random()*5)-2;
    myColor = color((int)(Math.random()*256), 255, (int)(Math.random()*256));
  }
  void move()
  {
    myX = myX + (Math.cos(myAng))*mySpeed;
    myY = myY + (Math.sin(myAng))*mySpeed;
  }
  void show()
  {
    fill (myColor);
    noStroke();
    rect((float)myX, (float)myY, 5, 5);
  }
}
interface Particle
{
  public void move();
  public void show();
}
class Oddball extends NormalParticle //uses an interface
{
  void show()
  {
    fill (214, 69, 88);
    noStroke();
    rect((float)myX, (float)myY, 50, 50);
  }
  void move()
  {
    myX = myX + (Math.random()*5)-2;
    myY = myY + (Math.random()*5)-2;
  }
}
class Jumbo extends NormalParticle //uses inheritance
{
  void show()
  {
    fill (69, 135, 214);
    noStroke();
    rect((float)myX, (float)myY, 20, 20);
  }
}
