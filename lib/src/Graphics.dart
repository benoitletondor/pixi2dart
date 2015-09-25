part of pixi2dart;

// http://pixijs.github.io/docs/PIXI.Graphics.html
class Graphics extends Container
{
    Graphics() : super(new JsObject(PIXI._PIXI["Graphics"]));
    
// ---------------------------------------->
    
    // http://pixijs.github.io/docs/PIXI.Graphics.html#beginFill
    void beginFill(num color, {num alpha : 1}) { _js.callMethod("beginFill", [color, alpha]); }
    
    // http://pixijs.github.io/docs/PIXI.Graphics.html#drawRect
    void drawRect(num x, num y, num width, num height) { _js.callMethod("drawRect", [x, y, width, height]); }
}