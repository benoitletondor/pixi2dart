part of pixi2dart;

class Sprite extends DisplayObject
{    
    Sprite(Texture texture) :  super(new JsObject(PIXI._PIXI['Sprite'], [texture._js]));

// --------------------------------------->
    
    set anchor(Point point) => _js["anchor"] = point._js;
    
    Point get anchor => new Point(_js["anchor"]);
}