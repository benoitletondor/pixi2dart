part of pixi2dart;

/// http://pixijs.github.io/docs/PIXI.Rectangle.html
class Rectangle extends JsObjectWrapper {
  Rectangle(JsObject object) : super(object);

  Rectangle.fromValues(num x, num y, num width, num height)
      : super(new JsObject(_PIXI["Rectangle"], [x, y, width, height]));

// ------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Rectangle.html#.EMPTY
  static Rectangle get EMPTY => new Rectangle(_PIXI["Rectangle"]["EMPTY"]);

  /// http://pixijs.github.io/docs/PIXI.Rectangle.html#x
  set x(num value) => _js["x"] = value;
  num get x => _js["x"];

  /// http://pixijs.github.io/docs/PIXI.Rectangle.html#y
  set y(num value) => _js["y"] = value;
  num get y => _js["y"];

  /// http://pixijs.github.io/docs/PIXI.Rectangle.html#width
  set width(num value) => _js["width"] = value;
  num get width => _js["width"];

  /// http://pixijs.github.io/docs/PIXI.Rectangle.html#height
  set height(num value) => _js["height"] = value;
  num get height => _js["height"];
}
