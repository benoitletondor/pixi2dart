part of pixi2dart;

class Graphics extends DisplayObject
{
    Graphics() : super(new JsObject(PIXI._PIXI["Graphics"]));
    
// --------------------------------------------->
    
    void beginFill(num color, {num alpha : 1}) { _js.callMethod("beginFill", [color, alpha]); }
    
    void drawRect(num x, num y, num width, num height) { _js.callMethod("drawRect", [x, y, width, height]); }
}