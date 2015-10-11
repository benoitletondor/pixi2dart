part of pixi2dart;

typedef void OnLoadComplete(Loader loader, List<Resource> resources);

/// http://pixijs.github.io/docs/PIXI.loaders.Loader.html
class Loader extends JsObjectWrapper {
  Loader(JsObject instance) : super(instance);
  Loader.create({String baseUrl: "", int concurrency: 10})
      : super(new JsObject(_PIXI['loaders']['Loader'], [baseUrl, concurrency]));

// -------------------------------------->

  Loader add(String resourceName, String path) {
    _js.callMethod("add", [resourceName, path]);
    return this;
  }

  void load(OnLoadComplete callback) {
    _js.callMethod("load", [
      (JsObject loaderObj, JsObject resourcesObj) {
        List<Resource> resources = new List<Resource>();

        JsArray<String> keys =
            context['Object'].callMethod('keys', [resourcesObj]);
        for (String resourceName in keys) {
          resources.add(new Resource(resourcesObj[resourceName]));
        }

        callback(this, resources);
      }
    ]);
  }
}
