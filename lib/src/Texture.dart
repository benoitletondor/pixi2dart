part of pixi2dart;

class Texture extends JsObjectWrapper
{   
    Texture(JsObject js) : super(js);
    
// --------------------------------------->
    
    static Texture fromImage(String path)
    {
        return new Texture(new JsObject(context['PIXI']['Texture']['fromImage'], [path]));
    }
}