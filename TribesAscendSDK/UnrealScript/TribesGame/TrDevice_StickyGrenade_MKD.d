module UnrealScript.TribesGame.TrDevice_StickyGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_StickyGrenade;

extern(C++) interface TrDevice_StickyGrenade_MKD : TrDevice_StickyGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_StickyGrenade_MKD")); }
}
