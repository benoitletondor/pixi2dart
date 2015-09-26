part of pixi2dart;

/**
 * The CanvasRenderer draws the scene and all its content onto a 2d canvas. 
 * This renderer should be used for browsers that do not support webGL. 
 * Don't forget to add the CanvasRenderer.view to your DOM or you will not see anything :)
 * http://pixijs.github.io/docs/PIXI.SystemRenderer.html
 */
class SystemRenderer extends JsObjectWrapper {
  SystemRenderer(JsObject object) : super(object);

  SystemRenderer.fromValues(String type, num width, num height,
      {RendererOptions options})
      : super(new JsObject(_PIXI[type],
            [width, height, options == null ? null : options.jsify()]));

// --------------------------------------->

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#autoResize
  set autoResize(bool value) => _js["autoResize"] = value;
  bool get autoResize => _js["autoResize"];

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#backgroundColor
  set backgroundColor(num value) => _js["backgroundColor"] = value;
  num get backgroundColor => _js["backgroundColor"];

  // TODO : http://pixijs.github.io/docs/PIXI.SystemRenderer.html#blendModes

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#clearBeforeRender
  set clearBeforeRender(bool value) => _js["clearBeforeRender"] = value;
  bool get clearBeforeRender => _js["clearBeforeRender"];

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#height
  set height(num value) => _js["height"] = value;
  num get height => _js["height"];

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#preserveDrawingBuffer
  set preserveDrawingBuffer(bool value) => _js["preserveDrawingBuffer"] = value;
  bool get preserveDrawingBuffer => _js["preserveDrawingBuffer"];

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#resolution
  set resolution(num value) => _js["resolution"] = value;
  num get resolution => _js["resolution"];

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#transparent
  set transparent(bool value) => _js["transparent"] = value;
  bool get transparent => _js["transparent"];

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#type
  RENDERER_TYPE get type {
    int jsType = _js["type"];
    for (RENDERER_TYPE type in RENDERER_TYPE.values) {
      if (type.index == jsType) {
        return type;
      }
    }
    return RENDERER_TYPE.UNKNOWN;
  }

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#view
  set view(html.CanvasElement value) => _js["view"] = value;
  html.CanvasElement get view => _js["view"];

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#width
  set width(num value) => _js["width"] = value;
  num get width => _js["width"];

// --------------------------------------->

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#destroy
  void destroy(bool removeView) {
    _js.callMethod("destroy", [removeView]);
  }

  /// http://pixijs.github.io/docs/PIXI.SystemRenderer.html#resize
  void resize(num width, num height) {
    _js.callMethod("resize", [width, height]);
  }

  void render(Container container) {
    _js.callMethod("render", [container._js]);
  }
}

class RendererOptions {
  html.CanvasElement view;
  bool transparent = false;
  bool autoResize = false;
  bool antialias = false;
  num resolution = 1;
  bool clearBeforeRender = true;
  num backgroundColor = 0x000000;

  JsObject jsify() => new JsObject.jsify({
        "view": view,
        "transparent": transparent,
        "autoResize": autoResize,
        "antialias": antialias,
        "resolution": resolution,
        "clearBeforeRender": clearBeforeRender,
        "backgroundColor": backgroundColor
      });
}
