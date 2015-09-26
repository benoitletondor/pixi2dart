part of pixi2dart;

/// http://pixijs.github.io/docs/PIXI.Texture.html
class Texture extends JsObjectWrapper
{   
    Texture(JsObject js) : super(js);
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#.fromImage
    Texture.fromImage(String path) : super(new JsObject(PIXI._PIXI['Texture']['fromImage'], [path]));
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#.fromFrame
    Texture.fromFrame(String frameId) : super(new JsObject(PIXI._PIXI['Texture']["fromFrame"], [frameId]));
    
// ------------------------------------>  

    /// http://pixijs.github.io/docs/PIXI.Texture.html#.EMPTY
    static Texture get EMPTY => new Texture(PIXI._PIXI["Texture"]["EMPTY"]);
    
// ------------------------------------>  
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#crop
    set crop(Rectangle value) => _js["crop"] = value._js;
    Rectangle get crop => new Rectangle(_js["crop"]);
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#frame
    set frame(Rectangle value) => _js["frame"] = value._js;
    Rectangle get frame => new Rectangle(_js["frame"]);
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#height
    set height(num value) => _js["height"] = value;
    num get height => _js["height"];
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#noFrame
    set noFrame(bool value) => _js["noFrame"] = value;
    bool get noFrame => _js["noFrame"];
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#requiresUpdate
    set requiresUpdate(bool value) => _js["requiresUpdate"] = value;
    bool get requiresUpdate => _js["requiresUpdate"];
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#trim
    set trim(Rectangle value) => _js["trim"] = value._js;
    Rectangle get trim => new Rectangle(_js["trim"]);
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#valid
    set valid(bool value) => _js["valid"] = value;
    bool get valid => _js["valid"];
     
    /// http://pixijs.github.io/docs/PIXI.Texture.html#width
    set width(num value) => _js["width"] = value;
    num get width => _js["width"];
    
// ------------------------------------>
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#.addTextureToCache
    static void addTextureToCache(Texture texture, String id){ new JsObject(PIXI._PIXI['Texture']["addTextureToCache"], [texture._js, id]); }
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#clone
    Texture clone() => new Texture(_js.callMethod("clone"));
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#destroy
    void destroy({bool destroyBase}){ _js.callMethod("destroy", [destroyBase ?? false]); }
    
    /// http://pixijs.github.io/docs/PIXI.Texture.html#update
    void update(){ _js.callMethod("update"); }
}