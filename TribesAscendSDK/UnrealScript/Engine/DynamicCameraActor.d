module UnrealScript.Engine.DynamicCameraActor;

import ScriptClasses;
import UnrealScript.Engine.CameraActor;

extern(C++) interface DynamicCameraActor : CameraActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DynamicCameraActor")); }
}
