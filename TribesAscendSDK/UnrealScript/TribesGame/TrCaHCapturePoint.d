module UnrealScript.TribesGame.TrCaHCapturePoint;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrInventoryStation_Neutral;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrGameObjective;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrBaseTurret_Neutral;
import UnrealScript.TribesGame.TrRepairStation_Neutral;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.TribesGame.TrRadarStation_Neutral;

extern(C++) interface TrCaHCapturePoint : TrGameObjective
{
	struct NearbyPlayer
	{
		public @property final auto ref float LastCheckedTimestamp() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __LastCheckedTimestamp[4];
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Time[4];
		public @property final auto ref TrPlayerController NearbyPC() { return *cast(TrPlayerController*)(cast(size_t)&this + 0); }
		private ubyte __NearbyPC[4];
	}
	public @property final auto ref ScriptArray!(TrBaseTurret_Neutral) m_BaseTurrets() { return *cast(ScriptArray!(TrBaseTurret_Neutral)*)(cast(size_t)cast(void*)this + 1372); }
	public @property final auto ref ScriptArray!(TrRadarStation_Neutral) m_BaseSensors() { return *cast(ScriptArray!(TrRadarStation_Neutral)*)(cast(size_t)cast(void*)this + 1384); }
	public @property final auto ref ScriptArray!(TrInventoryStation_Neutral) m_InventoryStations() { return *cast(ScriptArray!(TrInventoryStation_Neutral)*)(cast(size_t)cast(void*)this + 1396); }
	public @property final auto ref ScriptArray!(TrRepairStation_Neutral) m_RepairStations() { return *cast(ScriptArray!(TrRepairStation_Neutral)*)(cast(size_t)cast(void*)this + 1408); }
	public @property final auto ref ScriptArray!(TrCaHCapturePoint.NearbyPlayer) m_NearbyPlayers() { return *cast(ScriptArray!(TrCaHCapturePoint.NearbyPlayer)*)(cast(size_t)cast(void*)this + 1580); }
	public @property final auto ref float m_HoldTheLineAccoladeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1596); }
	public @property final auto ref float m_fNearbyPawnCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1592); }
	public @property final auto ref TrPlayerController m_LastCapturedBy() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 1576); }
	public @property final auto ref float m_fPointPulseMarkerSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
	public @property final auto ref float m_fPointPulseMarkerTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1568); }
	public @property final auto ref float m_fRemainingPointPulseMarkerTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
	public @property final auto ref float m_fPulseMarkerSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
	public @property final auto ref float m_fPulseMarkerTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1556); }
	public @property final auto ref float m_fRemainingPulseMarkerTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1552); }
	public @property final auto ref float m_MarkerSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1548); }
	public @property final auto ref ubyte r_nFlashPointPulse() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1545); }
	public @property final auto ref TrObject.CaHCapturePointLabel m_CapturePointLabel() { return *cast(TrObject.CaHCapturePointLabel*)(cast(size_t)cast(void*)this + 1544); }
	public @property final bool r_bIsHeld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1540) & 0x1) != 0; }
	public @property final bool r_bIsHeld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1540) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1540) &= ~0x1; } return val; }
	public @property final auto ref Vector LastCameraPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1528); }
	public @property final auto ref Vector LastCameraDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1516); }
	public @property final auto ref Vector LastScreenLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1504); }
	public @property final auto ref float m_fInfluenceRadiusSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1500); }
	public @property final auto ref SkelControlSingleBone m_SkyHologramSkelControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 1496); }
	public @property final auto ref float m_fSkyHologramScaleDS() { return *cast(float*)(cast(size_t)cast(void*)this + 1492); }
	public @property final auto ref float m_fSkyHologramScaleBE() { return *cast(float*)(cast(size_t)cast(void*)this + 1488); }
	public @property final auto ref float m_fSkyHologramScaleOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1484); }
	public @property final auto ref Vector m_vSkyHologramOffsetDS() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1472); }
	public @property final auto ref Vector m_vSkyHologramOffsetBE() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1460); }
	public @property final auto ref float m_fSkyHologramOffsetZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1456); }
	public @property final auto ref float m_fSkyHologramOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 1452); }
	public @property final auto ref float m_fSkyHologramOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 1448); }
	public @property final auto ref MaterialInstanceConstant m_DiamondSwordHologramMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1444); }
	public @property final auto ref MaterialInstanceConstant m_BloodEagleHologramMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1440); }
	public @property final auto ref ScriptString m_sCapturePointName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1360); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73788], cast(void*)0, cast(void*)0);
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73791], params.ptr, cast(void*)0);
	}
	final void PulseMarker()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73793], cast(void*)0, cast(void*)0);
	}
	final void PointPulseMarker()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73794], cast(void*)0, cast(void*)0);
	}
	final void UpdateHologramVisibility()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73795], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73797], params.ptr, cast(void*)0);
	}
	final void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73799], params.ptr, cast(void*)0);
	}
	final void OnPawnTouched(TrPawn TRP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73805], params.ptr, cast(void*)0);
	}
	final void PostCapturePointTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73813], cast(void*)0, cast(void*)0);
	}
	final void AwardPointTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73817], cast(void*)0, cast(void*)0);
	}
	final bool ShouldPostRenderForCaH()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73819], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final ScriptString GetScreenName(PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73821], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73824], params.ptr, cast(void*)0);
	}
	final void CheckNearbyPlayersTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73835], cast(void*)0, cast(void*)0);
	}
	final bool IsPawnConsideredNearby(TrPawn TRP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73840], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}