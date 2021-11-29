//Global Variables
Ball b1;
Ball b2;
Ball b3;

//Setup Method
public void setup()
{
  size(800, 800);  
  background(120);
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball(5, 80);
}

//Draw Method
public void draw()
{
  background(120);
  b1.update();
  b1.drawBall();
  b1.checkEdges();
  b2.update();
  b2.drawBall();
  b2.checkEdges();
  b3.update();
  b3.drawBall();
  b3.checkEdges();
}

public class Ball
{
  //Instance Variables
  private int x;
  private int y;
 
  private int xD;
  private int yD;
 
  private int diameter;
  //Assume size(800, 800)
  //Constructors
  public Ball()
  {
    x = (int)(Math.random()*800);
    y = (int)(Math.random()*800);
    xD = 5;
    yD = 5;
    diameter = (int)(Math.random()*50 + 10);
  }
 
  public Ball(int speed, int d)
  {
    x = (int)(Math.random()*800);
    y = (int)(Math.random()*800);
    xD = speed;
    yD = speed;
    diameter = d;
  }
  //Methods
  public void update()
  {
    x+=xD;
    y+=yD;
  }
 
  public void drawBall()
  {
    ellipse(x, y, diameter, diameter);
  }
 
  public void checkEdges()
  {
    if (x < 0 || x > width)
    xD*=-1;
    if(y < 0 || y > height)
    yD*=-1;
  }
}
