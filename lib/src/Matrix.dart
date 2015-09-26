part of pixi2dart;

/// http://pixijs.github.io/docs/PIXI.Matrix.html
class Matrix extends JsObjectWrapper {
  Matrix(JsObject object) : super(object);
  Matrix.create() : super(new JsObject(PIXI._PIXI["Matrix"]));

// ------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Matrix.html#.IDENTITY
  static Matrix get IDENTITY => new Matrix(PIXI._PIXI["Matrix"]["IDENTITY"]);

  /// http://pixijs.github.io/docs/PIXI.Matrix.html#.TEMP_MATRIX
  static Matrix get TEMP_MATRIX =>
      new Matrix(PIXI._PIXI["Matrix"]["TEMP_MATRIX"]);

// ------------------------------------>

  /// http://pixijs.github.io/docs/PIXI.Matrix.html#a
  set a(num value) => _js["a"] = value;
  num get a => _js["a"];

  /// http://pixijs.github.io/docs/PIXI.Matrix.html#b
  set b(num value) => _js["b"] = value;
  num get b => _js["b"];

  /// http://pixijs.github.io/docs/PIXI.Matrix.html#c
  set c(num value) => _js["c"] = value;
  num get c => _js["c"];

  /// http://pixijs.github.io/docs/PIXI.Matrix.html#d
  set d(num value) => _js["d"] = value;
  num get d => _js["d"];

  /// http://pixijs.github.io/docs/PIXI.Matrix.html#tx
  set tx(num value) => _js["tx"] = value;
  num get tx => _js["tx"];

  /// http://pixijs.github.io/docs/PIXI.Matrix.html#ty
  set ty(num value) => _js["ty"] = value;
  num get ty => _js["ty"];
}
