module UnrealScript.UnrealEd.DumpEmittersCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface DumpEmittersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.DumpEmittersCommandlet")); }
}
