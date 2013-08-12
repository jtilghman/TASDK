module UnrealScript.Engine.DistributionFloatConstantCurve;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.UObject;

extern(C++) interface DistributionFloatConstantCurve : DistributionFloat
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DistributionFloatConstantCurve")); }
	@property final auto ref UObject.InterpCurveFloat ConstantCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 80); }
}
