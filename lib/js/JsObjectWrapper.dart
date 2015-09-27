part of pixi2dart;

class JsObjectWrapper {
  JsObject _js;

  JsObjectWrapper(JsObject this._js) {
    assert(this._js != null);
  }

  bool operator ==(other) {
    if (!(other is JsObjectWrapper)) {
      return false;
    }

    return identical(_js, other._js);
  }
}
