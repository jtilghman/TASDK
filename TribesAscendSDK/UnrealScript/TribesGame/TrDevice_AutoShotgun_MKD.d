module UnrealScript.TribesGame.TrDevice_AutoShotgun_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoShotgun;

extern(C++) interface TrDevice_AutoShotgun_MKD : TrDevice_AutoShotgun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_AutoShotgun_MKD")); }
}
