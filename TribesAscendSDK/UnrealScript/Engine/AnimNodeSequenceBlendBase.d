module UnrealScript.Engine.AnimNodeSequenceBlendBase;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimNodeSequenceBlendBase : AnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeSequenceBlendBase")); }
	struct AnimBlendInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNodeSequenceBlendBase.AnimBlendInfo")); }
		@property final auto ref
		{
			float Weight() { return *cast(float*)(cast(size_t)&this + 24); }
			// WARNING: Property 'AnimInfo' has the same name as a defined type!
			ScriptName AnimName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct AnimInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNodeSequenceBlendBase.AnimInfo")); }
		@property final auto ref
		{
			int AnimLinkupIndex() { return *cast(int*)(cast(size_t)&this + 12); }
			AnimSequence AnimSeq() { return *cast(AnimSequence*)(cast(size_t)&this + 8); }
			ScriptName AnimSeqName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(AnimNodeSequenceBlendBase.AnimBlendInfo) Anims() { return *cast(ScriptArray!(AnimNodeSequenceBlendBase.AnimBlendInfo)*)(cast(size_t)cast(void*)this + 320); }
}
