module UnrealScript.TribesGame.TrDmgType_GrenadeT5;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_GrenadeT5 : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_GrenadeT5")); }
}
