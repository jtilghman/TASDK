module UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_GenericFilterContainer : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshGoal_GenericFilterContainer")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCreateAndAddFilterToNavHandle;
			ScriptFunction mGetFilterOfType;
			ScriptFunction mGetGoalPoint;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction CreateAndAddFilterToNavHandle() { return mCreateAndAddFilterToNavHandle ? mCreateAndAddFilterToNavHandle : (mCreateAndAddFilterToNavHandle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_GenericFilterContainer.CreateAndAddFilterToNavHandle")); }
			ScriptFunction GetFilterOfType() { return mGetFilterOfType ? mGetFilterOfType : (mGetFilterOfType = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_GenericFilterContainer.GetFilterOfType")); }
			ScriptFunction GetGoalPoint() { return mGetGoalPoint ? mGetGoalPoint : (mGetGoalPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_GenericFilterContainer.GetGoalPoint")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_GenericFilterContainer.Recycle")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(NavMeshGoal_Filter) GoalFilters() { return *cast(ScriptArray!(NavMeshGoal_Filter)*)(cast(size_t)cast(void*)this + 80); }
		NavigationHandle MyNavigationHandle() { return *cast(NavigationHandle*)(cast(size_t)cast(void*)this + 96); }
		UObject.Pointer SuccessfulGoal() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
	}
final:
	static NavMeshGoal_GenericFilterContainer CreateAndAddFilterToNavHandle(NavigationHandle NavHandle, int InMaxPathVisits)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(int*)&params[4] = InMaxPathVisits;
		StaticClass.ProcessEvent(Functions.CreateAndAddFilterToNavHandle, params.ptr, cast(void*)0);
		return *cast(NavMeshGoal_GenericFilterContainer*)&params[8];
	}
	NavMeshGoal_Filter GetFilterOfType(ScriptClass Filter_Class)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Filter_Class;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFilterOfType, params.ptr, cast(void*)0);
		return *cast(NavMeshGoal_Filter*)&params[4];
	}
	Vector GetGoalPoint()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGoalPoint, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
