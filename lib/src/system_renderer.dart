/*
 *   Copyright 2015 Benoit LETONDOR
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 */

part of pixi2dart;

/**
 * Abstract renderer
 * http://pixijs.github.io/docs/PIXI.SystemRenderer.html
 */
class SystemRenderer extends JsObjectWrapper {
  SystemRenderer(JsObject object) : super(object);

  SystemRenderer.fromValues(String type, num width, num height,
      {RendererOptions options: null})
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
  RENDERER_TYPE get type => RENDERER_TYPE.values[_js["type"]];

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

// --------------------------------------->

  /// Cast this renderer to a WebGL one.
  /// You must ensure that type == WEBGL before calling this method
  WebGLRenderer asWebGL() {
    assert(type == RENDERER_TYPE.WEBGL);
    return new WebGLRenderer(_js);
  }

  /// Cast this renderer to a Canvas one.
  /// You must ensure that type == CANVAS before calling this method
  CanvasRenderer asCanvas() {
    assert(type == RENDERER_TYPE.CANVAS);
    return new CanvasRenderer(_js);
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
