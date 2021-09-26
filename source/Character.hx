package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;

using StringTools;

class Character extends FlxSprite
{
	public var animOffsets:Map<String, Array<Dynamic>>;
	public var debugMode:Bool = false;

	public var isPlayer:Bool = false;
	public var curCharacter:String = 'bf';

	public var holdTimer:Float = 0;

	public var iconColor:String = "FF33AACB";
	public function new(x:Float, y:Float, ?character:String = "bf", ?isPlayer:Bool = false)
	{
		super(x, y);

		animOffsets = new Map<String, Array<Dynamic>>();
		curCharacter = character;
		this.isPlayer = isPlayer;

		var tex:FlxAtlasFrames;
		antialiasing = true;

		switch (curCharacter)
		{
			case 'gf':
				// GIRLFRIEND CODE
				tex = Paths.getSparrowAtlas('characters/GF_assets');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'gf-christmas':
				tex = Paths.getSparrowAtlas('characters/gfChristmas');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'gf-car':
				tex = Paths.getSparrowAtlas('characters/gfCar');
				frames = tex;
				animation.addByIndices('singUP', 'GF Dancing Beat Hair blowing CAR', [0], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat Hair blowing CAR', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat Hair blowing CAR', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24,
					false);

				addOffset('danceLeft', 0);
				addOffset('danceRight', 0);

				playAnim('danceRight');

			case 'gf-pixel':
				tex = Paths.getSparrowAtlas('characters/gfPixel');
				frames = tex;
				animation.addByIndices('singUP', 'GF IDLE', [2], "", 24, false);
				animation.addByIndices('danceLeft', 'GF IDLE', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF IDLE', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);

				addOffset('danceLeft', 0);
				addOffset('danceRight', 0);

				playAnim('danceRight');

				setGraphicSize(Std.int(width * PlayState.daPixelZoom));
				updateHitbox();
				antialiasing = false;

			case 'bf':
				var tex = Paths.getSparrowAtlas('characters/BOYFRIEND', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;

			// hex death animations
			case 'bf-bloxiam-dead':
				frames = Paths.getSparrowAtlas('hex/BF_bloxiam_death', 'shared');
				animation.addByPrefix('singUP', "BF bloxiam death", 24, false);
				animation.addByPrefix('firstDeath', "BF bloxiam death", 24, false);
				animation.addByPrefix('deathLoop', "BF bloxiam Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF bloxiam Dead confirm", 24, false);
				animation.play('firstDeath');

				addOffset('firstDeath', -300);
				addOffset('deathLoop', -304, -230);
				addOffset('deathConfirm', -304, -234);
				playAnim('firstDeath');
				
				flipX = true;
			case 'bf-hex-dead':
				frames = Paths.getSparrowAtlas('hex/bf_hex_death', 'shared');
				animation.addByPrefix('singUP', "BF hex death", 24, false);
				animation.addByPrefix('firstDeath', "BF hex death", 24, false);
				animation.addByPrefix('deathLoop', "BF hex Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF hex Dead confirm", 24, false);
				animation.play('firstDeath');

				addOffset('firstDeath', -300);
				addOffset('deathLoop', -360, 5);
				addOffset('deathConfirm', -360, 7);
				playAnim('firstDeath');
				
				flipX = true;
			
			// hex animations	
			case 'bf-horrified':
				var tex = Paths.getSparrowAtlas('hex/bfHorrified', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle shaking instance 1', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP instance 1', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT instance 1', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT instance 1', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN instance 1', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS instance 1', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS instance 1', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS instance 1', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS instance 1', 24, false);
				animation.addByPrefix('hey', 'BF HEY instance 1', 24, false);

				animation.addByPrefix('firstDeath', "BF dies instance 1", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop instance 1", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm instance 1", 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;
			case 'bf-hex':
				var tex = Paths.getSparrowAtlas('hex/bf_hex', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance instance 1', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP instance 1', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT instance 1', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT instance 1', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN instance 1', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS instance 1', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS instance 1', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS instance 1', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS instance 1', 24, false);
				animation.addByPrefix('hey', 'BF HEY instance 1', 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				
				playAnim('idle');

				flipX = true;	

			case 'hex':
				// boy if you dont
				iconColor = "FFD35656";
				tex = Paths.getSparrowAtlas('hex/hex', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Idle', 30);
				animation.addByPrefix('singUP', 'Up', 30);
				animation.addByPrefix('singRIGHT', 'Right', 30);
				animation.addByPrefix('singDOWN', 'Down', 30);
				animation.addByPrefix('singLEFT', 'Left', 30);

				addOffset('idle', -4, -60);
				addOffset("singUP", -126, 36);
				addOffset("singRIGHT", -60, -129);
				addOffset("singLEFT", 100, -116);
				addOffset("singDOWN", 1, -129);

				playAnim('idle');
				
			case 'hex-angry':
				// boy if you did
				iconColor = "FFD35656";
				tex = Paths.getSparrowAtlas('hex/angry_hex','shared');
				frames = tex;
				animation.addByPrefix('idle', 'hexangry idle', 24);
				animation.addByPrefix('singUP', 'hexangry up', 24);
				animation.addByPrefix('singRIGHT', 'hexangry right', 24);
				animation.addByPrefix('singDOWN', 'hexangry down', 24);
				animation.addByPrefix('singLEFT', 'hexangry left', 24);

				addOffset('idle', -4, -60);
				addOffset("singUP", -96, 46);
				addOffset("singRIGHT", -60, -119);
				addOffset("singLEFT", 340, -106);
				addOffset("singDOWN", 71, -459);

				playAnim('idle');
			
			case 'hex-swagger':
				// I HATE YOU S
				iconColor = "FFD35656";
				tex = Paths.getSparrowAtlas('hex/hexMan','shared');
				frames = tex;
				animation.addByPrefix('idle', 'FUCK Y idle', 24);
				animation.addByPrefix('singUP', 'FUCK Y Up', 24);
				animation.addByPrefix('singRIGHT', 'FUCK Y left', 24);
				animation.addByPrefix('singDOWN', 'FUCK Y down', 24);
				animation.addByPrefix('singLEFT', 'FUCK Y right', 24);

				addOffset('idle');
				addOffset("singUP");
				addOffset("singRIGHT");
				addOffset("singLEFT");
				addOffset("singDOWN");

				setGraphicSize(Std.int(width * 1.2));

				playAnim('idle');
			
			case 'bloxiam':
				// bloxiam kept crashing the game i hate bloxiam
				iconColor = "FFD12D2D";
				tex = Paths.getSparrowAtlas('hex/bloxiam', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Idle', 24);
				animation.addByPrefix('singUP', 'Up', 24);
				animation.addByPrefix('singRIGHT', 'Right', 24);
				animation.addByPrefix('singDOWN', 'Down', 24);
				animation.addByPrefix('singLEFT', 'Left', 24);

				addOffset('idle', -6, -291);
				addOffset("singUP", -186, 262);
				addOffset("singRIGHT", 40, -283);
				addOffset("singLEFT", 410, -291);
				addOffset("singDOWN", 192, -684);

				playAnim('idle');
			
			case 'retards':
				iconColor = "FFD12D2D";
				frames = Paths.getSparrowAtlas('hex/retards','shared');
				animation.addByPrefix('idle', 'retards idle', 24, false);
				animation.addByPrefix('singUP', 'hexbloxiam up', 24);
				animation.addByPrefix('singRIGHT', 'hexbloxiam right', 24);
				animation.addByPrefix('singDOWN', 'hexbloxiam down', 24);
				animation.addByPrefix('singLEFT', 'hexbloxiam left', 24);

				animation.addByPrefix('singUP-alt', 'bloxiamhex up', 24, false);

				animation.addByPrefix('singDOWN-alt', 'bloxiamhex down', 24, false);
				animation.addByPrefix('singLEFT-alt', 'bloxiamhex left', 24, false);
				animation.addByPrefix('singRIGHT-alt', 'bloxiamhex right', 24, false);

				addOffset('idle', 1, 1);
				addOffset("singUP", 41, 371);
				addOffset("singRIGHT", 1, 1);
				addOffset("singLEFT", 311, -59);
				addOffset("singDOWN", 221, -9);
				addOffset("singUP-alt", -89, 111);
				addOffset("singRIGHT-alt", -29, -19);
				addOffset("singLEFT-alt", 381, -49);
				addOffset("singDOWN-alt", 81, -42);

				playAnim('idle');

			case 'chubino':
				// i love chubino
				iconColor = "FFFFFFFF";
				tex = Paths.getSparrowAtlas('hex/chubino', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'chabino idle', 24);
				animation.addByPrefix('singUP', 'chabino up', 24);
				animation.addByPrefix('singRIGHT', 'chabino right', 24);
				animation.addByPrefix('singDOWN', 'chabino down', 24);
				animation.addByPrefix('singLEFT', 'chabino left', 24);

				addOffset('idle', 16, -250);
				addOffset("singUP", -216, -64);
				addOffset("singRIGHT", -60, -249);
				addOffset("singLEFT", -30, -261);
				addOffset("singDOWN", -9, -239);

				playAnim('idle');
			case 'bf-void':
				var tex = Paths.getSparrowAtlas('hex/BoyFriend_Assets', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('singUP-alt', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;
			
			//greg stuff
			case 'bf-greg':
				var tex = Paths.getSparrowAtlas('hex/greggy/BF/BF_BACK', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF DOWN MISS', 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -50, 17);
				addOffset("singRIGHT", -48, 3);
				addOffset("singLEFT", 22, 7);
				addOffset("singDOWN", -20, -2);
				addOffset("singUPmiss", -29, 47);
				addOffset("singRIGHTmiss", -48, 3);
				addOffset("singLEFTmiss", 22, 7);
				addOffset("singDOWNmiss", -31, 81);

				playAnim('idle');

				flipX = true;

			case 'greg':
				iconColor = "FFD9D166";
				frames = Paths.getSparrowAtlas('hex/greggy/GREG/GREG', 'shared');
				animation.addByPrefix('idle', 'GREG IDLE DANCE', 24, false);
				animation.addByPrefix('singUP', 'GREG UP', 24, false);
				animation.addByPrefix('singLEFT', 'GREG LEFT', 24, false);
				animation.addByPrefix('singRIGHT', 'GREG RIGHT', 24, false);
				animation.addByPrefix('singDOWN', 'GREG DOWN', 24, false);

				addOffset('idle');
				addOffset("singUP");
				addOffset("singRIGHT");
				addOffset("singLEFT");
				addOffset("singDOWN");

				playAnim('idle');

				setGraphicSize(Std.int(width * 2));
				updateHitbox();

		dance();
	}
		if (isPlayer)
		{
			flipX = !flipX;

			// Doesn't flip for BF, since his are already in the right place???
			if (!curCharacter.startsWith('bf'))
			{
				// var animArray
				var oldRight = animation.getByName('singRIGHT').frames;
				animation.getByName('singRIGHT').frames = animation.getByName('singLEFT').frames;
				animation.getByName('singLEFT').frames = oldRight;

				// IF THEY HAVE MISS ANIMATIONS??
				if (animation.getByName('singRIGHTmiss') != null)
				{
					var oldMiss = animation.getByName('singRIGHTmiss').frames;
					animation.getByName('singRIGHTmiss').frames = animation.getByName('singLEFTmiss').frames;
					animation.getByName('singLEFTmiss').frames = oldMiss;
				}
			}
		}
	}

	override function update(elapsed:Float)
	{
		if (!curCharacter.startsWith('bf'))
		{
			if (animation.curAnim.name.startsWith('sing'))
			{
				holdTimer += elapsed;
			}

			var dadVar:Float = 4;

			if (curCharacter == 'dad')
				dadVar = 6.1;
			if (holdTimer >= Conductor.stepCrochet * dadVar * 0.001)
			{
				trace('dance');
				dance();
				holdTimer = 0;
			}
		}

		switch (curCharacter)
		{
			case 'gf':
				if (animation.curAnim.name == 'hairFall' && animation.curAnim.finished)
					playAnim('danceRight');
		}

		super.update(elapsed);
	}

	private var danced:Bool = false;

	/**
	 * FOR GF DANCING SHIT
	 */
	public function dance()
	{
		if (!debugMode)
		{
			switch (curCharacter)
			{
				case 'gf':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'gf-christmas':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'gf-car':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'gf-pixel':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'spooky':
					danced = !danced;

					if (danced)
						playAnim('danceRight');
					else
						playAnim('danceLeft');
				default:
					playAnim('idle');
			}
		}
	}

	public function playAnim(AnimName:String, Force:Bool = false, Reversed:Bool = false, Frame:Int = 0):Void
	{
		animation.play(AnimName, Force, Reversed, Frame);

		var daOffset = animOffsets.get(AnimName);
		if (animOffsets.exists(AnimName))
		{
			offset.set(daOffset[0], daOffset[1]);
		}
		else
			offset.set(0, 0);

		if (curCharacter == 'gf')
		{
			if (AnimName == 'singLEFT')
			{
				danced = true;
			}
			else if (AnimName == 'singRIGHT')
			{
				danced = false;
			}

			if (AnimName == 'singUP' || AnimName == 'singDOWN')
			{
				danced = !danced;
			}
		}
	}

	public function addOffset(name:String, x:Float = 0, y:Float = 0)
	{
		animOffsets[name] = [x, y];
	}
}
