part of pixi2dart;

class Sprite extends JsObjectWrapper
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
    
// --------------------------------------->
    
    set positionX(num x) => _js["position"]["x"] = x;
    num get positionX => _js["position"]["x"];
    
    set positionY(num y) => _js["position"]["y"] = y;
    num get positionY => _js["position"]["y"];
    
    set position(Point point)
    {
        positionX = point.x;
        positionY = point.y;
    }
    
    Point get position => new Point(positionX, positionY);
    
// --------------------------------------->
    
    num get rotation => _js["rotation"];
    set rotation(num rotation) => _js["rotation"] = rotation;
}