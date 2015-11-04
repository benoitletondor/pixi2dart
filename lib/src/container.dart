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
 * A Container represents a collection of display objects. 
 * It is the base class of all display objects that act as a container for other objects.
 * http://pixijs.github.io/docs/PIXI.Container.html
 */
class Container extends DisplayObject {
  Container(JsObject instance) : super(instance);

  Container.empty() : super(new JsObject(_PIXI['Container']));

// ---------------------------------------->

  /// http://pixijs.github.io/docs/PIXI.Container.html#height
  set height(num value) => _js["height"] = value;
  num get height => _js["height"];

  /// http://pixijs.github.io/docs/PIXI.Container.html#width
  set width(num value) => _js["width"] = value;
  num get width => _js["width"];

  /// http://pixijs.github.io/docs/PIXI.Container.html#children
  List<DisplayObject> get childrens {
    JsArray<JsObject> childrensArray = _js.callMethod("childrens");

    List<DisplayObject> childrens = new List<DisplayObject>();
    for (JsObject children in childrensArray) {
      childrens.add(new DisplayObject(children));
    }

    return childrens;
  }

// ---------------------------------------------->

  /// http://pixijs.github.io/docs/PIXI.Container.html#addChild
  void addChild(DisplayObject displayObject) {
    _js.callMethod("addChild", [displayObject._js]);
  }

  /// http://pixijs.github.io/docs/PIXI.Container.html#addChildAt
  void addChildAt(int index, DisplayObject displayObject) {
    _js.callMethod("addChildAt", [index, displayObject._js]);
  }

  /// http://pixijs.github.io/docs/PIXI.Container.html#getChildAt
  DisplayObject getChildAt(int index) =>
      new DisplayObject(_js.callMethod("getChildAt", [index]));

  /// http://pixijs.github.io/docs/PIXI.Container.html#getChildIndex
  int getChildIndex(DisplayObject child) =>
      _js.callMethod("getChildIndex", [child._js]);

  /// http://pixijs.github.io/docs/PIXI.Container.html#removeChild
  void removeChild(DisplayObject displayObject) {
    _js.callMethod("removeChild", [displayObject._js]);
  }

  /// http://pixijs.github.io/docs/PIXI.Container.html#removeChildAt
  void removeChildAt(int index) {
    _js.callMethod("removeChildAt", [index]);
  }

  /// http://pixijs.github.io/docs/PIXI.Container.html#removeChildren
  void removeChildren(int beginIndex, int endIndex) {
    _js.callMethod("removeChildren", [beginIndex, endIndex]);
  }

  /// http://pixijs.github.io/docs/PIXI.Container.html#renderCanvas
  void renderCanvas(CanvasRenderer renderer) {
    _js.callMethod("renderCanvas", [renderer._js]);
  }

  /// http://pixijs.github.io/docs/PIXI.Container.html#renderWebGL
  void renderWebGL(WebGLRenderer renderer) {
    _js.callMethod("renderWebGL", [renderer._js]);
  }

  /// http://pixijs.github.io/docs/PIXI.Container.html#setChildIndex
  void setChildIndex(DisplayObject child, int index) {
    _js.callMethod("setChildIndex", [child._js, index]);
  }

  /// http://pixijs.github.io/docs/PIXI.Container.html#swapChildren
  void swapChildren(DisplayObject child, DisplayObject child2) {
    _js.callMethod("swapChildren", [child._js, child2._js]);
  }
}
