module UnrealScript.UnrealEd.WriteGameStatsReportCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface WriteGameStatsReportCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.WriteGameStatsReportCommandlet")); }
}
