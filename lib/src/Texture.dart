part of pixi2dart;

class Texture extends JsObjectWrapper
{   
    Texture(JsObject js) : super(js);
    
    Texture.fromImage(String path) : super(new JsObject(PIXI._PIXI['Texture']['fromImage'], [path]));
}