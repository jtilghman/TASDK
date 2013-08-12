module UnrealScript.Engine.ActorFactoryArchetype;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.Actor;

extern(C++) interface ActorFactoryArchetype : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryArchetype")); }
	@property final auto ref Actor ArchetypeActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 92); }
}
