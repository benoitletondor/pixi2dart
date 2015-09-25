library pixi2dart;

import 'dart:html';
import 'dart:js';

part 'src/renderer/Renderer.dart';
part 'src/renderer/AutoDetectRenderer.dart';
part 'src/Container.dart';
part 'src/Point.dart';
part 'src/Matrix.dart';
part 'src/Rectangle.dart';
part 'src/display/Sprite.dart';
part 'src/Texture.dart';
part 'src/display/Graphics.dart';
part 'src/DisplayObject.dart';
part 'src/loaders/Loader.dart';
part 'src/loaders/Resource.dart';
part 'src/extras/BitmapText.dart';
part 'js/JsObjectWrapper.dart';

class PIXI
{
    static JsObject _PIXI = context['PIXI'];
  
    // http://pixijs.github.io/docs/PIXI.html#.VERSION
    static String get VERSION => _PIXI['VERSION']; 
    
    // http://pixijs.github.io/docs/PIXI.html#.TARGET_FPMS
    static num get TARGET_FPMS => _PIXI['TARGET_FPMS'];
    
    // http://pixijs.github.io/docs/PIXI.html#.RETINA_PREFIX
    static String get RETINA_PREFIX => _PIXI['RETINA_PREFIX'];
     
    // http://pixijs.github.io/docs/PIXI.html#.RAD_TO_DEG
    static num get RAD_TO_DEG => _PIXI['RAD_TO_DEG'];
    
    static num get PI_2 => _PIXI['PI_2'];
    
    static num get DEG_TO_RAD => _PIXI['DEG_TO_RAD'];
    
    static Loader get loader => new Loader.fromInstance(_PIXI['loader']);
}

// http://pixijs.github.io/docs/PIXI.html#.SHAPES
enum PIXI_SHAPES
{
    POLY,
    RECT,
    CIRC,
    ELIP,
    RREC
}

// http://pixijs.github.io/docs/PIXI.html#.SCALE_MODES
enum PIXI_SCALE_MODES
{
    DEFAULT,
    LINEAR,
    NEAREST
}

// http://pixijs.github.io/docs/PIXI.html#.RENDERER_TYPE
enum PIXI_RENDERER_TYPE
{
    UNKNOWN,
    WEBGL,
    CANVAS
}

// http://pixijs.github.io/docs/PIXI.html#.DRAW_MODES
enum PIXI_DRAW_MODES
{
    POINTS,
    LINES,
    LINE_LOOP,
    LINE_STRIP,
    TRIANGLES,
    TRIANGLE_STRIP,
    TRIANGLE_FAN
}

// http://pixijs.github.io/docs/PIXI.html#.BLEND_MODES
enum PIXI_BLEND_MODES
{
    NORMAL,
    ADD,
    MULTIPLY,
    SCREEN,
    OVERLAY,
    DARKEN,
    LIGHTEN,
    COLOR_DODGE,
    COLOR_BURN,
    HARD_LIGHT,
    SOFT_LIGHT,
    DIFFERENCE,
    EXCLUSION,
    HUE,
    SATURATION,
    COLOR,
    LUMINOSITY
}