package n4e.ui;

import n4.entities.NSprite;

class NEText extends NSprite {
	public function new(X:Float, Y:Float, Text:String, Size:Int) {
		// construct sprite
		super(X, Y);
		// render custom graphic containing text
		renderGraphic(Std.int(Size * Text.length * 1.5), Std.int(Size * 1.2), function (gpx) {
			gpx.g2.begin();
			gpx.g2.drawString(Text, 0, 0);
			gpx.g2.end();
		}, "t_" + Text);
	}
}