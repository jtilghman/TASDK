module UnrealScript.TribesGame.TrCamera_BloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrCamera_SpectatorBookmark;

extern(C++) interface TrCamera_BloodEagle : TrCamera_SpectatorBookmark
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCamera_BloodEagle")); }
}
