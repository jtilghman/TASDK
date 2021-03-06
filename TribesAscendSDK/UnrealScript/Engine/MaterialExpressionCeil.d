module UnrealScript.Engine.MaterialExpressionCeil;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCeil : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionCeil")); }
	private static __gshared MaterialExpressionCeil mDefaultProperties;
	@property final static MaterialExpressionCeil DefaultProperties() { mixin(MGDPC("MaterialExpressionCeil", "MaterialExpressionCeil Engine.Default__MaterialExpressionCeil")); }
	@property final auto ref MaterialExpression.ExpressionInput InputVar() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
}
