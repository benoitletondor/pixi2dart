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

  Texture get texture => new Texture(_js["texture"]);
}
