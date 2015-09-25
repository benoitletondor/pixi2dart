part of pixi2dart;

// http://pixijs.github.io/docs/PIXI.DisplayObject.html
/**
 * This is an abstract class and should not be used on its own rather it should be extended.
 */
class DisplayObject extends JsObjectWrapper
{
    DisplayObject(JsObject js) : super(js);
    
// ------------------------------------------>
    
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#alpha
    set alpha(num value) => _js["alpha"] = value;
    num get alpha => _js["alpha"];
    
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#cacheAsBitmap
    set cacheAsBitmap(bool value) => _js["cacheAsBitmap"] = value;
    bool get cacheAsBitmap => _js["cacheAsBitmap"];
    
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#parent
    Container get parent => new Container(_js["parent"]);
    
    // http://pixijs.github.io/docs/PIXI.Container.html#pivot
    Point get pivot => new Point(_js["pivot"]);
    set pivot(Point value) => _js["pivot"] = value._js;
   
    // http://pixijs.github.io/docs/PIXI.Container.html#position
    Point get position => new Point(_js["position"]);
    set position(Point value) => _js["position"] = value._js;
    
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#renderable
    set renderable(bool value) => _js["renderable"] = value;
    bool get renderable => _js["renderable"];
     
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#rotation
    set rotation(num value) => _js["rotation"] = value;
    num get rotation => _js["rotation"];
    
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#scale
    Point get scale => new Point(_js["scale"]);
    set scale(Point value) => _js["scale"] = value._js;
       
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#visible
    set visible(bool value) => _js["visible"] = value;
    bool get visible => _js["visible"];
    
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#worldAlpha
    num get worldAlpha => _js["worldAlpha"];
     
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#worldTransform
    Matrix get worldTransform => new Matrix(_js["worldTransform"]);
     
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#worldVisible
    bool get worldVisible => _js["worldVisible"];
     
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#x
    set x(num value) => _js["x"] = value;
    num get x => _js["x"];
     
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#y
    set y(num value) => _js["y"] = value;
    num get y => _js["y"];
    
// --------------------------------------->
 
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#destroy
    void destroy({bool destroyChildren}) { _js.callMethod("destroy", [destroyChildren ?? false]); }
     
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#getBounds
    Rectangle getBounds() => new Rectangle(_js.callMethod("getBounds"));
    
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#getLocalBounds
    Rectangle getLocalBounds() => new Rectangle(_js.callMethod("getLocalBounds"));
    
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#setParent
    void setParent(Container parent) { _js.callMethod("setParent", [parent._js]); }
    
    // http://pixijs.github.io/docs/PIXI.DisplayObject.html#toGlobal
    Point toGlobal(Point position) => _js.callMethod("toGlobal", [position._js]);
}