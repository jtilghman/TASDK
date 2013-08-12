module UnrealScript.Engine.SeqVar_Object;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;
import UnrealScript.Core.UObject;

extern(C++) interface SeqVar_Object : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_Object")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjectValue;
			ScriptFunction mSetObjectValue;
		}
		public @property static final
		{
			ScriptFunction GetObjectValue() { return mGetObjectValue ? mGetObjectValue : (mGetObjectValue = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqVar_Object.GetObjectValue")); }
			ScriptFunction SetObjectValue() { return mSetObjectValue ? mSetObjectValue : (mSetObjectValue = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqVar_Object.SetObjectValue")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptClass) SupportedClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 164); }
		Vector ActorLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
		UObject ObjValue() { return *cast(UObject*)(cast(size_t)cast(void*)this + 148); }
	}
final:
	UObject GetObjectValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetObjectValue, params.ptr, cast(void*)0);
		return *cast(UObject*)params.ptr;
	}
	void SetObjectValue(UObject NewValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = NewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetObjectValue, params.ptr, cast(void*)0);
	}
}
