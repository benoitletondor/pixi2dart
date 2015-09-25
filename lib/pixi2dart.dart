library pixi2dart;

import 'dart:html';
import 'dart:js';

part 'src/renderer/Renderer.dart';
part 'src/renderer/AutoDetectRenderer.dart';
part 'src/Container.dart';
part 'src/Point.dart';
part 'src/Matrix.dart';
part 'src/Rectangle.dart';
part 'src/Sprite.dart';
part 'src/Texture.dart';
part 'src/Graphics.dart';
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