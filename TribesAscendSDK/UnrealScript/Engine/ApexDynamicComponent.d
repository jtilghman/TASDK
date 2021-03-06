module UnrealScript.Engine.ApexDynamicComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ApexComponentBase;

extern(C++) interface ApexDynamicComponent : ApexComponentBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ApexDynamicComponent")); }
	private static __gshared ApexDynamicComponent mDefaultProperties;
	@property final static ApexDynamicComponent DefaultProperties() { mixin(MGDPC("ApexDynamicComponent", "ApexDynamicComponent Engine.Default__ApexDynamicComponent")); }
	@property final auto ref Pointer ComponentDynamicResources() { mixin(MGPC("Pointer", 520)); }
}
