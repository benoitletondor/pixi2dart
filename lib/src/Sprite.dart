part of pixi2dart;

/// http://pixijs.github.io/docs/PIXI.Sprite.html
class Sprite extends Container {
  Sprite(Texture texture) : super(new JsObject(_PIXI['Sprite'], [texture._js]));

  /// http://pixijs.github.io/docs/PIXI.Sprite.html#.fromImage
  Sprite.fromImage(String imageId)
      : super(new JsObject(_PIXI['Texture']['fromImage'], [imageId]));

// --------------------------------------->

  /// http://pixijs.github.io/docs/PIXI.Sprite.html#anchor
  set anchor(Point point) => _js["anchor"] = point._js;
  Point get anchor => new Point(_js["anchor"]);

  // TODO : http://pixijs.github.io/docs/PIXI.Sprite.html#blendMode

  /// http://pixijs.github.io/docs/PIXI.Sprite.html#cachedTint
  set cachedTint(num value) => _js["cachedTint"] = value;
  num get cachedTint => _js["cachedTint"];
}
