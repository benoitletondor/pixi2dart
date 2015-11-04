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
