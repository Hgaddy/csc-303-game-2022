package obstacle;

import flixel.FlxG;
import flixel.FlxBasic;
import flixel.util.FlxColor;
import obstacle.Obstacle.ObstacleParameters;

class DeadlyObstacle extends Obstacle {
	override function init(parameters:ObstacleParameters) {
		super.init(parameters);
		color = FlxColor.RED;
		velocity.y = 0;
	}

	public static function overlapsWithPlayer(player:FlxBasic, deadlyObstacle:DeadlyObstacle) {
		player.kill();
		deadlyObstacle.kill();
	}
}
