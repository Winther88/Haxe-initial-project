package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.tweens.FlxTween;

class PlayState extends FlxState
{
	var image:FlxSprite;
	override public function create()
	{
		super.create();
		image = new FlxSprite();
		image.loadGraphic(AssetPaths.captura_de_neighbor__png);
		image.x = 100;
		add(image);

		FlxTween.tween(image, {x:0, y:0}, 5, {type:FlxTweenType.PINGPONG});
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
