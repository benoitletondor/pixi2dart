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
 * The Circle object can be used to specify a hit area for displayObjects
 * http://pixijs.github.io/docs/PIXI.Circle.html
 */
class Circle extends JsObjectWrapper {
  Circle(JsObject object) : super(object);

  Circle.fromValues(num x, num y, num radius)
      : super(new JsObject(_PIXI["Circle"], [x, y, radius]));

// ------------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Circle.html#radius
  set radius(num value) => _js["radius"] = value;
  num get radius => _js["radius"];

  /// http://pixijs.github.io/docs/PIXI.Circle.html#x
  set x(num value) => _js["x"] = value;
  num get x => _js["x"];

  /// http://pixijs.github.io/docs/PIXI.Circle.html#y
  set y(num value) => _js["y"] = value;
  num get y => _js["y"];

// ------------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Circle.html#clone
  Circle clone() => new Circle(_js.callMethod("clone"));

  /// http://pixijs.github.io/docs/PIXI.Circle.html#contains
  bool contains(num x, num y) => _js.callMethod("contains", [x, y]);

  /// http://pixijs.github.io/docs/PIXI.Circle.html#getBounds
  Rectangle getBounds() => new Rectangle(_js.callMethod("getBounds"));
}
