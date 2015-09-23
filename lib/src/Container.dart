part of pixi2dart;

class Container extends JsObjectWrapper
{
    Container() : super(new JsObject(context['PIXI']['Container']));
    
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