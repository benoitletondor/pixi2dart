library pixi2dart;

import 'dart:html';
import 'dart:js';

part 'src/renderer/Renderer.dart';
part 'src/renderer/AutoDetectRenderer.dart';
part 'src/Container.dart';
part 'src/display/Sprite.dart';
part 'src/Texture.dart';
part 'src/display/Graphics.dart';
part 'src/display/DisplayObject.dart';
part 'js/JsObjectWrapper.dart';

class PIXI
{
    static Renderer autoDetectRenderer(num width, num height) => new AutoDetectRenderer(width, height);
    
    static Container createContainer() => new Container();
}