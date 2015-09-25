part of pixi2dart;

// http://pixijs.github.io/docs/PIXI.extras.BitmapText.html
class BitmapText extends Container
{
    BitmapText(String text, BitmapTextStyle style) : super(new JsObject(PIXI._PIXI['extras']['BitmapText']));
    
    // http://pixijs.github.io/docs/PIXI.extras.BitmapText.html#align
    set align(String value) => _js["align"] = value;
    String get align => _js["align"];

    // http://pixijs.github.io/docs/PIXI.extras.BitmapText.html#maxLineHeight
    set maxLineHeight(num value) => _js["maxLineHeight"] = value;
    num get maxLineHeight => _js["maxLineHeight"];
    
    // http://pixijs.github.io/docs/PIXI.extras.BitmapText.html#maxWidth
    set maxWidth(num value) => _js["maxWidth"] = value;
    num get maxWidth => _js["maxWidth"];
}

class BitmapTextStyle
{
    String font;
    
    String align = "left";
    
    num tint = 0xFFFFFF;
    
    BitmapTextStyle(String this.font, {String this.align, num this.tint})
    {
      
    }
}