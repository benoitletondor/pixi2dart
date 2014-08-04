part of pixi2dart;

class Texture
{
    JsObject _js;
    
// --------------------------------------->
    
    static Texture fromImage(String path)
    {
        Texture texture = new Texture();
        
        texture._js =  new JsObject(context['PIXI']['Texture']['fromImage'], [path]);
        
        return texture;
    }
}