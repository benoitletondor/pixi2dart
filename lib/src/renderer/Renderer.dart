part of pixi2dart;

abstract class Renderer extends JsObjectWrapper
{    
    Renderer(String type, num width, num height) : super(new JsObject(PIXI._PIXI[type], [width, height]));
    
// --------------------------------------->
    
    CanvasElement get view => _js["view"];
    
    void render(Container container)
    {
        _js.callMethod("render", [container._js]);
    }
}
