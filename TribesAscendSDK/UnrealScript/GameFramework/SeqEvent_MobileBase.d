module UnrealScript.GameFramework.SeqEvent_MobileBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface SeqEvent_MobileBase : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.SeqEvent_MobileBase")); }
	private static __gshared SeqEvent_MobileBase mDefaultProperties;
	@property final static SeqEvent_MobileBase DefaultProperties() { mixin(MGDPC("SeqEvent_MobileBase", "SeqEvent_MobileBase GameFramework.Default__SeqEvent_MobileBase")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRegisterEvent;
			ScriptFunction mAddToMobileInput;
		}
		public @property static final
		{
			ScriptFunction RegisterEvent() { mixin(MGF("mRegisterEvent", "Function GameFramework.SeqEvent_MobileBase.RegisterEvent")); }
			ScriptFunction AddToMobileInput() { mixin(MGF("mAddToMobileInput", "Function GameFramework.SeqEvent_MobileBase.AddToMobileInput")); }
		}
	}
final:
	void RegisterEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterEvent, cast(void*)0, cast(void*)0);
	}
	void AddToMobileInput(MobilePlayerInput MPI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = MPI;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToMobileInput, params.ptr, cast(void*)0);
	}
}
