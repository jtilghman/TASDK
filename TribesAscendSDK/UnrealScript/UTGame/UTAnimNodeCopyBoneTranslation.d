module UnrealScript.UTGame.UTAnimNodeCopyBoneTranslation;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimNodeCopyBoneTranslation;

extern(C++) interface UTAnimNodeCopyBoneTranslation : UDKAnimNodeCopyBoneTranslation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimNodeCopyBoneTranslation")); }
}
