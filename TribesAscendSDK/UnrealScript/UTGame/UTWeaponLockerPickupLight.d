module UnrealScript.UTGame.UTWeaponLockerPickupLight;

import ScriptClasses;
import UnrealScript.Engine.Light;

extern(C++) interface UTWeaponLockerPickupLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTWeaponLockerPickupLight")); }
}
