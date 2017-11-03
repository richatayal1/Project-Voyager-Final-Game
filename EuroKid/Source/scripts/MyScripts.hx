package scripts;

import com.stencyl.behavior.Script;
import scripts.SceneEvents_0;
import scripts.SceneEvents_1;
import scripts.ActorEvents_4;
import scripts.Design_4_4_LisaSelect;
import scripts.ActorEvents_6;
import scripts.ActorEvents_8;
import scripts.ActorEvents_10;
import scripts.Design_8_8_NainaSelect;
import scripts.Design_9_9_DaveSelect;
import scripts.Design_10_10_JackSelect;
import scripts.Design_11_11_BasicCharSelectBehavior;
import scripts.SceneEvents_2;
import scripts.ActorEvents_13;


//Force all classes to compile since they aren't statically used.
class MyScripts
{
	var s:Script;
	var a:MyAssets;
	
	#if(mobile && !air)
	var stencylPreloader:scripts.StencylPreloader;
	#end
}