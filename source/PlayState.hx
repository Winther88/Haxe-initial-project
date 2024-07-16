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
		if (FlxG.mouse.overlaps(image))
		{
			if (FlxG.mouse.pressed)
			{
				FlxTween.cancelTweensOf(image);
				image.setPosition(FlxG.mouse.getPosition().x - image.width / 2, FlxG.mouse.getPosition().y - image.width / 2);
			}
			if (FlxG.mouse.wheel != 0)
			{
				image.y -= FlxG.mouse.wheel * 5;
			}
		}
	}
}
