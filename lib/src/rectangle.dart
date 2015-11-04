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

/// http://pixijs.github.io/docs/PIXI.Rectangle.html
class Rectangle extends JsObjectWrapper {
  Rectangle(JsObject object) : super(object);

  Rectangle.fromValues(num x, num y, num width, num height)
      : super(new JsObject(_PIXI["Rectangle"], [x, y, width, height]));

// ------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Rectangle.html#.EMPTY
  static Rectangle get EMPTY => new Rectangle(_PIXI["Rectangle"]["EMPTY"]);

  /// http://pixijs.github.io/docs/PIXI.Rectangle.html#x
  set x(num value) => _js["x"] = value;
  num get x => _js["x"];

  /// http://pixijs.github.io/docs/PIXI.Rectangle.html#y
  set y(num value) => _js["y"] = value;
  num get y => _js["y"];

  /// http://pixijs.github.io/docs/PIXI.Rectangle.html#width
  set width(num value) => _js["width"] = value;
  num get width => _js["width"];

  /// http://pixijs.github.io/docs/PIXI.Rectangle.html#height
  set height(num value) => _js["height"] = value;
  num get height => _js["height"];
}
