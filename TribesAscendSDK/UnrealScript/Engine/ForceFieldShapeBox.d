module UnrealScript.Engine.ForceFieldShapeBox;

import ScriptClasses;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface ForceFieldShapeBox : ForceFieldShape
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ForceFieldShapeBox")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetRadii;
			ScriptFunction mFillBySphere;
			ScriptFunction mFillByBox;
			ScriptFunction mFillByCapsule;
			ScriptFunction mFillByCylinder;
			ScriptFunction mGetDrawComponent;
		}
		public @property static final
		{
			ScriptFunction GetRadii() { return mGetRadii ? mGetRadii : (mGetRadii = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFieldShapeBox.GetRadii")); }
			ScriptFunction FillBySphere() { return mFillBySphere ? mFillBySphere : (mFillBySphere = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFieldShapeBox.FillBySphere")); }
			ScriptFunction FillByBox() { return mFillByBox ? mFillByBox : (mFillByBox = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFieldShapeBox.FillByBox")); }
			ScriptFunction FillByCapsule() { return mFillByCapsule ? mFillByCapsule : (mFillByCapsule = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFieldShapeBox.FillByCapsule")); }
			ScriptFunction FillByCylinder() { return mFillByCylinder ? mFillByCylinder : (mFillByCylinder = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFieldShapeBox.FillByCylinder")); }
			ScriptFunction GetDrawComponent() { return mGetDrawComponent ? mGetDrawComponent : (mGetDrawComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.ForceFieldShapeBox.GetDrawComponent")); }
		}
	}
final:
	Vector GetRadii()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRadii, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void FillBySphere(float Radius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Radius;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillBySphere, params.ptr, cast(void*)0);
	}
	void FillByBox(Vector Extent)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Extent;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillByBox, params.ptr, cast(void*)0);
	}
	void FillByCapsule(float Height, float Radius)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Height;
		*cast(float*)&params[4] = Radius;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillByCapsule, params.ptr, cast(void*)0);
	}
	void FillByCylinder(float BottomRadius, float TopRadius, float Height, float HeightOffset)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = BottomRadius;
		*cast(float*)&params[4] = TopRadius;
		*cast(float*)&params[8] = Height;
		*cast(float*)&params[12] = HeightOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillByCylinder, params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetDrawComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDrawComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr;
	}
}
