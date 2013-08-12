module UnrealScript.Engine.SeqVar_RandomInt;

import ScriptClasses;
import UnrealScript.Engine.SeqVar_Int;

extern(C++) interface SeqVar_RandomInt : SeqVar_Int
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_RandomInt")); }
	@property final auto ref
	{
		int Max() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
		int Min() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	}
}
