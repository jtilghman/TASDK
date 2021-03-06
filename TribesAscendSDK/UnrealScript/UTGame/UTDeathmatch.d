module UnrealScript.UTGame.UTDeathmatch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTGame;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTDeathmatch : UTGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDeathmatch")); }
	private static __gshared UTDeathmatch mDefaultProperties;
	@property final static UTDeathmatch DefaultProperties() { mixin(MGDPC("UTDeathmatch", "UTDeathmatch UTGame.Default__UTDeathmatch")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mWantsPickups;
			ScriptFunction mGetHandicapNeed;
		}
		public @property static final
		{
			ScriptFunction WantsPickups() { mixin(MGF("mWantsPickups", "Function UTGame.UTDeathmatch.WantsPickups")); }
			ScriptFunction GetHandicapNeed() { mixin(MGF("mGetHandicapNeed", "Function UTGame.UTDeathmatch.GetHandicapNeed")); }
		}
	}
final:
	bool WantsPickups(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.WantsPickups, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetHandicapNeed(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHandicapNeed, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
