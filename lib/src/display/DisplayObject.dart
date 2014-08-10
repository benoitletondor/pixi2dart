part of pixi2dart;

abstract class DisplayObject extends JsObjectWrapper
{
    DisplayObject(JsObject js) : super(js);
    
// ------------------------------------------>
    
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