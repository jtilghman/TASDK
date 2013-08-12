module UnrealScript.Engine.SeqAct_Possess;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Possess : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_Possess")); }
	@property final
	{
		@property final auto ref Pawn PawnToPossess() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 232); }
		bool bTryToLeaveVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
		bool bTryToLeaveVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
		bool bKillOldPawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bKillOldPawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
}
