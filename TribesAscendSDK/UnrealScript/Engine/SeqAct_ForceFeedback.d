module UnrealScript.Engine.SeqAct_ForceFeedback;

import ScriptClasses;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ForceFeedback : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ForceFeedback")); }
	@property final auto ref
	{
		ForceFeedbackWaveform FFWaveform() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 232); }
		ScriptClass PredefinedWaveForm() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 236); }
	}
}
