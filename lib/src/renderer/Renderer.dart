part of pixi2dart;

abstract class Renderer extends JsObjectWrapper
{    
    Renderer(String type, num width, num height) : super(new JsObject(context['PIXI'][type], [width, height]));
    
// --------------------------------------->
    
    CanvasElement get view => _js["view"];
    
    void render(Stage stage)
    {
        _js.callMethod("render", [stage._js]);
    }
}
