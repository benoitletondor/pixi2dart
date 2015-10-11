part of pixi2dart;

/**
 * The Circle object can be used to specify a hit area for displayObjects
 * http://pixijs.github.io/docs/PIXI.Circle.html
 */
class Circle extends JsObjectWrapper {
  Circle(JsObject object) : super(object);

  Circle.fromValues(num x, num y, num radius)
      : super(new JsObject(_PIXI["Circle"], [x, y, radius]));

// ------------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Circle.html#radius
  set radius(num value) => _js["radius"] = value;
  num get radius => _js["radius"];

  /// http://pixijs.github.io/docs/PIXI.Circle.html#x
  set x(num value) => _js["x"] = value;
  num get x => _js["x"];

  /// http://pixijs.github.io/docs/PIXI.Circle.html#y
  set y(num value) => _js["y"] = value;
  num get y => _js["y"];

// ------------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Circle.html#clone
  Circle clone() => new Circle(_js.callMethod("clone"));

  /// http://pixijs.github.io/docs/PIXI.Circle.html#contains
  bool contains(num x, num y) => _js.callMethod("contains", [x, y]);

  /// http://pixijs.github.io/docs/PIXI.Circle.html#getBounds
  Rectangle getBounds() => new Rectangle(_js.callMethod("getBounds"));
}
