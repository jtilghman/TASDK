module UnrealScript.Engine.MaterialExpressionFresnel;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFresnel : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionFresnel")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Normal() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 112); }
		float Exponent() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	}
}
