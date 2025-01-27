package;

import flixel.FlxGame;
import openfl.display.Sprite;
import flixel.FlxG;
import lime.app.Application;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(FlxG.width, FlxG.height, PlayState, 60, 60, true, false));
		FlxG.autoPause = false;
		
	}
}
