part of pixi2dart;

class Sprite extends DisplayObject
{    
    Sprite(Texture texture) :  super(new JsObject(context['PIXI']['Sprite'], [texture._js]));

// --------------------------------------->
    
    set anchorX(num x) => _js["anchor"]["x"] = x;
    num get anchorX => _js["anchor"]["x"];
    
    set anchorY(num y) => _js["anchor"]["y"] = y;
    num get anchorY => _js["anchor"]["y"];
    
    set anchor(Point point)
    {
        anchorX = point.x;
        anchorY = point.y;
    }
    
    Point get anchor => new Point(anchorX, anchorY);
}