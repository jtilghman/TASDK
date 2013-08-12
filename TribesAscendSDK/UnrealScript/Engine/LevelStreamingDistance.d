module UnrealScript.Engine.LevelStreamingDistance;

import ScriptClasses;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingDistance : LevelStreaming
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LevelStreamingDistance")); }
	@property final auto ref
	{
		float MaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		Vector Origin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
	}
}
