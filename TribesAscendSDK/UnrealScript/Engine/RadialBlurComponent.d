module UnrealScript.Engine.RadialBlurComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.Scene;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface RadialBlurComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RadialBlurComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetMaterial;
			ScriptFunction mSetBlurScale;
			ScriptFunction mSetBlurFalloffExponent;
			ScriptFunction mSetBlurOpacity;
			ScriptFunction mSetEnabled;
			ScriptFunction mOnUpdatePropertyBlurScale;
			ScriptFunction mOnUpdatePropertyBlurFalloffExponent;
			ScriptFunction mOnUpdatePropertyBlurOpacity;
		}
		public @property static final
		{
			ScriptFunction SetMaterial() { return mSetMaterial ? mSetMaterial : (mSetMaterial = ScriptObject.Find!(ScriptFunction)("Function Engine.RadialBlurComponent.SetMaterial")); }
			ScriptFunction SetBlurScale() { return mSetBlurScale ? mSetBlurScale : (mSetBlurScale = ScriptObject.Find!(ScriptFunction)("Function Engine.RadialBlurComponent.SetBlurScale")); }
			ScriptFunction SetBlurFalloffExponent() { return mSetBlurFalloffExponent ? mSetBlurFalloffExponent : (mSetBlurFalloffExponent = ScriptObject.Find!(ScriptFunction)("Function Engine.RadialBlurComponent.SetBlurFalloffExponent")); }
			ScriptFunction SetBlurOpacity() { return mSetBlurOpacity ? mSetBlurOpacity : (mSetBlurOpacity = ScriptObject.Find!(ScriptFunction)("Function Engine.RadialBlurComponent.SetBlurOpacity")); }
			ScriptFunction SetEnabled() { return mSetEnabled ? mSetEnabled : (mSetEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.RadialBlurComponent.SetEnabled")); }
			ScriptFunction OnUpdatePropertyBlurScale() { return mOnUpdatePropertyBlurScale ? mOnUpdatePropertyBlurScale : (mOnUpdatePropertyBlurScale = ScriptObject.Find!(ScriptFunction)("Function Engine.RadialBlurComponent.OnUpdatePropertyBlurScale")); }
			ScriptFunction OnUpdatePropertyBlurFalloffExponent() { return mOnUpdatePropertyBlurFalloffExponent ? mOnUpdatePropertyBlurFalloffExponent : (mOnUpdatePropertyBlurFalloffExponent = ScriptObject.Find!(ScriptFunction)("Function Engine.RadialBlurComponent.OnUpdatePropertyBlurFalloffExponent")); }
			ScriptFunction OnUpdatePropertyBlurOpacity() { return mOnUpdatePropertyBlurOpacity ? mOnUpdatePropertyBlurOpacity : (mOnUpdatePropertyBlurOpacity = ScriptObject.Find!(ScriptFunction)("Function Engine.RadialBlurComponent.OnUpdatePropertyBlurOpacity")); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Matrix LocalToWorld() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 128); }
			float DistanceFalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float MaxCullDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float BlurOpacity() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float BlurFalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float BlurScale() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			Scene.ESceneDepthPriorityGroup DepthPriorityGroup() { return *cast(Scene.ESceneDepthPriorityGroup*)(cast(size_t)cast(void*)this + 92); }
			// WARNING: Property 'Material' has the same name as a defined type!
		}
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
		bool bRenderAsVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
		bool bRenderAsVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	}
final:
	void SetMaterial(MaterialInterface InMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = InMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMaterial, params.ptr, cast(void*)0);
	}
	void SetBlurScale(float InBlurScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InBlurScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBlurScale, params.ptr, cast(void*)0);
	}
	void SetBlurFalloffExponent(float InBlurFalloffExponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InBlurFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBlurFalloffExponent, params.ptr, cast(void*)0);
	}
	void SetBlurOpacity(float InBlurOpacity)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InBlurOpacity;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBlurOpacity, params.ptr, cast(void*)0);
	}
	void SetEnabled(bool bInEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
	void OnUpdatePropertyBlurScale()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyBlurScale, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBlurFalloffExponent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyBlurFalloffExponent, cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBlurOpacity()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePropertyBlurOpacity, cast(void*)0, cast(void*)0);
	}
}
