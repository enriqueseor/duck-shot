

class Button {
  PImage name;
  float x, y;
  float width, height;

  public Button(String name, float x, float y, float width, float height) {
    this.name = loadImage(name);
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  public void show() {
    image(name, x, y, width, height);
  }

  public boolean isClicked() {
    return mouseX >= x && mouseX <= x + width && mouseY >= y && mouseY <= y + height;
  }
}
