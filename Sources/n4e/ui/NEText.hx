package n4e.ui;

import kha.Color;
import kha.Font;

import n4.entities.NSprite;

class NEText extends NSprite {
	public static var font(default, default):Font;

	public function new(X:Float, Y:Float, Text:String, ?Size:Int = 16, ?TextColor:Color) {
		if (TextColor == null) TextColor = Color.White;
		// construct sprite
		super(X, Y);
		// render custom graphic containing text
		renderGraphic(Std.int(Size * Text.length * 1.5), Std.int(Size * 1.2), function (gpx) {
			var ctx = gpx.g2;
			ctx.begin();
			ctx.color = TextColor;
			ctx.font = font;
			ctx.fontSize = Size;
			ctx.drawString(Text, 0, 0);
			ctx.end();
		}, "t_" + Text);
	}
}