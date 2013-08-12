module UnrealScript.Engine.SeqAct_FlyThroughHasEnded;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_FlyThroughHasEnded : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_FlyThroughHasEnded")); }
}
