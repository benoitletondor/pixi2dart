part of pixi2dart;

class Stage extends JsObjectWrapper
{
    Stage(num color) : super(new JsObject(context['PIXI']['Stage'], [color]));
    
// ---------------------------------------->
    
    void addChild(Sprite sprite)
    {
        _js.callMethod("addChild", [sprite._js]);
    }
    
    void removeChild(Sprite sprite)
    {
        _js.callMethod("removeChild", [sprite._js]);
    }
}