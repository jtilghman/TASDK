module UnrealScript.TribesGame.TrSVehicleSimTank;

import ScriptClasses;
import UnrealScript.Engine.SVehicleSimTank;

extern(C++) interface TrSVehicleSimTank : SVehicleSimTank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSVehicleSimTank")); }
	@property final auto ref
	{
		float m_fVelocityChangeDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float m_fLastDirectionNudgeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	}
}
