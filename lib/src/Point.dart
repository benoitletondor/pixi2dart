part of pixi2dart;

// http://pixijs.github.io/docs/PIXI.Point.html
class Point extends JsObjectWrapper
{
    Point(JsObject object) : super(object);
    Point.fromValue(num x, num y) : super(new JsObject(PIXI._PIXI["Point"], [x, y]));
    
    // http://pixijs.github.io/docs/PIXI.Point.html#x
    set x(num value) => _js["x"] = value;
    num get x => _js["x"];
    
    // http://pixijs.github.io/docs/PIXI.Point.html#y
    set y(num value) => _js["y"] = value;
    num get y => _js["y"];
}