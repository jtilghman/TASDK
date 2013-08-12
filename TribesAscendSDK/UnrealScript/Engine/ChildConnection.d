module UnrealScript.Engine.ChildConnection;

import ScriptClasses;
import UnrealScript.Engine.NetConnection;

extern(C++) interface ChildConnection : NetConnection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ChildConnection")); }
	@property final auto ref NetConnection Parent() { return *cast(NetConnection*)(cast(size_t)cast(void*)this + 20472); }
}
