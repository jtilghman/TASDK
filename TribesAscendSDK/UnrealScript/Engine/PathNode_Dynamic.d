module UnrealScript.Engine.PathNode_Dynamic;

import ScriptClasses;
import UnrealScript.Engine.PathNode;

extern(C++) interface PathNode_Dynamic : PathNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PathNode_Dynamic")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetDebugAbbrev;
		public @property static final ScriptFunction GetDebugAbbrev() { return mGetDebugAbbrev ? mGetDebugAbbrev : (mGetDebugAbbrev = ScriptObject.Find!(ScriptFunction)("Function Engine.PathNode_Dynamic.GetDebugAbbrev")); }
	}
	final ScriptString GetDebugAbbrev()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugAbbrev, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
