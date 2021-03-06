module UnrealScript.TribesGame.TrDevice_SpikeLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_SpikeLauncher : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_SpikeLauncher")); }
	private static __gshared TrDevice_SpikeLauncher mDefaultProperties;
	@property final static TrDevice_SpikeLauncher DefaultProperties() { mixin(MGDPC("TrDevice_SpikeLauncher", "TrDevice_SpikeLauncher TribesGame.Default__TrDevice_SpikeLauncher")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetSpikeIdle;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mOnAnimPlay;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mPlayWeaponEquip;
			ScriptFunction mPlayWeaponPutDown;
			ScriptFunction mPutDownFast;
			ScriptFunction mOnSwitchAwayFromWeapon;
		}
		public @property static final
		{
			ScriptFunction SetSpikeIdle() { mixin(MGF("mSetSpikeIdle", "Function TribesGame.TrDevice_SpikeLauncher.SetSpikeIdle")); }
			ScriptFunction PostInitAnimTree() { mixin(MGF("mPostInitAnimTree", "Function TribesGame.TrDevice_SpikeLauncher.PostInitAnimTree")); }
			ScriptFunction OnAnimPlay() { mixin(MGF("mOnAnimPlay", "Function TribesGame.TrDevice_SpikeLauncher.OnAnimPlay")); }
			ScriptFunction OnAnimEnd() { mixin(MGF("mOnAnimEnd", "Function TribesGame.TrDevice_SpikeLauncher.OnAnimEnd")); }
			ScriptFunction PlayWeaponEquip() { mixin(MGF("mPlayWeaponEquip", "Function TribesGame.TrDevice_SpikeLauncher.PlayWeaponEquip")); }
			ScriptFunction PlayWeaponPutDown() { mixin(MGF("mPlayWeaponPutDown", "Function TribesGame.TrDevice_SpikeLauncher.PlayWeaponPutDown")); }
			ScriptFunction PutDownFast() { mixin(MGF("mPutDownFast", "Function TribesGame.TrDevice_SpikeLauncher.PutDownFast")); }
			ScriptFunction OnSwitchAwayFromWeapon() { mixin(MGF("mOnSwitchAwayFromWeapon", "Function TribesGame.TrDevice_SpikeLauncher.OnSwitchAwayFromWeapon")); }
		}
	}
	@property final auto ref SoundCue m_SpikeIdleSound() { mixin(MGPC("SoundCue", 2148)); }
final:
	void SetSpikeIdle(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpikeIdle, params.ptr, cast(void*)0);
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
	void OnAnimPlay(AnimNodeSequence SeqNode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimPlay, params.ptr, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimEnd, params.ptr, cast(void*)0);
	}
	void PlayWeaponEquip()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponEquip, cast(void*)0, cast(void*)0);
	}
	void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponPutDown, cast(void*)0, cast(void*)0);
	}
	void PutDownFast()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PutDownFast, cast(void*)0, cast(void*)0);
	}
	void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchAwayFromWeapon, cast(void*)0, cast(void*)0);
	}
}
