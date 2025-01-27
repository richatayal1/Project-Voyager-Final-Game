package scripts;

import com.stencyl.graphics.G;
import com.stencyl.graphics.BitmapWrapper;

import com.stencyl.behavior.Script;
import com.stencyl.behavior.Script.*;
import com.stencyl.behavior.ActorScript;
import com.stencyl.behavior.SceneScript;
import com.stencyl.behavior.TimedTask;

import com.stencyl.models.Actor;
import com.stencyl.models.GameModel;
import com.stencyl.models.actor.Animation;
import com.stencyl.models.actor.ActorType;
import com.stencyl.models.actor.Collision;
import com.stencyl.models.actor.Group;
import com.stencyl.models.Scene;
import com.stencyl.models.Sound;
import com.stencyl.models.Region;
import com.stencyl.models.Font;
import com.stencyl.models.Joystick;

import com.stencyl.Engine;
import com.stencyl.Input;
import com.stencyl.Key;
import com.stencyl.utils.Utils;

import openfl.ui.Mouse;
import openfl.display.Graphics;
import openfl.display.BlendMode;
import openfl.display.BitmapData;
import openfl.display.Bitmap;
import openfl.events.Event;
import openfl.events.KeyboardEvent;
import openfl.events.TouchEvent;
import openfl.net.URLLoader;

import box2D.common.math.B2Vec2;
import box2D.dynamics.B2Body;
import box2D.dynamics.B2Fixture;
import box2D.dynamics.joints.B2Joint;
import box2D.collision.shapes.B2Shape;

import motion.Actuate;
import motion.easing.Back;
import motion.easing.Cubic;
import motion.easing.Elastic;
import motion.easing.Expo;
import motion.easing.Linear;
import motion.easing.Quad;
import motion.easing.Quart;
import motion.easing.Quint;
import motion.easing.Sine;

import com.stencyl.graphics.shaders.BasicShader;
import com.stencyl.graphics.shaders.GrayscaleShader;
import com.stencyl.graphics.shaders.SepiaShader;
import com.stencyl.graphics.shaders.InvertShader;
import com.stencyl.graphics.shaders.GrainShader;
import com.stencyl.graphics.shaders.ExternalShader;
import com.stencyl.graphics.shaders.InlineShader;
import com.stencyl.graphics.shaders.BlurShader;
import com.stencyl.graphics.shaders.SharpenShader;
import com.stencyl.graphics.shaders.ScanlineShader;
import com.stencyl.graphics.shaders.CSBShader;
import com.stencyl.graphics.shaders.HueShader;
import com.stencyl.graphics.shaders.TintShader;
import com.stencyl.graphics.shaders.BloomShader;



class SceneEvents_2 extends SceneScript
{
	public var _LoginXAttribute:Float;
	public var _LoginYAttribute:Float;
	public var _Name:String;
	public var _username:String;
	public var _InputXAttribute:Float;
	public var _InputYAttribute:Float;
	public var _Age:Float;
	public var _Gender:Array<Dynamic>;
	public var _GenderList:Array<Dynamic>;
	
	
	public function new(dummy:Int, dummy2:Engine)
	{
		super();
		nameMap.set("LoginXAttribute", "_LoginXAttribute");
		_LoginXAttribute = 0;
		nameMap.set("LoginYAttribute", "_LoginYAttribute");
		_LoginYAttribute = 0;
		nameMap.set("Name", "_Name");
		_Name = "";
		nameMap.set("username", "_username");
		_username = "";
		nameMap.set("InputXAttribute", "_InputXAttribute");
		_InputXAttribute = 0;
		nameMap.set("InputYAttribute", "_InputYAttribute");
		_InputYAttribute = 0;
		nameMap.set("Age", "_Age");
		_Age = 0;
		nameMap.set("Gender", "_Gender");
		nameMap.set("GenderList", "_GenderList");
		
	}
	
	override public function init()
	{
		
		/* ======================== When Creating ========================= */
		_LoginXAttribute = asNumber(20);
		propertyChanged("_LoginXAttribute", _LoginXAttribute);
		_LoginYAttribute = asNumber(70);
		propertyChanged("_LoginYAttribute", _LoginYAttribute);
		_InputXAttribute = asNumber(80);
		propertyChanged("_InputXAttribute", _InputXAttribute);
		_InputYAttribute = asNumber(70);
		propertyChanged("_InputYAttribute", _InputYAttribute);
		
		/* ========================= When Drawing ========================= */
		addWhenDrawingListener(null, function(g:G, x:Float, y:Float, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled)
			{
				g.setFont(getFont(12));
				g.drawString("" + "Name", _LoginXAttribute, _LoginYAttribute);
				g.drawString("" + "Age", _LoginXAttribute, (_LoginYAttribute + 60));
				g.drawString("" + "Gender", _LoginXAttribute, (_LoginYAttribute + 120));
				g.drawString("" + _username, _InputXAttribute, _InputYAttribute);
			}
		});
		
		/* =========================== Any Key ============================ */
		addAnyKeyPressedListener(function(event:KeyboardEvent, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled)
			{
				_username = (("" + _username) + ("" + charFromCharCode(event.charCode)));
				propertyChanged("_username", _username);
				Engine.engine.setGameAttribute("ProfileName", _username);
			}
		});
		
	}
	
	override public function forwardMessage(msg:String)
	{
		
	}
}