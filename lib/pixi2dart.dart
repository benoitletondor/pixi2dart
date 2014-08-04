library pixi2dart;

import 'dart:html';
import 'dart:js';

part 'classes/renderer/Renderer.dart';
part 'classes/renderer/AutoDetectRenderer.dart';
part 'classes/Stage.dart';
part 'classes/Sprite.dart';
part 'classes/Texture.dart';

class PIXI
{
    static Renderer autoDetectRenderer(num width, num height) => new AutoDetectRenderer(width, height);
    
    static Stage createStage(num color) => new Stage(color);
}