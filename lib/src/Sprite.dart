part of pixi2dart;

/// http://pixijs.github.io/docs/PIXI.Sprite.html
class Sprite extends Container
{    
    Sprite(Texture texture) :  super(new JsObject(PIXI._PIXI['Sprite'], [texture._js]));
    
    /// http://pixijs.github.io/docs/PIXI.Sprite.html#.fromImage
    Sprite.fromImage(String imageId) : super(new JsObject(PIXI._PIXI['Texture']['fromImage'], [imageId]));

// --------------------------------------->
    
    /// http://pixijs.github.io/docs/PIXI.Sprite.html#anchor
    set anchor(Point point) => _js["anchor"] = point._js;
    Point get anchor => new Point(_js["anchor"]);
}