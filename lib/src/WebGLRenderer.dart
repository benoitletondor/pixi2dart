part of pixi2dart;

/**
 * The WebGLRenderer draws the scene and all its content onto a webGL enabled canvas. 
 * This renderer should be used for browsers that support webGL. 
 * This Render works by automatically managing webGLBatchs. So no need for Sprite Batches or Sprite Clouds. 
 * Don't forget to add the view to your DOM or you will not see anything :)
 * http://pixijs.github.io/docs/PIXI.WebGLRenderer.html
 */
class WebGLRenderer extends SystemRenderer {
  WebGLRenderer(JsObject object) : super(object);

  WebGLRenderer.fromValues(num width, num height,
      {WebGLRendererOptions options: null})
      : super(new JsObject(_PIXI["WebGLRenderer"],
            [width, height, options == null ? null : options.jsify()]));

// ----------------------------------------->

  // TODO : http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#blendModeManager

  // TODO : http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#currentRenderer

  // TODO : http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#currentRenderTarget

  /// http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#drawCount
  set drawCount(num value) => _js["drawCount"] = value;
  num get drawCount => _js["drawCount"];

  // TODO : http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#filterManager

  // TODO : http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#maskManager

  // TODO : http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#shaderManager

  // TODO : http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#stencilManager

// ------------------------------------------->

  /// http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#destroyTexture
  void destroyTexture(Texture texture) {
    _js.callMethod("destroyTexture", [texture._js]);
  }

  // TODO : http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#renderDisplayObject

  // TODO : http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#setObjectRenderer

  // TODO : http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#setRenderTarget

  /// http://pixijs.github.io/docs/PIXI.WebGLRenderer.html#updateTexture
  void updateTexture(Texture texture) {
    _js.callMethod("updateTexture", [texture]);
  }
}

class WebGLRendererOptions {
  html.CanvasElement view;
  bool transparent = false;
  bool autoResize = false;
  bool antialias = false;
  bool forceFXAA = false;
  num resolution = 1;
  bool clearBeforeRender = true;
  bool preserveDrawingBuffer = false;

  JsObject jsify() => new JsObject.jsify({
        "view": view,
        "transparent": transparent,
        "autoResize": autoResize,
        "antialias": antialias,
        "forceFXAA": forceFXAA,
        "resolution": resolution,
        "clearBeforeRender": clearBeforeRender,
        "preserveDrawingBuffer": preserveDrawingBuffer
      });
}
