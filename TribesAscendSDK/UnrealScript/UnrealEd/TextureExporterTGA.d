module UnrealScript.UnrealEd.TextureExporterTGA;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface TextureExporterTGA : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TextureExporterTGA")); }
	private static __gshared TextureExporterTGA mDefaultProperties;
	@property final static TextureExporterTGA DefaultProperties() { mixin(MGDPC("TextureExporterTGA", "TextureExporterTGA UnrealEd.Default__TextureExporterTGA")); }
}
