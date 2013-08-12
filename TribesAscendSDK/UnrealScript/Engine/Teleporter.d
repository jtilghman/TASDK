module UnrealScript.Engine.Teleporter;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface Teleporter : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Teleporter")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCanTeleport;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mAccept;
			ScriptFunction mTouch;
			ScriptFunction mPostTouch;
			ScriptFunction mSpecialHandling;
		}
		public @property static final
		{
			ScriptFunction CanTeleport() { return mCanTeleport ? mCanTeleport : (mCanTeleport = ScriptObject.Find!(ScriptFunction)("Function Engine.Teleporter.CanTeleport")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Teleporter.PostBeginPlay")); }
			ScriptFunction Accept() { return mAccept ? mAccept : (mAccept = ScriptObject.Find!(ScriptFunction)("Function Engine.Teleporter.Accept")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Teleporter.Touch")); }
			ScriptFunction PostTouch() { return mPostTouch ? mPostTouch : (mPostTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Teleporter.PostTouch")); }
			ScriptFunction SpecialHandling() { return mSpecialHandling ? mSpecialHandling : (mSpecialHandling = ScriptObject.Find!(ScriptFunction)("Function Engine.Teleporter.SpecialHandling")); }
		}
	}
	@property final
	{
		auto ref
		{
			float LastFired() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
			Vector TargetVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 716); }
			ScriptName ProductRequired() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 704); }
			// WARNING: Property 'URL' has the same name as a defined type!
		}
		bool bCanTeleportVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x40) != 0; }
		bool bCanTeleportVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x40; } return val; }
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x20) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x20; } return val; }
		bool bReversesZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x10) != 0; }
		bool bReversesZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x10; } return val; }
		bool bReversesY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x8) != 0; }
		bool bReversesY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x8; } return val; }
		bool bReversesX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x4) != 0; }
		bool bReversesX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x4; } return val; }
		bool bChangesYaw() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x2) != 0; }
		bool bChangesYaw(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x2; } return val; }
		bool bChangesVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x1) != 0; }
		bool bChangesVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x1; } return val; }
	}
final:
	bool CanTeleport(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanTeleport, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool Accept(Actor Incoming, Actor Source)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Incoming;
		*cast(Actor*)&params[4] = Source;
		(cast(ScriptObject)this).ProcessEvent(Functions.Accept, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
	void PostTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostTouch, params.ptr, cast(void*)0);
	}
	Actor SpecialHandling(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialHandling, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
}
