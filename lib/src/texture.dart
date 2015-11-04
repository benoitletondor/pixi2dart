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
 * A texture stores the information that represents an image or part of an image. 
 * It cannot be added to the display list directly. 
 * Instead use it as the texture for a Sprite. If no frame is provided then the whole image is used.
 * http://pixijs.github.io/docs/PIXI.Texture.html
 */
class Texture extends JsObjectWrapper {
  Texture(JsObject js) : super(js);

  /// http://pixijs.github.io/docs/PIXI.Texture.html#.fromImage
  Texture.fromImage(String path)
      : super(new JsObject(_PIXI['Texture']['fromImage'], [path]));

  /// http://pixijs.github.io/docs/PIXI.Texture.html#.fromFrame
  Texture.fromFrame(String frameId)
      : super(new JsObject(_PIXI['Texture']["fromFrame"], [frameId]));

  // TODO: http://pixijs.github.io/docs/PIXI.Texture.html#.fromCanvas

  // TODO: http://pixijs.github.io/docs/PIXI.Texture.html#.fromVideo

  // TODO: http://pixijs.github.io/docs/PIXI.Texture.html#.fromVideoUrl

// ------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Texture.html#.EMPTY
  static Texture get EMPTY => new Texture(_PIXI["Texture"]["EMPTY"]);

// ------------------------------------>

  // TODO: http://pixijs.github.io/docs/PIXI.Texture.html#baseTexture

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
  static void addTextureToCache(Texture texture, String id) {
    new JsObject(_PIXI['Texture']["addTextureToCache"], [texture._js, id]);
  }

  /// http://pixijs.github.io/docs/PIXI.Texture.html#.removeTextureFromCache
  static Texture removeTextureFromCache(String id) => new Texture(
      new JsObject(_PIXI['Texture']["removeTextureFromCache"], [id]));

  /// http://pixijs.github.io/docs/PIXI.Texture.html#clone
  Texture clone() => new Texture(_js.callMethod("clone"));

  /// http://pixijs.github.io/docs/PIXI.Texture.html#destroy
  void destroy({bool destroyBase}) {
    _js.callMethod("destroy", [destroyBase ?? false]);
  }

  /// http://pixijs.github.io/docs/PIXI.Texture.html#update
  void update() {
    _js.callMethod("update");
  }
}
