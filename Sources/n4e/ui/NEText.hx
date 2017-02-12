package n4e.ui;

import kha.Color;
import kha.Font;

import n4.entities.NSprite;

class NEText extends NSprite {
	public static var defaultFont(default, default):Font;

	public function new(X:Float, Y:Float, Text:String, ?Size:Int = 16, ?TextColor:Color, ?Font:Font) {
		if (Font == null) Font = defaultFont;
		if (TextColor == null) TextColor = Color.White;
		// construct sprite
		super(X, Y);
		reRenderGraphic(Text, Size, TextColor, Font);
	}

	private function reRenderGraphic(Text:String, ?Size:Int = 16, ?TextColor:Color, ?Font:Font) {
		// render custom graphic containing text
		renderGraphic(Std.int(Font.width(Size, Text)) + 1, Std.int(Font.height(Size)) + 1, function (gpx) {
			var ctx = gpx.g2;
			ctx.begin();
			ctx.color = TextColor;
			ctx.font = Font;
			ctx.fontSize = Size;
			ctx.drawString(Text, 0, 0);
			ctx.end();
		}, "t_" + Text);
	}
}