package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.addons.display.FlxBackdrop;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.util.FlxTimer;
import lime.app.Application;

class PlayState extends FlxState
{

	//kaidy
	var pinto:Float;

	//images
	var backdrop:FlxBackdrop;
	var doorBackdrop:FlxBackdrop;
	var mouseClick:FlxSprite;
	
	//var faisca:FlxSprite;
	var image:FlxSprite;

	//score
	var score:Int = 0;
	var texto:FlxText;

	//tweens
	var tween:FlxTween;
	var scaleClick:FlxTween;
	var tweenClickAlpha:FlxTween;
	var tweenCamera:FlxTween;
	var tweenMeme:FlxTween;

	override public function create()
	{
		//Application.current.window.opacity = 0;

		//FlxTween.tween(Application.current.window, {opacity: 1}, 5, {ease: FlxEase.linear});

		super.create();

		createPlus();
	}

	function createPlus()
	{

		backdrop = new FlxBackdrop("assets/images/backdrop.png", X, 0,0);
		backdrop.alpha = 0.5;
		backdrop.scale.set(0.85,0.85);
		backdrop.y = -90;
		add(backdrop);

		doorBackdrop = new FlxBackdrop("assets/images/door.png", X, 5000,100);
		doorBackdrop.scale.set(0.3,0.3);
		doorBackdrop.y = -550;
		add(doorBackdrop);

		//faisca = new FlxSprite();
		//faisca.frames = FlxAtlasFrames.fromSparrow("assets/images/69.png", "assets/images/69.xml");
        //faisca.animation.addByPrefix("explodo", "pop", 24, true);
		//add(faisca);

		image = new FlxSprite();
		image.loadGraphic("assets/images/captura de neighbor.png");
		image.screenCenter();
		add(image);

		texto = new FlxText(0, 50, 0, "" + 0, 32);
		texto.screenCenter(X);
		add(texto);

		mouseClick = new FlxSprite();
		mouseClick.loadGraphic("assets/images/mouseClick.png");
		mouseClick.alpha = 0;
		mouseClick.scale.set(0.2,0.2);
		mouseClick.offset.set(250,250);
		add(mouseClick);

	}

	override public function update(elapsed:Float)
	{

		super.update(elapsed);

		if (FlxG.mouse.wheel != 0)
            {
                pinto += FlxG.mouse.wheel;
            }
            pinto -= (pinto / 10);
            image.y -= pinto * 10;

		backdrop.x += 0.5;
		doorBackdrop.x += 0.5;

			if (FlxG.mouse.justReleased || FlxG.mouse.justReleasedRight)
			{
				if (mouseClick.scale.x != 0.2)
				{
					scaleClick.cancel();
					tweenClickAlpha.cancel();
				}

				mouseClick.x = FlxG.mouse.x;
				mouseClick.y = FlxG.mouse.y;

				mouseClick.scale.set(0.1,0.1);
				mouseClick.alpha = 0.5;

				scaleClick = FlxTween.tween(mouseClick.scale, {x: 0.2, y: 0.2}, 0.3, {ease: FlxEase.expoOut});
				tweenClickAlpha = FlxTween.tween(mouseClick, {alpha: 0}, 0.3, {ease: FlxEase.linear});

				if (FlxG.mouse.overlaps(image)) { clickNeighbor(); }
			}
	}

	function clickNeighbor()
	{

		score += 1;
		texto.text = "" + score;

		//if (score == 69)
		//{
			//openSubState(new OtherState());
			//faisca.animation.play("explodo");
			//trace(faisca.animation.frames);
		//}
		if (FlxG.camera.zoom != 1)
		{
			tweenCamera.cancel();
		}
		FlxG.camera.zoom = 1.01;
		tweenCamera = FlxTween.tween(FlxG.camera, {zoom: 1}, 1, {ease: FlxEase.expoOut});

		trace("neighbor foi clicado");

		if (image.scale.x != 1)
			{
				tween.cancel();
			}
		image.scale.set(1,1);

		tween = FlxTween.tween(image.scale, {x: 0.9, y: 0.9}, 1, {ease: FlxEase.expoOut } );
	}
}

class OtherState extends FlxSubState
{
	public function new()
	{
		super(0x33000000);
	}
	
	override function create()
	{
		super.create();
	}
	
	private function closeSub():Void
	{
		close();
	}
}
