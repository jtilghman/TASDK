module UnrealScript.UnrealEd.TextureExporterTGA;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface TextureExporterTGA : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TextureExporterTGA")); }
}
