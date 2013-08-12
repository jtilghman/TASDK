module UnrealScript.Engine.DrawLightConeComponent;

import ScriptClasses;
import UnrealScript.Engine.DrawConeComponent;

extern(C++) interface DrawLightConeComponent : DrawConeComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawLightConeComponent")); }
}
