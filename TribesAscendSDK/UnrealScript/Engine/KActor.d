module UnrealScript.Engine.KActor;

import ScriptClasses;
import UnrealScript.Engine.DynamicSMActor;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.SeqAct_Teleport;

extern(C++) interface KActor : DynamicSMActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.KActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetKActorPhysMaterial;
			ScriptFunction mResolveRBState;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mDestroyed;
			ScriptFunction mSetPhysicalCollisionProperties;
			ScriptFunction mSpawnedByKismet;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mApplyImpulse;
			ScriptFunction mTakeDamage;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mOnToggle;
			ScriptFunction mOnTeleport;
			ScriptFunction mReset;
		}
		public @property static final
		{
			ScriptFunction GetKActorPhysMaterial() { return mGetKActorPhysMaterial ? mGetKActorPhysMaterial : (mGetKActorPhysMaterial = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.GetKActorPhysMaterial")); }
			ScriptFunction ResolveRBState() { return mResolveRBState ? mResolveRBState : (mResolveRBState = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.ResolveRBState")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.PostBeginPlay")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.FellOutOfWorld")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.Destroyed")); }
			ScriptFunction SetPhysicalCollisionProperties() { return mSetPhysicalCollisionProperties ? mSetPhysicalCollisionProperties : (mSetPhysicalCollisionProperties = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.SetPhysicalCollisionProperties")); }
			ScriptFunction SpawnedByKismet() { return mSpawnedByKismet ? mSpawnedByKismet : (mSpawnedByKismet = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.SpawnedByKismet")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.ReplicatedEvent")); }
			ScriptFunction ApplyImpulse() { return mApplyImpulse ? mApplyImpulse : (mApplyImpulse = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.ApplyImpulse")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.TakeDamage")); }
			ScriptFunction TakeRadiusDamage() { return mTakeRadiusDamage ? mTakeRadiusDamage : (mTakeRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.TakeRadiusDamage")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.OnToggle")); }
			ScriptFunction OnTeleport() { return mOnTeleport ? mOnTeleport : (mOnTeleport = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.OnTeleport")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.KActor.Reset")); }
		}
	}
	@property final
	{
		auto ref
		{
			Rotator InitialRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 700); }
			Vector InitialLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 688); }
			Vector ReplicatedDrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 676); }
			float AngErrorAccumulator() { return *cast(float*)(cast(size_t)cast(void*)this + 672); }
			Actor.RigidBodyState RBState() { return *cast(Actor.RigidBodyState*)(cast(size_t)cast(void*)this + 608); }
			float MaxPhysicsVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
			float StayUprightMaxTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
			float StayUprightTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
			Actor.PhysEffectInfo SlideEffectInfo() { return *cast(Actor.PhysEffectInfo*)(cast(size_t)cast(void*)this + 580); }
			float LastSlideTime() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
			Actor.PhysEffectInfo ImpactEffectInfo() { return *cast(Actor.PhysEffectInfo*)(cast(size_t)cast(void*)this + 552); }
			float LastImpactTime() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
		}
		bool bDisableClientSidePawnInteractions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x80) != 0; }
		bool bDisableClientSidePawnInteractions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x80; } return val; }
		bool bNeedsRBStateReplication() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x40) != 0; }
		bool bNeedsRBStateReplication(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x40; } return val; }
		bool bLimitMaxPhysicsVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x20) != 0; }
		bool bLimitMaxPhysicsVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x20; } return val; }
		bool bEnableStayUprightSpring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10) != 0; }
		bool bEnableStayUprightSpring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10; } return val; }
		bool bSlideActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8) != 0; }
		bool bSlideActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8; } return val; }
		bool bCurrentSlide() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
		bool bCurrentSlide(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
		bool bWakeOnLevelStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
		bool bWakeOnLevelStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
		bool bDamageAppliesImpulse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
		bool bDamageAppliesImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	}
final:
	PhysicalMaterial GetKActorPhysMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetKActorPhysMaterial, params.ptr, cast(void*)0);
		return *cast(PhysicalMaterial*)params.ptr;
	}
	void ResolveRBState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResolveRBState, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void SetPhysicalCollisionProperties()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPhysicalCollisionProperties, cast(void*)0, cast(void*)0);
	}
	void SpawnedByKismet()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnedByKismet, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void ApplyImpulse(Vector ImpulseDir, float ImpulseMag, Vector HitLocation, Actor.TraceHitInfo HitInfo, ScriptClass pDamageType)
	{
		ubyte params[60];
		params[] = 0;
		*cast(Vector*)params.ptr = ImpulseDir;
		*cast(float*)&params[12] = ImpulseMag;
		*cast(Vector*)&params[16] = HitLocation;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		*cast(ScriptClass*)&params[56] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyImpulse, params.ptr, cast(void*)0);
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeRadiusDamage, params.ptr, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void OnTeleport(SeqAct_Teleport inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Teleport*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTeleport, params.ptr, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
}
