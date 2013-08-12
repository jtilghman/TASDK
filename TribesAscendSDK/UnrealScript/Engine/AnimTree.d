module UnrealScript.Engine.AnimTree;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.MorphTargetSet;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.AnimNodeBlendBase;
import UnrealScript.Engine.SkelControlBase;
import UnrealScript.Engine.StaticMesh;
import UnrealScript.Engine.MorphNodeBase;
import UnrealScript.Engine.AnimNode;

extern(C++) interface AnimTree : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimTree")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFindSkelControl;
			ScriptFunction mFindMorphNode;
			ScriptFunction mSetUseSavedPose;
			ScriptFunction mSetAnimGroupForNode;
			ScriptFunction mGetGroupSynchMaster;
			ScriptFunction mGetGroupNotifyMaster;
			ScriptFunction mForceGroupRelativePosition;
			ScriptFunction mGetGroupRelativePosition;
			ScriptFunction mSetGroupRateScale;
			ScriptFunction mGetGroupRateScale;
			ScriptFunction mGetGroupIndex;
		}
		public @property static final
		{
			ScriptFunction FindSkelControl() { return mFindSkelControl ? mFindSkelControl : (mFindSkelControl = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimTree.FindSkelControl")); }
			ScriptFunction FindMorphNode() { return mFindMorphNode ? mFindMorphNode : (mFindMorphNode = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimTree.FindMorphNode")); }
			ScriptFunction SetUseSavedPose() { return mSetUseSavedPose ? mSetUseSavedPose : (mSetUseSavedPose = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimTree.SetUseSavedPose")); }
			ScriptFunction SetAnimGroupForNode() { return mSetAnimGroupForNode ? mSetAnimGroupForNode : (mSetAnimGroupForNode = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimTree.SetAnimGroupForNode")); }
			ScriptFunction GetGroupSynchMaster() { return mGetGroupSynchMaster ? mGetGroupSynchMaster : (mGetGroupSynchMaster = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimTree.GetGroupSynchMaster")); }
			ScriptFunction GetGroupNotifyMaster() { return mGetGroupNotifyMaster ? mGetGroupNotifyMaster : (mGetGroupNotifyMaster = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimTree.GetGroupNotifyMaster")); }
			ScriptFunction ForceGroupRelativePosition() { return mForceGroupRelativePosition ? mForceGroupRelativePosition : (mForceGroupRelativePosition = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimTree.ForceGroupRelativePosition")); }
			ScriptFunction GetGroupRelativePosition() { return mGetGroupRelativePosition ? mGetGroupRelativePosition : (mGetGroupRelativePosition = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimTree.GetGroupRelativePosition")); }
			ScriptFunction SetGroupRateScale() { return mSetGroupRateScale ? mSetGroupRateScale : (mSetGroupRateScale = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimTree.SetGroupRateScale")); }
			ScriptFunction GetGroupRateScale() { return mGetGroupRateScale ? mGetGroupRateScale : (mGetGroupRateScale = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimTree.GetGroupRateScale")); }
			ScriptFunction GetGroupIndex() { return mGetGroupIndex ? mGetGroupIndex : (mGetGroupIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimTree.GetGroupIndex")); }
		}
	}
	struct AnimGroup
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimTree.AnimGroup")); }
		@property final auto ref
		{
			ScriptArray!(AnimNodeSequence) SeqNodes() { return *cast(ScriptArray!(AnimNodeSequence)*)(cast(size_t)&this + 0); }
			float SynchPctPosition() { return *cast(float*)(cast(size_t)&this + 32); }
			float RateScale() { return *cast(float*)(cast(size_t)&this + 28); }
			ScriptName GroupName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
			AnimNodeSequence NotifyMaster() { return *cast(AnimNodeSequence*)(cast(size_t)&this + 16); }
			AnimNodeSequence SynchMaster() { return *cast(AnimNodeSequence*)(cast(size_t)&this + 12); }
		}
	}
	struct SkelControlListHead
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimTree.SkelControlListHead")); }
		@property final auto ref
		{
			int DrawY() { return *cast(int*)(cast(size_t)&this + 12); }
			SkelControlBase ControlHead() { return *cast(SkelControlBase*)(cast(size_t)&this + 8); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct PreviewSkelMeshStruct
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimTree.PreviewSkelMeshStruct")); }
		@property final auto ref
		{
			ScriptArray!(MorphTargetSet) PreviewMorphSets() { return *cast(ScriptArray!(MorphTargetSet)*)(cast(size_t)&this + 12); }
			SkeletalMesh PreviewSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)&this + 8); }
			ScriptName DisplayName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct PreviewSocketStruct
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimTree.PreviewSocketStruct")); }
		@property final auto ref
		{
			StaticMesh PreviewStaticMesh() { return *cast(StaticMesh*)(cast(size_t)&this + 20); }
			SkeletalMesh PreviewSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)&this + 16); }
			ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			ScriptName DisplayName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct PreviewAnimSetsStruct
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimTree.PreviewAnimSetsStruct")); }
		@property final auto ref
		{
			ScriptArray!(AnimSet) PreviewAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)&this + 8); }
			ScriptName DisplayName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimTree.AnimGroup) AnimGroups() { return *cast(ScriptArray!(AnimTree.AnimGroup)*)(cast(size_t)cast(void*)this + 244); }
			ScriptArray!(ScriptName) PrioritizedSkelBranches() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 256); }
			ScriptArray!(ScriptName) ComposePrePassBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 268); }
			ScriptArray!(ScriptName) ComposePostPassBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 280); }
			ScriptArray!(MorphNodeBase) RootMorphNodes() { return *cast(ScriptArray!(MorphNodeBase)*)(cast(size_t)cast(void*)this + 292); }
			ScriptArray!(AnimTree.SkelControlListHead) SkelControlLists() { return *cast(ScriptArray!(AnimTree.SkelControlListHead)*)(cast(size_t)cast(void*)this + 304); }
			ScriptArray!(UObject.BoneAtom) SavedPose() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 316); }
			ScriptArray!(AnimSet) PreviewAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 360); }
			ScriptArray!(MorphTargetSet) PreviewMorphSets() { return *cast(ScriptArray!(MorphTargetSet)*)(cast(size_t)cast(void*)this + 372); }
			ScriptArray!(AnimTree.PreviewSkelMeshStruct) PreviewMeshList() { return *cast(ScriptArray!(AnimTree.PreviewSkelMeshStruct)*)(cast(size_t)cast(void*)this + 384); }
			ScriptArray!(AnimTree.PreviewSocketStruct) PreviewSocketList() { return *cast(ScriptArray!(AnimTree.PreviewSocketStruct)*)(cast(size_t)cast(void*)this + 400); }
			ScriptArray!(AnimTree.PreviewAnimSetsStruct) PreviewAnimSetList() { return *cast(ScriptArray!(AnimTree.PreviewAnimSetsStruct)*)(cast(size_t)cast(void*)this + 416); }
			ScriptArray!(AnimNode) AnimTickArray() { return *cast(ScriptArray!(AnimNode)*)(cast(size_t)cast(void*)this + 476); }
			int PreviewFloorYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 472); }
			Vector PreviewFloorPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 460); }
			Rotator PreviewCamRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 448); }
			Vector PreviewCamPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 436); }
			int PreviewAnimSetIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 432); }
			int PreviewAnimSetListIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 428); }
			int PreviewSocketIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 412); }
			int PreviewMeshIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 396); }
			ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 352); }
			StaticMesh SocketStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 348); }
			SkeletalMesh SocketSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 344); }
			SkeletalMesh PreviewSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 340); }
			float PreviewPlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
			int MorphConnDrawY() { return *cast(int*)(cast(size_t)cast(void*)this + 332); }
		}
		bool bRebuildAnimTickArray() { return (*cast(uint*)(cast(size_t)cast(void*)this + 328) & 0x8) != 0; }
		bool bRebuildAnimTickArray(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 328) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 328) &= ~0x8; } return val; }
		bool bParentNodeArrayBuilt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 328) & 0x4) != 0; }
		bool bParentNodeArrayBuilt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 328) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 328) &= ~0x4; } return val; }
		bool bBeingEdited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 328) & 0x2) != 0; }
		bool bBeingEdited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 328) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 328) &= ~0x2; } return val; }
		bool bUseSavedPose() { return (*cast(uint*)(cast(size_t)cast(void*)this + 328) & 0x1) != 0; }
		bool bUseSavedPose(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 328) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 328) &= ~0x1; } return val; }
	}
