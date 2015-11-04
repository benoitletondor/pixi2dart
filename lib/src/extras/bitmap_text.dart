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

/// http://pixijs.github.io/docs/PIXI.extras.BitmapText.html
class BitmapText extends Container {
  BitmapText(String text, BitmapTextStyle style)
      : super(
            new JsObject(_PIXI['extras']['BitmapText'], [text, style.jsify()]));

// ------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.extras.BitmapText.html#align
  set align(String value) => _js["align"] = value;
  String get align => _js["align"];

  /// http://pixijs.github.io/docs/PIXI.extras.BitmapText.html#maxLineHeight
  set maxLineHeight(num value) => _js["maxLineHeight"] = value;
  num get maxLineHeight => _js["maxLineHeight"];

  /// http://pixijs.github.io/docs/PIXI.extras.BitmapText.html#maxWidth
  set maxWidth(num value) => _js["maxWidth"] = value;
  num get maxWidth => _js["maxWidth"];

  /// http://pixijs.github.io/docs/PIXI.extras.BitmapText.html#text
  set text(String value) => _js["text"] = value;
  String get text => _js["text"];

  /// http://pixijs.github.io/docs/PIXI.extras.BitmapText.html#textHeight
  num get textHeight => _js["textHeight"];

  /// http://pixijs.github.io/docs/PIXI.extras.BitmapText.html#textWidth
  num get textWidth => _js["textWidth"];
}

class BitmapTextStyle {
  String font;
  String align = "left";
  num tint = 0xFFFFFF;

  BitmapTextStyle(String this.font, {String this.align, num this.tint});

  JsObject jsify() =>
      new JsObject.jsify({"font": font, "align": align, "tint": tint});
}
