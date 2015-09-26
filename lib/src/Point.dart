part of pixi2dart;

/**
 * The Point object represents a location in a two-dimensional coordinate system, 
 * where x represents the horizontal axis and y represents the vertical axis.
 * http://pixijs.github.io/docs/PIXI.Point.html
 * 
 * NB: This class extends the Point of the Dart HTML package
 */
class Point extends html.Point implements JsObjectWrapper {
  JsObject _js;

  Point(JsObject _js) : super(_js["x"], _js["y"]) {
    assert(_js != null);
    this._js = _js;
  }

  Point.fromValues(num x, num y) : super(x, y) {
    _js = new JsObject(_PIXI["Point"], [x, y]);
  }

// ------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Point.html#x
  set x(num value) {
    super.x(value);
    _js["x"] = value;
  }

  /// http://pixijs.github.io/docs/PIXI.Point.html#y
  set y(num value) {
    super.y(value);
    _js["y"] = value;
  }

// ------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Point.html#clone
  Point clone() => new Point(_js.callMethod("clone"));

  /// http://pixijs.github.io/docs/PIXI.Point.html#copy
  void copy(Point source) {
    x = source.x;
    y = source.y;
  }

  /// http://pixijs.github.io/docs/PIXI.Point.html#set
  void set(num x, num y) {
    this.x = x;
    this.y = y;
  }
}