final:
	SkelControlBase FindSkelControl(ScriptName InControlName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InControlName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSkelControl, params.ptr, cast(void*)0);
		return *cast(SkelControlBase*)&params[8];
	}
	MorphNodeBase FindMorphNode(ScriptName InNodeName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InNodeName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindMorphNode, params.ptr, cast(void*)0);
		return *cast(MorphNodeBase*)&params[8];
	}
	void SetUseSavedPose(bool bUseSaved)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUseSaved;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetUseSavedPose, params.ptr, cast(void*)0);
	}
	bool SetAnimGroupForNode(AnimNodeSequence SeqNode, ScriptName GroupName, bool bCreateIfNotFound)
	{
		ubyte params[20];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(ScriptName*)&params[4] = GroupName;
		*cast(bool*)&params[12] = bCreateIfNotFound;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAnimGroupForNode, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	AnimNodeSequence GetGroupSynchMaster(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGroupSynchMaster, params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)&params[8];
	}
	AnimNodeSequence GetGroupNotifyMaster(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGroupNotifyMaster, params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)&params[8];
	}
	void ForceGroupRelativePosition(ScriptName GroupName, float RelativePosition)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = RelativePosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceGroupRelativePosition, params.ptr, cast(void*)0);
	}
	float GetGroupRelativePosition(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGroupRelativePosition, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void SetGroupRateScale(ScriptName GroupName, float NewRateScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = NewRateScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGroupRateScale, params.ptr, cast(void*)0);
	}
	float GetGroupRateScale(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGroupRateScale, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	int GetGroupIndex(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGroupIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
