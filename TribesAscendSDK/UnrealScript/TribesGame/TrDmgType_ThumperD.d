module UnrealScript.TribesGame.TrDmgType_ThumperD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ThumperD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ThumperD")); }
}
