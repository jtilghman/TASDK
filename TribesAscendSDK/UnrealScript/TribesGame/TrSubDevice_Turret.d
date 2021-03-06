module UnrealScript.TribesGame.TrSubDevice_Turret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSubDevice;

extern(C++) interface TrSubDevice_Turret : TrSubDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSubDevice_Turret")); }
	private static __gshared TrSubDevice_Turret mDefaultProperties;
	@property final static TrSubDevice_Turret DefaultProperties() { mixin(MGDPC("TrSubDevice_Turret", "TrSubDevice_Turret TribesGame.Default__TrSubDevice_Turret")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetPhysicalFireStartLoc;
			ScriptFunction mGetFireInterval;
		}
		public @property static final
		{
			ScriptFunction GetPhysicalFireStartLoc() { mixin(MGF("mGetPhysicalFireStartLoc", "Function TribesGame.TrSubDevice_Turret.GetPhysicalFireStartLoc")); }
			ScriptFunction GetFireInterval() { mixin(MGF("mGetFireInterval", "Function TribesGame.TrSubDevice_Turret.GetFireInterval")); }
		}
	}
final:
	Vector GetPhysicalFireStartLoc(Vector* AimDir = null)
	{
		ubyte params[24];
		params[] = 0;
		if (AimDir !is null)
			*cast(Vector*)params.ptr = *AimDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalFireStartLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	float GetFireInterval(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFireInterval, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
}
