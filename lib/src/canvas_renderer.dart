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
 * The CanvasRenderer draws the scene and all its content onto a 2d canvas. 
 * This renderer should be used for browsers that do not support webGL. 
 * Don't forget to add the CanvasRenderer.view to your DOM or you will not see anything :)
 * http://pixijs.github.io/docs/PIXI.CanvasRenderer.html
 */
class CanvasRenderer extends SystemRenderer {
  CanvasRenderer(JsObject object) : super(object);

  CanvasRenderer.fromValues(num width, num height,
      {CanvasRendererOptions options: null})
      : super(new JsObject(_PIXI["CanvasRenderer"],
            [width, height, options == null ? null : options.jsify()]));

// ---------------------------------------->

  /// http://pixijs.github.io/docs/PIXI.CanvasRenderer.html#context
  set context(html.CanvasRenderingContext2D value) => _js["context"] = value;
  html.CanvasRenderingContext2D get context => _js["context"];

  // TODO : http://pixijs.github.io/docs/PIXI.CanvasRenderer.html#maskManager

  /// http://pixijs.github.io/docs/PIXI.CanvasRenderer.html#refresh
  set refresh(bool value) => _js["refresh"] = value;
  bool get refresh => _js["refresh"];

  /// http://pixijs.github.io/docs/PIXI.CanvasRenderer.html#roundPixels
  set roundPixels(bool value) => _js["roundPixels"] = value;
  bool get roundPixels => _js["roundPixels"];

  /// http://pixijs.github.io/docs/PIXI.CanvasRenderer.html#smoothProperty
  set smoothProperty(String value) => _js["smoothProperty"] = value;
  String get smoothProperty => _js["smoothProperty"];
}

class CanvasRendererOptions {
  html.CanvasElement view;
  bool transparent = false;
  bool autoResize = false;
  bool antialias = false;
  num resolution = 1;
  bool clearBeforeRender = true;
  bool roundPixels = false;

  JsObject jsify() => new JsObject.jsify({
        "view": view,
        "transparent": transparent,
        "autoResize": autoResize,
        "antialias": antialias,
        "resolution": resolution,
        "clearBeforeRender": clearBeforeRender,
        "roundPixels": roundPixels
      });
}
