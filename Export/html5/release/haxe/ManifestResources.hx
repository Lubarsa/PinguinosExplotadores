package;


import lime.app.Config;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {
	
	
	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	
	
	public static function init (config:Config):Void {
		
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
		var rootPath = null;
		
		if (config != null && Reflect.hasField (config, "assetsPrefix")) {
			
			rootPath = Reflect.field (config, "assetsPrefix");
			
		}
		
		if (rootPath == null) {
			
			#if (ios || tvos)
			rootPath = "assets/";
			#elseif (windows && !cs)
			rootPath = FileSystem.absolutePath (haxe.io.Path.directory (#if (haxe_ver >= 3.3) Sys.programPath () #else Sys.executablePath () #end)) + "/";
			#else
			rootPath = "";
			#end
			
		}
		
		Assets.defaultRootPath = rootPath;
		
		#if (openfl && !flash)
		
		#end
		
		var data, manifest, library;
		
		data = '{"name":null,"assets":"aoy4:pathy26:assets%2Fpenguin_idle.jsony4:sizei12587y4:typey4:TEXTy2:idR1y7:preloadtgoR0y25:assets%2Fpenguin_idle.pngR2i199714R3y5:IMAGER5R7R6tgoR0y26:assets%2Fpenguin_walk.jsonR2i12283R3R4R5R9R6tgoR0y25:assets%2Fpenguin_walk.pngR2i212127R3R8R5R10R6tgh","version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		
		
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__assets_penguin_idle_json extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_penguin_idle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_penguin_walk_json extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_penguin_walk_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:file("Assets/penguin_idle.json") #if display private #end class __ASSET__assets_penguin_idle_json extends haxe.io.Bytes {}
@:image("Assets/penguin_idle.png") #if display private #end class __ASSET__assets_penguin_idle_png extends lime.graphics.Image {}
@:file("Assets/penguin_walk.json") #if display private #end class __ASSET__assets_penguin_walk_json extends haxe.io.Bytes {}
@:image("Assets/penguin_walk.png") #if display private #end class __ASSET__assets_penguin_walk_png extends lime.graphics.Image {}
@:file("") #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else



#end

#if (openfl && !flash)



#end
#end