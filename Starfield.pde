NormalParticle[] cactus = new NormalParticle[500];
    double circ = 0;
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
      for (int i =0; i < 13; i++)
  {
    circ = circ + (float)1/6;
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
    rect((float)myX, (float)myY, 20, 20);
  }
  void move()
  {
    myX = myX + 50*(Math.cos(PI*circ));
    myY = myY + 50*(Math.sin(PI*circ));
  }
}
class Jumbo extends NormalParticle //uses inheritance
{
  void show()
  {
    fill (69, 135, 214);
    noStroke();
    rect((float)myX, (float)myY, 50, 50);
  }
}