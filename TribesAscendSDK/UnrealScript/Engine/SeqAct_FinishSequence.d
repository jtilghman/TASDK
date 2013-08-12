module UnrealScript.Engine.SeqAct_FinishSequence;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_FinishSequence : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_FinishSequence")); }
	@property final auto ref ScriptString OutputLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
}
