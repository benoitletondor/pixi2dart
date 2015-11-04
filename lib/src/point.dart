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
 * The Point object represents a location in a two-dimensional coordinate system, 
 * where x represents the horizontal axis and y represents the vertical axis.
 * http://pixijs.github.io/docs/PIXI.Point.html
 * 
 * NB: This class extends the Point of the Dart math package
 */
class Point extends math.Point implements JsObjectWrapper {
  JsObject _js;

  Point(JsObject _js) : super(_js["x"], _js["y"]) {
    assert(_js != null);
    this._js = _js;
  }

  Point.fromValues(num x, num y) : super(x, y) {
    _js = new JsObject(_PIXI["Point"], [x, y]);
  }

// ------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Point.html#x
  set x(num value) {
    super.x(value);
    _js["x"] = value;
  }

  /// http://pixijs.github.io/docs/PIXI.Point.html#y
  set y(num value) {
    super.y(value);
    _js["y"] = value;
  }

// ------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Point.html#clone
  Point clone() => new Point(_js.callMethod("clone"));

  /// http://pixijs.github.io/docs/PIXI.Point.html#copy
  void copy(Point source) {
    x = source.x;
    y = source.y;
  }

  /// http://pixijs.github.io/docs/PIXI.Point.html#set
  void set(num x, num y) {
    this.x = x;
    this.y = y;
  }
}
