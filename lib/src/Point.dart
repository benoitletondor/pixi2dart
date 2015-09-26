part of pixi2dart;

/// http://pixijs.github.io/docs/PIXI.Point.html
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
}
