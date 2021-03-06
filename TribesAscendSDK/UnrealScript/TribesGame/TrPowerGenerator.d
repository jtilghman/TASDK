module UnrealScript.TribesGame.TrPowerGenerator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrGameObjective;
import UnrealScript.TribesGame.TrTeamBlockerStaticMeshActor;
import UnrealScript.TribesGame.TrHelpTextManager;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.Engine.AnimNodeScalePlayRate;

extern(C++) interface TrPowerGenerator : TrGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPowerGenerator")); }
	private static __gshared TrPowerGenerator mDefaultProperties;
	@property final static TrPowerGenerator DefaultProperties() { mixin(MGDPC("TrPowerGenerator", "TrPowerGenerator TribesGame.Default__TrPowerGenerator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsGeneratingPower;
			ScriptFunction mApplyServerSettings;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mShouldShowHelpText;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mTick;
			ScriptFunction mPlayDamageHealthEffects;
			ScriptFunction mDoRepairs;
			ScriptFunction mDamageAllMorphs;
			ScriptFunction mPlayRestoreHealthEffects;
			ScriptFunction mUpdateGeneratorDowntime;
			ScriptFunction mUpdateGeneratorPower;
			ScriptFunction mAutoRestoreHealth;
			ScriptFunction mAddToPoweredObjectives;
			ScriptFunction mTakeDamage;
			ScriptFunction mGetMarker;
			ScriptFunction mGiveDestroyAccolade;
			ScriptFunction mAwardUpgradeAssists;
		}
		public @property static final
		{
			ScriptFunction IsGeneratingPower() { mixin(MGF("mIsGeneratingPower", "Function TribesGame.TrPowerGenerator.IsGeneratingPower")); }
			ScriptFunction ApplyServerSettings() { mixin(MGF("mApplyServerSettings", "Function TribesGame.TrPowerGenerator.ApplyServerSettings")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function TribesGame.TrPowerGenerator.ReplicatedEvent")); }
			ScriptFunction ShouldShowHelpText() { mixin(MGF("mShouldShowHelpText", "Function TribesGame.TrPowerGenerator.ShouldShowHelpText")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrPowerGenerator.PostBeginPlay")); }
			ScriptFunction PostInitAnimTree() { mixin(MGF("mPostInitAnimTree", "Function TribesGame.TrPowerGenerator.PostInitAnimTree")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrPowerGenerator.Tick")); }
			ScriptFunction PlayDamageHealthEffects() { mixin(MGF("mPlayDamageHealthEffects", "Function TribesGame.TrPowerGenerator.PlayDamageHealthEffects")); }
			ScriptFunction DoRepairs() { mixin(MGF("mDoRepairs", "Function TribesGame.TrPowerGenerator.DoRepairs")); }
			ScriptFunction DamageAllMorphs() { mixin(MGF("mDamageAllMorphs", "Function TribesGame.TrPowerGenerator.DamageAllMorphs")); }
			ScriptFunction PlayRestoreHealthEffects() { mixin(MGF("mPlayRestoreHealthEffects", "Function TribesGame.TrPowerGenerator.PlayRestoreHealthEffects")); }
			ScriptFunction UpdateGeneratorDowntime() { mixin(MGF("mUpdateGeneratorDowntime", "Function TribesGame.TrPowerGenerator.UpdateGeneratorDowntime")); }
			ScriptFunction UpdateGeneratorPower() { mixin(MGF("mUpdateGeneratorPower", "Function TribesGame.TrPowerGenerator.UpdateGeneratorPower")); }
			ScriptFunction AutoRestoreHealth() { mixin(MGF("mAutoRestoreHealth", "Function TribesGame.TrPowerGenerator.AutoRestoreHealth")); }
			ScriptFunction AddToPoweredObjectives() { mixin(MGF("mAddToPoweredObjectives", "Function TribesGame.TrPowerGenerator.AddToPoweredObjectives")); }
			ScriptFunction TakeDamage() { mixin(MGF("mTakeDamage", "Function TribesGame.TrPowerGenerator.TakeDamage")); }
			ScriptFunction GetMarker() { mixin(MGF("mGetMarker", "Function TribesGame.TrPowerGenerator.GetMarker")); }
			ScriptFunction GiveDestroyAccolade() { mixin(MGF("mGiveDestroyAccolade", "Function TribesGame.TrPowerGenerator.GiveDestroyAccolade")); }
			ScriptFunction AwardUpgradeAssists() { mixin(MGF("mAwardUpgradeAssists", "Function TribesGame.TrPowerGenerator.AwardUpgradeAssists")); }
		}
	}
	static struct Critical
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrPowerGenerator.Critical")); }
	}
	static struct BlownUp
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrPowerGenerator.BlownUp")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrGameObjective) m_PoweredObjectives() { mixin(MGPC("ScriptArray!(TrGameObjective)", 1384)); }
			ScriptArray!(TrTeamBlockerStaticMeshActor) m_PoweredTeamBlockers() { mixin(MGPC("ScriptArray!(TrTeamBlockerStaticMeshActor)", 1404)); }
			float m_fAnimInterpSpeed() { mixin(MGPC("float", 1400)); }
			AnimNodeScalePlayRate m_AnimNodeScale() { mixin(MGPC("AnimNodeScalePlayRate", 1396)); }
			float m_fAutoRestoreHealthEffectsInterpSpeed() { mixin(MGPC("float", 1380)); }
			float m_fAutoRestoreHealthTimeStamp() { mixin(MGPC("float", 1376)); }
			int r_nDowntimeRemaining() { mixin(MGPC("int", 1372)); }
			float m_fAutoRestoreHealthTime() { mixin(MGPC("float", 1364)); }
			float m_fMaxMorphDamage() { mixin(MGPC("float", 1360)); }
		}
		bool m_bFullyRestoringHealthEffects() { mixin(MGBPC(1368, 0x2)); }
		bool m_bFullyRestoringHealthEffects(bool val) { mixin(MSBPC(1368, 0x2)); }
		bool m_bAutoRestoreHealthEnabled() { mixin(MGBPC(1368, 0x1)); }
		bool m_bAutoRestoreHealthEnabled(bool val) { mixin(MSBPC(1368, 0x1)); }
	}
final:
	bool IsGeneratingPower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsGeneratingPower, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyServerSettings, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	bool ShouldShowHelpText(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowHelpText, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void PlayDamageHealthEffects(int DamageAmount, int HitBoneIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(int*)&params[4] = HitBoneIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDamageHealthEffects, params.ptr, cast(void*)0);
	}
	void DoRepairs(int HealAmount, Controller EventInstigator, Actor DamageCauser, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[44];
		params[] = 0;
		*cast(int*)params.ptr = HealAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Actor*)&params[8] = DamageCauser;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[16] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoRepairs, params.ptr, cast(void*)0);
	}
	void DamageAllMorphs(float DamageAmount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.DamageAllMorphs, params.ptr, cast(void*)0);
	}
	void PlayRestoreHealthEffects(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRestoreHealthEffects, params.ptr, cast(void*)0);
	}
	void UpdateGeneratorDowntime()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGeneratorDowntime, cast(void*)0, cast(void*)0);
	}
	void UpdateGeneratorPower(bool bPowered)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPowered;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGeneratorPower, params.ptr, cast(void*)0);
	}
	void AutoRestoreHealth(bool bFullyRestore)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFullyRestore;
		(cast(ScriptObject)this).ProcessEvent(Functions.AutoRestoreHealth, params.ptr, cast(void*)0);
	}
	void AddToPoweredObjectives(TrDeployable dep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable*)params.ptr = dep;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToPoweredObjectives, params.ptr, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null, Actor* DamageCauser = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[36] = *HitInfo;
		if (DamageCauser !is null)
			*cast(Actor*)&params[64] = *DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	void GiveDestroyAccolade(TrPlayerController TrPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveDestroyAccolade, params.ptr, cast(void*)0);
	}
	void AwardUpgradeAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AwardUpgradeAssists, cast(void*)0, cast(void*)0);
	}
}
