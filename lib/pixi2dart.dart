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

library pixi2dart;

import 'dart:html' as html;
import 'dart:math' as math;
import 'dart:js';

part 'src/system_renderer.dart';
part 'src/web_gl_renderer.dart';
part 'src/canvas_renderer.dart';
part 'src/container.dart';
part 'src/point.dart';
part 'src/matrix.dart';
part 'src/rectangle.dart';
part 'src/sprite.dart';
part 'src/texture.dart';
part 'src/graphics.dart';
part 'src/circle.dart';
part 'src/text.dart';
part 'src/display_object.dart';
part 'src/loaders/loader.dart';
part 'src/loaders/resource.dart';
part 'src/extras/bitmap_text.dart';
part 'js/js_object_wrapper.dart';

JsObject _PIXI = context['PIXI'];

/// http://pixijs.github.io/docs/PIXI.html#.VERSION
String get VERSION => _PIXI['VERSION'];

/// http://pixijs.github.io/docs/PIXI.html#.TARGET_FPMS
num get TARGET_FPMS => _PIXI['TARGET_FPMS'];

/// http://pixijs.github.io/docs/PIXI.html#.RETINA_PREFIX
String get RETINA_PREFIX => _PIXI['RETINA_PREFIX'];

/// http://pixijs.github.io/docs/PIXI.html#.RAD_TO_DEG
num get RAD_TO_DEG => _PIXI['RAD_TO_DEG'];

/// http://pixijs.github.io/docs/PIXI.html#.PI_2
num get PI_2 => _PIXI['PI_2'];

/// http://pixijs.github.io/docs/PIXI.html#.DEG_TO_RAD
num get DEG_TO_RAD => _PIXI['DEG_TO_RAD'];

/// http://pixijs.github.io/docs/PIXI.html#.loader
Loader get loader => new Loader(_PIXI['loader']);

/// http://pixijs.github.io/docs/PIXI.html#.autoDetectRenderer
SystemRenderer autoDetectRenderer(num width, num height,
        {RendererOptions options, bool noWebGL}) =>
    new SystemRenderer(new JsObject(_PIXI["autoDetectRenderer"], [
      width,
      height,
      options == null ? null : options.jsify(),
      noWebGL ?? false
    ]));

// ---------------------------------------->

/// http://pixijs.github.io/docs/PIXI.html#.RENDERER_TYPE
enum RENDERER_TYPE { UNKNOWN, WEBGL, CANVAS }

/// http://pixijs.github.io/docs/PIXI.html#.SCALE_MODES
enum SCALE_MODES { LINEAR, NEAREST, DEFAULT }
int _scaleModesValue(SCALE_MODES mode) {
  switch (mode) {
    case SCALE_MODES.LINEAR:
      return 0;
    case SCALE_MODES.NEAREST:
      return 1;
    case SCALE_MODES.DEFAULT:
      return 0;
  }
}
