module UnrealScript.TribesGame.TrRank_22;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_22 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_22")); }
	private static __gshared TrRank_22 mDefaultProperties;
	@property final static TrRank_22 DefaultProperties() { mixin(MGDPC("TrRank_22", "TrRank_22 TribesGame.Default__TrRank_22")); }
}
