

class Button {
  PImage name;
  float xStart, yStart, xEnd, yEnd;

  public Button(String name, float xStart, float xEnd, float yStart, float yEnd) {
    this.name = loadImage(name);
    this.xStart = xStart;
    this.yStart = yStart;
    this.xEnd = xEnd;
    this.yEnd = yEnd;
  }

  public void show() {
    image(name,xStart,yStart);
  }
}
