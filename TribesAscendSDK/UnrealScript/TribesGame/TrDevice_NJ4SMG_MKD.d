module UnrealScript.TribesGame.TrDevice_NJ4SMG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_NJ4SMG;

extern(C++) interface TrDevice_NJ4SMG_MKD : TrDevice_NJ4SMG
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_NJ4SMG_MKD")); }
}
