/*
SoRotative :Y
By Mike M
*/
RotBox TheBox;
boolean Up = false;
boolean Down = false;
boolean Left = false;
boolean Right = false;
boolean Clockwise = false;
boolean Counterwise = false;
float x_rot = 0;
float y_rot = 0;
float z_rot = 0;


void setup()
{
  size(600, 600, P3D);
  TheBox = new RotBox();
  
}

void draw()
{
  background(0);
  lights();
  TheBox.Render();
  rotation_box();
}

void rotation_box()
{
  if (Up == true)
  {
    x_rot +=0.02;
  }
  if (Down == true)
  {
    x_rot -=0.02;
  }
  if (Left == true)
  {
    y_rot -=0.02;
  }
  if (Right == true)
  {
    y_rot +=0.02;
  }
  if (Clockwise == true)
  {
    z_rot +=0.02;
  }
  if (Counterwise == true)
  {
    z_rot -=0.02;
  }
}

void keyPressed()
{
  if(key =='w')
  {
    Up = true;
  }
   if(key =='s')
  {
    Down = true;
  }
   if(key =='a')
  {
    Left = true;
  }
   if(key =='d')
  {
    Right = true;
  }
   if(key =='e')
  {
    Clockwise = true;
  }
   if(key =='q')
  {
    Counterwise = true;
  }
}

void keyReleased()
{
   if(key =='w')
  {
    Up = false;
  }
   if(key =='s')
  {
    Down = false;
  }
   if(key =='a')
  {
    Left = false;
  }
   if(key =='d')
  {
    Right = false;
  }
   if(key =='e')
  {
    Clockwise = false;
  }
   if(key =='q')
  {
    Counterwise = false;
  }
}