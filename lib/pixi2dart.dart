library pixi2dart;

import 'dart:html';
import 'dart:js';

part 'src/renderer/Renderer.dart';
part 'src/renderer/AutoDetectRenderer.dart';
part 'src/Stage.dart';
part 'src/Sprite.dart';
part 'src/Texture.dart';
part 'js/JsObjectWrapper.dart';

class PIXI
{
    static Renderer autoDetectRenderer(num width, num height) => new AutoDetectRenderer(width, height);
    
    static Stage createStage(num color) => new Stage(color);
}