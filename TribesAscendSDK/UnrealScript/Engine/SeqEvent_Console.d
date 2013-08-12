module UnrealScript.Engine.SeqEvent_Console;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_Console : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_Console")); }
	@property final auto ref
	{
		ScriptString EventDesc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
		ScriptName ConsoleEventName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 256); }
	}
}
