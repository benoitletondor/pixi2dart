part of pixi2dart;

/**
 * The Sprite object is the base for all textured objects that are rendered to the screen
 * http://pixijs.github.io/docs/PIXI.Sprite.html
 */
class Sprite extends Container {
  Sprite(Texture texture) : super(new JsObject(_PIXI['Sprite'], [texture._js]));

  /// http://pixijs.github.io/docs/PIXI.Sprite.html#.fromImage
  Sprite.fromImage(String imageId)
      : super(new JsObject(_PIXI['Sprite']['fromImage'], [imageId]));

  /// http://pixijs.github.io/docs/PIXI.Sprite.html#.fromFrame
  Sprite.fromFrame(String frameId,
      {bool crossorigin: true, SCALE_MODES scaleMode: SCALE_MODES.DEFAULT})
      : super(new JsObject(
            _PIXI['Sprite']['fromFrame'], [frameId, crossorigin, scaleMode]));

// --------------------------------------->

  /// http://pixijs.github.io/docs/PIXI.Sprite.html#anchor
  set anchor(Point point) => _js["anchor"] = point._js;
  Point get anchor => new Point(_js["anchor"]);

  /// http://pixijs.github.io/docs/PIXI.Sprite.html#cachedTint
  set cachedTint(num value) => _js["cachedTint"] = value;
  num get cachedTint => _js["cachedTint"];

  // TODO : http://pixijs.github.io/docs/PIXI.Sprite.html#shader

  /// http://pixijs.github.io/docs/PIXI.Sprite.html#texture
  set texture(Texture value) => _js["texture"] = value._js;
  Texture get texture => new Texture(_js["texture"]);

  /// http://pixijs.github.io/docs/PIXI.Sprite.html#tint
  set tint(num value) => _js["tint"] = value;
  num get tint => _js["tint"];

// ----------------------------------------->

  /// http://pixijs.github.io/docs/PIXI.Sprite.html#containsPoint
  bool containsPoint(Point point) =>
      _js.callMethod("containsPoint", [point._js]);
}
