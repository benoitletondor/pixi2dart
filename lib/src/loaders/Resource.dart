part of pixi2dart;

class Resource extends JsObjectWrapper {
  Resource(JsObject resourceObj) : super(resourceObj);

  bool get isAudio => _js['isAudio'];
  bool get isVideo => _js['isVideo'];
  bool get isDataUrl => _js['isDataUrl'];
  bool get isImage => _js['isImage'];
  bool get isXml => _js['isXml'];
  bool get isJson => _js['isJson'];

  String get name => _js['name'];
  String get url => _js['url'];
}
