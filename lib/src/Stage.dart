part of pixi2dart;

class Stage
{
    JsObject _js;
    
// --------------------------------------->
    
    Stage(num color) : _js = new JsObject(context['PIXI']['Stage'], [color]);
    
    void addChild(Sprite sprite)
    {
        _js.callMethod("addChild", [sprite._js]);
    }
}