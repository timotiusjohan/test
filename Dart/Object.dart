class Point {
  var x, y;
  // ini versi lain dari constructor di dart
  // Point(a, b) {
  //   x = a;
  //   y = b;
  // }

  //constructor gini juga bisa
  Point(this.x, this.y);
}

void main() {
  var origin = new Point(0, 0);
  var aPoint = new Point(9, 3);
  var anotherPoint = Point(7, 4); //ngga ada 'new' nya tapi bisa karena otomatis
  //ditambahin 'new'

  print(origin.x);
  print(aPoint.y);
  print(anotherPoint.x);
}
