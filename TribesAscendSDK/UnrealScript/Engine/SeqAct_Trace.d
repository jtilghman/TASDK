module UnrealScript.Engine.SeqAct_Trace;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Trace : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_Trace")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_Trace.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			Vector HitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 280); }
			float Distance() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			UObject HitObject() { return *cast(UObject*)(cast(size_t)cast(void*)this + 272); }
			Vector EndOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 260); }
			Vector StartOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 248); }
			Vector TraceExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bTraceWorld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool bTraceWorld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
		bool bTraceActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bTraceActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
