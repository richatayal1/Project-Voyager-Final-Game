package scripts;

import haxe.xml.Fast;
import openfl.Assets;
import com.stencyl.AssetLoader;
import com.stencyl.Input;
import com.stencyl.Key;
import com.stencyl.Engine;

class MyAssets implements AssetLoader
{
	//Game
	public static var landscape:Bool = false;
	public static var autorotate:Bool = false;
	public static var scaleMode:Int = Universal.NO_SCALING;
	public static var stageWidth:Int = 320;
	public static var stageHeight:Int = 480;
	public static var initSceneID:Int = 2;
	public static var physicsMode:Int = 0;
	public static var gameScale:Float = 1.0;
	public static var gameImageBase:String = "1x";
	public static var antialias:Bool = true;
	public static var pixelsnap:Bool = false;
	public static var startInFullScreen = false;

	//APIs
	public static var adPositionBottom:Bool = true;
	public static var testAds:Bool = false;
	public static var whirlID:String = "";
	public static var whirlID1:String = "";
	public static var ioswhirlID:String = "";
	public static var ioswhirlID1:String = "";
	public static var cpmstarID:String = "";
	public static var newgroundsID:String = "";
	public static var newgroundsKey:String = "";
	
	//Other
	public static var releaseMode:Bool = false;
	public static var showConsole:Bool = false;
	public static var debugDraw:Bool = false;
	public static var always1x:Bool = false;
	public static var maxScale:Float = 4.0;
	public static var disableBackButton:Bool = false;
	
	//Keys
	public static var androidPublicKey:String = "";

	public function new()
	{
		Input.enable();
		Input.define("up", [nme.ui.Keyboard.UP]);
		Input.define("down", [nme.ui.Keyboard.DOWN]);
		Input.define("left", [nme.ui.Keyboard.LEFT]);
		Input.define("right", [nme.ui.Keyboard.RIGHT]);
		Input.define("action1", [nme.ui.Keyboard.Z]);
		Input.define("action2", [nme.ui.Keyboard.X]);
		Input.define("enter", [nme.ui.Keyboard.ENTER]);
		
	}
	
	public function loadResources(resourceMap:Map<String,Dynamic>):Void
	{
		var i = 0;
		var increment = 50.0 / Math.max(1, 13);
		
		resourceMap.set("0-0.png", Assets.getBitmapData("assets/graphics/" + Engine.IMG_BASE + "/background-0-0.png", false));
		com.stencyl.Data.instance.updatePreloader(15 + Std.int(increment * i)); i++;
		resourceMap.set("1-0.png", Assets.getBitmapData("assets/graphics/" + Engine.IMG_BASE + "/background-1-0.png", false));
		com.stencyl.Data.instance.updatePreloader(15 + Std.int(increment * i)); i++;
		resourceMap.set("5-0.png", Assets.getBitmapData("assets/graphics/" + Engine.IMG_BASE + "/sprite-5-0.png", false));
		com.stencyl.Data.instance.updatePreloader(15 + Std.int(increment * i)); i++;
		resourceMap.set("7-0.png", Assets.getBitmapData("assets/graphics/" + Engine.IMG_BASE + "/sprite-7-0.png", false));
		com.stencyl.Data.instance.updatePreloader(15 + Std.int(increment * i)); i++;
		resourceMap.set("9-0.png", Assets.getBitmapData("assets/graphics/" + Engine.IMG_BASE + "/sprite-9-0.png", false));
		com.stencyl.Data.instance.updatePreloader(15 + Std.int(increment * i)); i++;
		resourceMap.set("11-0.png", Assets.getBitmapData("assets/graphics/" + Engine.IMG_BASE + "/sprite-11-0.png", false));
		com.stencyl.Data.instance.updatePreloader(15 + Std.int(increment * i)); i++;
		resourceMap.set("12.fnt", Assets.getText("assets/graphics/" + Engine.IMG_BASE + "/font-12.fnt"));
		resourceMap.set("12.png", Assets.getBitmapData("assets/graphics/" + Engine.IMG_BASE + "/font-12.png", false));
		com.stencyl.Data.instance.updatePreloader(15 + Std.int(increment * i)); i++;
		resourceMap.set("14-0.png", Assets.getBitmapData("assets/graphics/" + Engine.IMG_BASE + "/sprite-14-0.png", false));
		com.stencyl.Data.instance.updatePreloader(15 + Std.int(increment * i)); i++;
	}
	
	public function loadScenes(scenesXML:Map<Int,String>):Void
	{
		var i = 0;
		var increment = 10.0 / Math.max(1, 3);
		
		scenesXML.set(0, "Avatar");
		com.stencyl.Data.instance.updatePreloader(90 + Std.int(increment * i)); i++;
		scenesXML.set(1, "Level 1");
		com.stencyl.Data.instance.updatePreloader(90 + Std.int(increment * i)); i++;
		scenesXML.set(2, "LoginPage");
		com.stencyl.Data.instance.updatePreloader(90 + Std.int(increment * i)); i++;
	}
}