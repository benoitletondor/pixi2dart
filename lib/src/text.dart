/*
 *   Copyright 2016 Benoit LETONDOR
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

/// http://pixijs.github.io/docs/PIXI.Text.html
class Text extends Sprite {
  TextStyle _style;

  Text(String text, TextStyle style)
      : super._fromJSObject(new JsObject(_PIXI['Text'], [text, style.jsify()])) {
    _style = style;
  }

// ------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Text.html#text
  String get text => _js["text"];
  set text(String value) => _js["text"] = value;

  /// http://pixijs.github.io/docs/PIXI.Text.html#style
  TextStyle get style => _style;
  set style(TextStyle value) {
    _style = value;
    _js["style"] = value.jsify();
  }
}

class TextStyle {
  String font;
  String align = "left";
  String fill = "#FFFFFF";
  String stroke = "#FFFFFF";
  num strokeThickness = 0;
  bool wordWrap = false;
  num wordWrapWidth = 100;
  // TODO lineHeight
  bool dropShadow = false;
  String dropShadowColor = "#000000";
  num dropShadowAngle = math.PI / 4;
  num dropShadowDistance = 5;
  num padding = 0;
  String textBaseline = "alphabetic";
  String lineJoin = "miter";
  num miterLimit = 10;

  TextStyle(String this.font, {String this.fill});

  JsObject jsify() => new JsObject.jsify({
        "font": font,
        "align": align,
        "fill": fill,
        "stroke": stroke,
        "strokeThickness": strokeThickness,
        "wordWrap": wordWrap,
        "wordWrapWidth": wordWrapWidth,
        "dropShadow": dropShadow,
        "dropShadowColor": dropShadowColor,
        "dropShadowAngle": dropShadowAngle,
        "dropShadowDistance": dropShadowDistance,
        "padding": padding,
        "textBaseline": textBaseline,
        "lineJoin": lineJoin,
        "miterLimit": miterLimit
      });
}
