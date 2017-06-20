package;


import openfl.display.Sprite;
import scenes.MainGame;
import glue.Glue;

class Main extends Sprite {
	
	
	public function new () {
		
		super ();
		
		Glue.start({
			mainScene: MainGame,
			isDebug: true,
			showStats: true,





		});
		
	}
	
	
}