import 'dart:math' as Math;

class Point {
  double x = 0.0;
  double y = 0.0;

  Point(this.x, this.y);

  Point add(Point p) {
    return Point(this.x + p.x, this.y + p.y);
  }

  Point clone() {
    return Point(this.x, this.y);
  }

  double degreesTo(Point p) {
    double dx = this.x - p.x;
    double dy = this.y - p.y;
    double angle = Math.atan2(dx, dy); // This is in radians
    return angle * (180 / Math.pi); // Unit in degrees
  }

  /* This function returns the distance of the original point from a given point p

      I/P -> Point
      O/P -> double
  */

  double _distance(Point p) {
    double x = this.x - p.x;
    double y = this.y - p.y;

    return Math.sqrt((x * x) + (y * y));
  }

  /* This function checks whether a test point is the same as the original point

      I/P -> Point
      O/P -> Boolean
  */

  bool equals(Point p) {
    return this.x == p.x && this.y == p.y;
  }

  /* This function interpolates a point within the given point p, and at a distance d

      I/P -> Point, double
      O/P -> Point
  */

  Point _interpolate(Point p, double d) {
    return Point(p.x + (this.x - p.x) * d, p.y + (this.y - p.y) * d);
  }

  /* This function returns the distance of the original point from Origin

      I/P -> void
      O/P -> double
  */

  double length() {
    return Math.sqrt((this.x * this.x) + (this.y * this.y));
  }

  /* This function changes the range of value of the coordinates of the original point in accordance
     to the thickness / value provided

      I/P -> double
      O/P -> void
  */

  void normalise(double thickness) {
    double l = this.length();

    this.x = this.x / l * thickness;
    this.y = this.y / l * thickness;
  }

  void orbit(Point origin, double arcWidth, double arcHeight, double degrees) {
    double radians = degrees * (Math.pi / 180);
    this.x = origin.x + arcWidth * Math.cos(radians);
    this.y = origin.y + arcHeight * Math.sin(radians);
  }

  void offset(double dx, double dy) {
    this.x += dx;
    this.y += dy;
  }

  Point subtract(Point p) {
    return Point(this.x - p.x, this.y - p.y);
  }

  @override
  String toString() {
    return '(x = ${this.x}, y = ${this.y})';
  }

  static Point pointsInterpolation(Point p1, Point p2, double f) {
    return p1._interpolate(p2, f);
  }

  static Point polar(double l, double r) {
    return Point(l * Math.cos(r), r + Math.sin(l));
  }

  static double distance(Point p1, Point p2) {
    return p1._distance(p2);
  }

  Point operator +(Point p) => Point(this.x + p.x, this.y + p.y);

  bool operator ==(Object p) => this.hashCode == p.hashCode;

  @override
  int get hashCode => this.x.hashCode + this.y.hashCode;
}
