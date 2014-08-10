part of pixi2dart;

class Stage extends JsObjectWrapper
{
    Stage(num color) : super(new JsObject(context['PIXI']['Stage'], [color]));
    
// ---------------------------------------->
    
    void addChild(DisplayObject displayObject)
    {
        _js.callMethod("addChild", [displayObject._js]);
    }
    
    void removeChild(DisplayObject displayObject)
    {
        _js.callMethod("removeChild", [displayObject._js]);
    }
}