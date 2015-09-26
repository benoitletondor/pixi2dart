part of pixi2dart;

/// http://pixijs.github.io/docs/PIXI.Container.html
class Container extends DisplayObject {
  Container(JsObject instance) : super(instance);

  Container.empty() : super(new JsObject(PIXI._PIXI['Container']));

// ---------------------------------------->

  /// http://pixijs.github.io/docs/PIXI.Container.html#height
  set height(num value) => _js["height"] = value;
  num get height => _js["height"];

  /// http://pixijs.github.io/docs/PIXI.Container.html#width
  set width(num value) => _js["width"] = value;
  num get width => _js["width"];

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

  /// http://pixijs.github.io/docs/PIXI.Container.html#setChildIndex
  void setChildIndex(DisplayObject child, int index) {
    _js.callMethod("setChildIndex", [child._js, index]);
  }

  /// http://pixijs.github.io/docs/PIXI.Container.html#swapChildren
  void swapChildren(DisplayObject child, DisplayObject child2) {
    _js.callMethod("swapChildren", [child._js, child2._js]);
  }
}
