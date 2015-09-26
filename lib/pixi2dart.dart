library pixi2dart;

import 'dart:html' as html;
import 'dart:js';

part 'src/SystemRenderer.dart';
part 'src/Container.dart';
part 'src/Point.dart';
part 'src/Matrix.dart';
part 'src/Rectangle.dart';
part 'src/Sprite.dart';
part 'src/Texture.dart';
part 'src/Graphics.dart';
part 'src/Circle.dart';
part 'src/DisplayObject.dart';
part 'src/loaders/Loader.dart';
part 'src/loaders/Resource.dart';
part 'src/extras/BitmapText.dart';
part 'js/JsObjectWrapper.dart';

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
