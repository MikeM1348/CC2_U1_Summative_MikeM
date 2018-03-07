class RotBox
{
  PVector position;
  PImage texture;
  PShape cube;

  RotBox()
  {
    position = new PVector(300, 300, -300);
    texture = loadImage("beacon.png");
    cube = createShape(BOX, 100);
    cube.setTexture(texture);
    cube.setStroke(color(255, 255, 255, 0));
  }

  void Render()
  {
    pushMatrix();
    translate(position.x, position.y, position.z);
    rotateX(x_rot);
    rotateY(y_rot);
    rotateZ(z_rot);
    shape(cube);
    popMatrix();
  }
}