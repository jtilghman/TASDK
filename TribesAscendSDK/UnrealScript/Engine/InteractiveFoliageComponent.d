module UnrealScript.Engine.InteractiveFoliageComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface InteractiveFoliageComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InteractiveFoliageComponent")); }
	@property final auto ref UObject.Pointer FoliageSceneProxy() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 608); }
}
