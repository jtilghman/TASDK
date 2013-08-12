module UnrealScript.Engine.K2Node_Func;

import ScriptClasses;
import UnrealScript.Engine.K2Node_FuncBase;

extern(C++) interface K2Node_Func : K2Node_FuncBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Node_Func")); }
}
