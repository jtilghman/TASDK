module UnrealScript.TribesGame.TrAccolade_MultiKill_Triple;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_MultiKill_Triple : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_MultiKill_Triple")); }
	private static __gshared TrAccolade_MultiKill_Triple mDefaultProperties;
	@property final static TrAccolade_MultiKill_Triple DefaultProperties() { mixin(MGDPC("TrAccolade_MultiKill_Triple", "TrAccolade_MultiKill_Triple TribesGame.Default__TrAccolade_MultiKill_Triple")); }
}
