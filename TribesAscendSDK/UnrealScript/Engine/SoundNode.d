module UnrealScript.Engine.SoundNode;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface SoundNode : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNode")); }
	@property final auto ref
	{
		ScriptArray!(SoundNode) ChildNodes() { return *cast(ScriptArray!(SoundNode)*)(cast(size_t)cast(void*)this + 64); }
		int NodeUpdateHint() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	}
}
