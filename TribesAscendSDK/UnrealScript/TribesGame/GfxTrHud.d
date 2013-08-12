module UnrealScript.TribesGame.GfxTrHud;

import ScriptClasses;
import UnrealScript.PlatformCommon.TgSupportCommands;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.MaterialEffect;
import UnrealScript.TribesGame.GFxTrReticules;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.Weapon;
import UnrealScript.TribesGame.TrPlayerReplicationInfo;
import UnrealScript.TribesGame.GFxDeviceAmmoCount;
import UnrealScript.UTGame.GFxMinimapHud;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrHUD;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.TribesGame.TrDevice;
import UnrealScript.Engine.TeamInfo;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface GfxTrHud : GFxMinimapHud
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GfxTrHud")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDelegateSoundAccolade;
			ScriptFunction mDelegateLoadVGSMenu;
			ScriptFunction mStart;
			ScriptFunction mregisterReticules;
			ScriptFunction mInit;
			ScriptFunction mSetLoadVGSMenuDelegate;
			ScriptFunction mSetSoundAccoladeDelegate;
			ScriptFunction mRabbitLeaderboardUpdateSlot;
			ScriptFunction mRabbitLeaderboardUpdateTime;
			ScriptFunction mSetFontIndex;
			ScriptFunction mClearPromptPanel;
			ScriptFunction mRemoveFromPromptPanel;
			ScriptFunction mClearPromptPanelMessage;
			ScriptFunction mLoadVGSMenu;
			ScriptFunction mAddVGSEntry;
			ScriptFunction mAddToPromptPanelTime;
			ScriptFunction mAddtoPromptPanelAS;
			ScriptFunction mUpdateHeroStatus;
			ScriptFunction mClearHeroStatus;
			ScriptFunction mSetSpeedometer;
			ScriptFunction mSetPlayerRankIcon;
			ScriptFunction mSetPlayerTeamIcon;
			ScriptFunction mSetPlayerClassObjects;
			ScriptFunction mShouldShowSpectatorReticule;
			ScriptFunction mSystemEnableNotifies;
			ScriptFunction mConfigureSpectatorHUD;
			ScriptFunction mConfigureHUDState;
			ScriptFunction mShowChatLog;
			ScriptFunction mHideChatLog;
			ScriptFunction mShowCenterHUDElements;
			ScriptFunction mUpdateCreditsAndStreaks;
			ScriptFunction mSetScoreboardTitle;
			ScriptFunction mUpdateRespawnText;
			ScriptFunction mSetRespawnText;
			ScriptFunction mUpdateRespawnTimer;
			ScriptFunction mUpdateHUDCredits;
			ScriptFunction mregisterHUDView;
			ScriptFunction mSetHUDStageSize;
			ScriptFunction mSetAmmoCountTF;
			ScriptFunction mClearStats;
			ScriptFunction mForceHealthUpdate;
			ScriptFunction mGetSkiSpeedStep;
			ScriptFunction mConfigureSkiSpeedSteps;
			ScriptFunction mGetFrameNumberForVehicle;
			ScriptFunction mTickHud;
			ScriptFunction mASSetHeading;
			ScriptFunction mTickDirectionalDamageEffect;
			ScriptFunction mChangeDamageEffectParameter;
			ScriptFunction mPlayDamageEffectWithNoDirectionalIndicator;
			ScriptFunction mApplyDirectionalDamageEffect;
			ScriptFunction mApplyNearDeathEffect;
			ScriptFunction mDisplayHit;
			ScriptFunction mUpdateHealth;
			ScriptFunction mTickGhostHealth;
			ScriptFunction mUpdateEnergy;
			ScriptFunction mSetOwnership;
			ScriptFunction mTeamScoreboardUpdateSlot;
			ScriptFunction mRabbitScoreboardUpdateSlot;
			ScriptFunction mRabbitScoreboardActivePlayer;
			ScriptFunction mRabbitLeaderboardShow;
			ScriptFunction mTeamCTFStatsUpdateGeneratorStatus;
			ScriptFunction mTeamCTFStatsUpdateGeneratorTimer;
			ScriptFunction mTeamCTFStatsUpdateFlagReturnTime;
			ScriptFunction mTeamCTFStatsUpdateFlagStatus;
			ScriptFunction mTeamCTFStatsUpdateTeamScore;
			ScriptFunction mTeamCTFStatsUpdateTime;
			ScriptFunction mTeamCTFStatsShow;
			ScriptFunction mTeamRabbitStatsUpdateFlagStatus;
			ScriptFunction mTeamRabbitStatsUpdateTeamScore;
			ScriptFunction mASC_FriendlyTDMScoreUpdate;
			ScriptFunction mASC_EnemyTDMScoreUpdate;
			ScriptFunction mTeamRabbitStatsPointBreak;
			ScriptFunction mASC_FriendlyTDMPointBreak;
			ScriptFunction mASC_EnemyTDMPointBreak;
			ScriptFunction mShowNotification;
			ScriptFunction mHideNotification;
			ScriptFunction mTeamRabbitStatsUpdateTime;
			ScriptFunction mTeamRabbitStatsShow;
			ScriptFunction mArenaUpdateManGraphic;
			ScriptFunction mArenaStatsUpdateTime;
			ScriptFunction mArenaStatsUpdateRoundCount;
			ScriptFunction mArenaStatsUpdateFriendlyRoundScore;
			ScriptFunction mArenaStatsUpdateEnemyRoundScore;
			ScriptFunction mArenaStatsShow;
			ScriptFunction mArenaStatsPointBreak;
			ScriptFunction mASC_FriendlyArenaPointBreak;
			ScriptFunction mASC_EnemyArenaPointBreak;
			ScriptFunction mArenaStatsUpdateTeamScore;
			ScriptFunction mASC_FriendlyArenaLivesUpdate;
			ScriptFunction mASC_EnemyArenaLivesUpdate;
			ScriptFunction mDaDStatsShow;
			ScriptFunction mDaDUpdateFriendlyStats;
			ScriptFunction mDaDUpdateEnemyStats;
			ScriptFunction mCaHStatsShow;
			ScriptFunction mCaHControlPointAShow;
			ScriptFunction mCaHControlPointBShow;
			ScriptFunction mCaHControlPointCShow;
			ScriptFunction mCaHControlPointDShow;
			ScriptFunction mCaHControlPointEShow;
			ScriptFunction mCaHUpdate;
			ScriptFunction mCaHPointUpdate;
			ScriptFunction mCaHFriendlyPointBreak;
			ScriptFunction mCaHEnemyPointBreak;
			ScriptFunction mTeamScoreboardShow;
			ScriptFunction mRabbitScoreboardShow;
			ScriptFunction mUpdateCredits;
			ScriptFunction mUpdateFlagInHand;
			ScriptFunction mUpdateSkiing;
			ScriptFunction mUpdateSkiLevel;
			ScriptFunction mUpdateTeamStats;
			ScriptFunction mUpdateVehicleStats;
			ScriptFunction mUpdateVehicleHealth;
			ScriptFunction mUpdateVehicleEnergy;
			ScriptFunction mUpdateVehicleSeat;
			ScriptFunction mUpdateOffhand;
			ScriptFunction mUpdateOwnedItem;
			ScriptFunction mSoundAccolade;
			ScriptFunction mUpdateCallIn;
			ScriptFunction mRetrieveGFxObject;
			ScriptFunction mSetGlobalAlert;
			ScriptFunction mHideGlobalAlert;
			ScriptFunction mCreateKillCamInfo;
			ScriptFunction mShowKillCamInfo;
			ScriptFunction mGetWeaponNameFromDamageType;
			ScriptFunction mSetSpectatorPlayerPanel_FlagCarried;
			ScriptFunction mSetSpectatorPlayerPanel_PlayerName;
			ScriptFunction mSetSpectatorPlayerPanel_ClassName;
			ScriptFunction mSetSpectatorPlayerPanel_NextRegen;
			ScriptFunction mSetSpectatorPlayerPanel_HealthFillBar;
			ScriptFunction mSetSpectatorPlayerPanel_Health;
			ScriptFunction mSetSpectatorPlayerPanel_EnergyFillBar;
			ScriptFunction mSetSpectatorPlayerPanel_Energy;
			ScriptFunction mSetSpectatorPlayerPanel_PrimaryWeaponName;
			ScriptFunction mSetSpectatorPlayerPanel_PrimaryAmmoCount;
			ScriptFunction mSetSpectatorPlayerPanel_SecondaryWeaponName;
			ScriptFunction mSetSpectatorPlayerPanel_SecondaryAmmoCount;
			ScriptFunction mSetSpectatorPlayerPanel_OffhandIcon;
			ScriptFunction mSetSpectatorPlayerPanel_OffhandAmmo;
			ScriptFunction mSetSpectatorPlayerPanel_OffhandName;
			ScriptFunction mSetSpectatorPlayerPanel_PackIcon;
			ScriptFunction mSetSpectatorPlayerPanel_PackAmmo;
			ScriptFunction mSetSpectatorPlayerPanel_PackName;
			ScriptFunction mSetSpectatorPlayerPanel_Perk1Icon;
			ScriptFunction mSetSpectatorPlayerPanel_Perk1Name;
			ScriptFunction mSetSpectatorPlayerPanel_Perk2Icon;
			ScriptFunction mSetSpectatorPlayerPanel_Perk2Name;
			ScriptFunction mSetSpectatorPlayerPanel_SkiIndicatorFillBar;
			ScriptFunction mSetSpectatorPlayerPanel_SkiIndicatorSpeed;
			ScriptFunction mSetSpectatorPlayerPanel_Selected;
			ScriptFunction mSetSpectatorVehiclePanel_FlagCarried;
			ScriptFunction mSetSpectatorVehiclePanel_VehicleName;
			ScriptFunction mSetSpectatorVehiclePanel_DriverName;
			ScriptFunction mSetSpectatorVehiclePanel_PassengerName;
			ScriptFunction mSetSpectatorVehiclePanel_HealthFillBar;
			ScriptFunction mSetSpectatorVehiclePanel_Health;
			ScriptFunction mSetSpectatorVehiclePanel_EnergyFillBar;
			ScriptFunction mSetSpectatorVehiclePanel_Energy;
			ScriptFunction mSetSpectatorVehiclePanel_PrimaryWeaponName;
			ScriptFunction mSetSpectatorVehiclePanel_PrimaryWeaponReady;
			ScriptFunction mSetSpectatorVehiclePanel_PrimaryWeaponVisible;
			ScriptFunction mSetSpectatorVehiclePanel_SecondaryWeaponName;
			ScriptFunction mSetSpectatorVehiclePanel_SecondaryWeaponReady;
			ScriptFunction mSetSpectatorVehiclePanel_SecondaryWeaponVisible;
			ScriptFunction mSetSpectatorVehiclePanel_SkiIndicatorFillBar;
			ScriptFunction mSetSpectatorVehiclePanel_SkiIndicatorSpeed;
			ScriptFunction mSetSpectatorVehiclePanel_Selected;
			ScriptFunction mSetSpectatorBookmarkPanel_BookmarkName;
			ScriptFunction mSetSpectatorObjectivePanel_ObjectiveName;
			ScriptFunction mSetSpectatorObjectivePanel_ObjectiveDescription;
			ScriptFunction mSetSpectatorObjectivePanel_HealthFillBar;
			ScriptFunction mSetSpectatorFloatCameraPanel_Name;
			ScriptFunction mSetSpectatorFloatCameraPanel_Description;
			ScriptFunction mShowSpectatorControls;
			ScriptFunction mHideVGSMenu;
			ScriptFunction mHideTutorial;
			ScriptFunction mShowFlagCarried;
			ScriptFunction mHideFlagCarried;
			ScriptFunction mHideKillCamInfo;
			ScriptFunction mUpdateVGSMenuList;
			ScriptFunction mShowEnding;
			ScriptFunction mUpdateChatLog;
			ScriptFunction mSetPowerOscillation;
			ScriptFunction mUpdateChatLogInput;
			ScriptFunction mTeamScoreboardActivePlayer;
			ScriptFunction mTeamScoreboardUpdateTime;
			ScriptFunction mRabbitScoreboardUpdateTime;
			ScriptFunction mTeamScoreboardUpdateTeamScore;
			ScriptFunction mUpdateTutorial;
			ScriptFunction mAddUpdateToCombatLog;
			ScriptFunction mAddUpdateToKillMessage;
			ScriptFunction mShowSpectatorPlayer;
			ScriptFunction mHideSpectatorPlayer;
			ScriptFunction mShowSpectatorVehicle;
			ScriptFunction mHideSpectatorVehicle;
			ScriptFunction mShowSpectatorBookmark;
			ScriptFunction mHideSpectatorBookmark;
			ScriptFunction mShowSpectatorObjectivePanel;
			ScriptFunction mHideSpectatorObjectivePanel;
			ScriptFunction mShowSpectatorFloatCameraPanel;
			ScriptFunction mHideSpectatorFloatCameraPanel;
			ScriptFunction mAddFlyingIcon;
		}
		public @property static final
		{
			ScriptFunction DelegateSoundAccolade() { return mDelegateSoundAccolade ? mDelegateSoundAccolade : (mDelegateSoundAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.DelegateSoundAccolade")); }
			ScriptFunction DelegateLoadVGSMenu() { return mDelegateLoadVGSMenu ? mDelegateLoadVGSMenu : (mDelegateLoadVGSMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.DelegateLoadVGSMenu")); }
			ScriptFunction Start() { return mStart ? mStart : (mStart = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.Start")); }
			ScriptFunction registerReticules() { return mregisterReticules ? mregisterReticules : (mregisterReticules = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.registerReticules")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.Init")); }
			ScriptFunction SetLoadVGSMenuDelegate() { return mSetLoadVGSMenuDelegate ? mSetLoadVGSMenuDelegate : (mSetLoadVGSMenuDelegate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetLoadVGSMenuDelegate")); }
			ScriptFunction SetSoundAccoladeDelegate() { return mSetSoundAccoladeDelegate ? mSetSoundAccoladeDelegate : (mSetSoundAccoladeDelegate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSoundAccoladeDelegate")); }
			ScriptFunction RabbitLeaderboardUpdateSlot() { return mRabbitLeaderboardUpdateSlot ? mRabbitLeaderboardUpdateSlot : (mRabbitLeaderboardUpdateSlot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.RabbitLeaderboardUpdateSlot")); }
			ScriptFunction RabbitLeaderboardUpdateTime() { return mRabbitLeaderboardUpdateTime ? mRabbitLeaderboardUpdateTime : (mRabbitLeaderboardUpdateTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.RabbitLeaderboardUpdateTime")); }
			ScriptFunction SetFontIndex() { return mSetFontIndex ? mSetFontIndex : (mSetFontIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetFontIndex")); }
			ScriptFunction ClearPromptPanel() { return mClearPromptPanel ? mClearPromptPanel : (mClearPromptPanel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ClearPromptPanel")); }
			ScriptFunction RemoveFromPromptPanel() { return mRemoveFromPromptPanel ? mRemoveFromPromptPanel : (mRemoveFromPromptPanel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.RemoveFromPromptPanel")); }
			ScriptFunction ClearPromptPanelMessage() { return mClearPromptPanelMessage ? mClearPromptPanelMessage : (mClearPromptPanelMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ClearPromptPanelMessage")); }
			ScriptFunction LoadVGSMenu() { return mLoadVGSMenu ? mLoadVGSMenu : (mLoadVGSMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.LoadVGSMenu")); }
			ScriptFunction AddVGSEntry() { return mAddVGSEntry ? mAddVGSEntry : (mAddVGSEntry = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.AddVGSEntry")); }
			ScriptFunction AddToPromptPanelTime() { return mAddToPromptPanelTime ? mAddToPromptPanelTime : (mAddToPromptPanelTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.AddToPromptPanelTime")); }
			ScriptFunction AddtoPromptPanelAS() { return mAddtoPromptPanelAS ? mAddtoPromptPanelAS : (mAddtoPromptPanelAS = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.AddtoPromptPanelAS")); }
			ScriptFunction UpdateHeroStatus() { return mUpdateHeroStatus ? mUpdateHeroStatus : (mUpdateHeroStatus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateHeroStatus")); }
			ScriptFunction ClearHeroStatus() { return mClearHeroStatus ? mClearHeroStatus : (mClearHeroStatus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ClearHeroStatus")); }
			ScriptFunction SetSpeedometer() { return mSetSpeedometer ? mSetSpeedometer : (mSetSpeedometer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpeedometer")); }
			ScriptFunction SetPlayerRankIcon() { return mSetPlayerRankIcon ? mSetPlayerRankIcon : (mSetPlayerRankIcon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetPlayerRankIcon")); }
			ScriptFunction SetPlayerTeamIcon() { return mSetPlayerTeamIcon ? mSetPlayerTeamIcon : (mSetPlayerTeamIcon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetPlayerTeamIcon")); }
			ScriptFunction SetPlayerClassObjects() { return mSetPlayerClassObjects ? mSetPlayerClassObjects : (mSetPlayerClassObjects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetPlayerClassObjects")); }
			ScriptFunction ShouldShowSpectatorReticule() { return mShouldShowSpectatorReticule ? mShouldShowSpectatorReticule : (mShouldShowSpectatorReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShouldShowSpectatorReticule")); }
			ScriptFunction SystemEnableNotifies() { return mSystemEnableNotifies ? mSystemEnableNotifies : (mSystemEnableNotifies = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SystemEnableNotifies")); }
			ScriptFunction ConfigureSpectatorHUD() { return mConfigureSpectatorHUD ? mConfigureSpectatorHUD : (mConfigureSpectatorHUD = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ConfigureSpectatorHUD")); }
			ScriptFunction ConfigureHUDState() { return mConfigureHUDState ? mConfigureHUDState : (mConfigureHUDState = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ConfigureHUDState")); }
			ScriptFunction ShowChatLog() { return mShowChatLog ? mShowChatLog : (mShowChatLog = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowChatLog")); }
			ScriptFunction HideChatLog() { return mHideChatLog ? mHideChatLog : (mHideChatLog = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideChatLog")); }
			ScriptFunction ShowCenterHUDElements() { return mShowCenterHUDElements ? mShowCenterHUDElements : (mShowCenterHUDElements = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowCenterHUDElements")); }
			ScriptFunction UpdateCreditsAndStreaks() { return mUpdateCreditsAndStreaks ? mUpdateCreditsAndStreaks : (mUpdateCreditsAndStreaks = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateCreditsAndStreaks")); }
			ScriptFunction SetScoreboardTitle() { return mSetScoreboardTitle ? mSetScoreboardTitle : (mSetScoreboardTitle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetScoreboardTitle")); }
			ScriptFunction UpdateRespawnText() { return mUpdateRespawnText ? mUpdateRespawnText : (mUpdateRespawnText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateRespawnText")); }
			ScriptFunction SetRespawnText() { return mSetRespawnText ? mSetRespawnText : (mSetRespawnText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetRespawnText")); }
			ScriptFunction UpdateRespawnTimer() { return mUpdateRespawnTimer ? mUpdateRespawnTimer : (mUpdateRespawnTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateRespawnTimer")); }
			ScriptFunction UpdateHUDCredits() { return mUpdateHUDCredits ? mUpdateHUDCredits : (mUpdateHUDCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateHUDCredits")); }
			ScriptFunction registerHUDView() { return mregisterHUDView ? mregisterHUDView : (mregisterHUDView = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.registerHUDView")); }
			ScriptFunction SetHUDStageSize() { return mSetHUDStageSize ? mSetHUDStageSize : (mSetHUDStageSize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetHUDStageSize")); }
			ScriptFunction SetAmmoCountTF() { return mSetAmmoCountTF ? mSetAmmoCountTF : (mSetAmmoCountTF = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetAmmoCountTF")); }
			ScriptFunction ClearStats() { return mClearStats ? mClearStats : (mClearStats = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ClearStats")); }
			ScriptFunction ForceHealthUpdate() { return mForceHealthUpdate ? mForceHealthUpdate : (mForceHealthUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ForceHealthUpdate")); }
			ScriptFunction GetSkiSpeedStep() { return mGetSkiSpeedStep ? mGetSkiSpeedStep : (mGetSkiSpeedStep = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.GetSkiSpeedStep")); }
			ScriptFunction ConfigureSkiSpeedSteps() { return mConfigureSkiSpeedSteps ? mConfigureSkiSpeedSteps : (mConfigureSkiSpeedSteps = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ConfigureSkiSpeedSteps")); }
			ScriptFunction GetFrameNumberForVehicle() { return mGetFrameNumberForVehicle ? mGetFrameNumberForVehicle : (mGetFrameNumberForVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.GetFrameNumberForVehicle")); }
			ScriptFunction TickHud() { return mTickHud ? mTickHud : (mTickHud = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TickHud")); }
			ScriptFunction ASSetHeading() { return mASSetHeading ? mASSetHeading : (mASSetHeading = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ASSetHeading")); }
			ScriptFunction TickDirectionalDamageEffect() { return mTickDirectionalDamageEffect ? mTickDirectionalDamageEffect : (mTickDirectionalDamageEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TickDirectionalDamageEffect")); }
			ScriptFunction ChangeDamageEffectParameter() { return mChangeDamageEffectParameter ? mChangeDamageEffectParameter : (mChangeDamageEffectParameter = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ChangeDamageEffectParameter")); }
			ScriptFunction PlayDamageEffectWithNoDirectionalIndicator() { return mPlayDamageEffectWithNoDirectionalIndicator ? mPlayDamageEffectWithNoDirectionalIndicator : (mPlayDamageEffectWithNoDirectionalIndicator = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.PlayDamageEffectWithNoDirectionalIndicator")); }
			ScriptFunction ApplyDirectionalDamageEffect() { return mApplyDirectionalDamageEffect ? mApplyDirectionalDamageEffect : (mApplyDirectionalDamageEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ApplyDirectionalDamageEffect")); }
			ScriptFunction ApplyNearDeathEffect() { return mApplyNearDeathEffect ? mApplyNearDeathEffect : (mApplyNearDeathEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ApplyNearDeathEffect")); }
			ScriptFunction DisplayHit() { return mDisplayHit ? mDisplayHit : (mDisplayHit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.DisplayHit")); }
			ScriptFunction UpdateHealth() { return mUpdateHealth ? mUpdateHealth : (mUpdateHealth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateHealth")); }
			ScriptFunction TickGhostHealth() { return mTickGhostHealth ? mTickGhostHealth : (mTickGhostHealth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TickGhostHealth")); }
			ScriptFunction UpdateEnergy() { return mUpdateEnergy ? mUpdateEnergy : (mUpdateEnergy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateEnergy")); }
			ScriptFunction SetOwnership() { return mSetOwnership ? mSetOwnership : (mSetOwnership = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetOwnership")); }
			ScriptFunction TeamScoreboardUpdateSlot() { return mTeamScoreboardUpdateSlot ? mTeamScoreboardUpdateSlot : (mTeamScoreboardUpdateSlot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamScoreboardUpdateSlot")); }
			ScriptFunction RabbitScoreboardUpdateSlot() { return mRabbitScoreboardUpdateSlot ? mRabbitScoreboardUpdateSlot : (mRabbitScoreboardUpdateSlot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.RabbitScoreboardUpdateSlot")); }
			ScriptFunction RabbitScoreboardActivePlayer() { return mRabbitScoreboardActivePlayer ? mRabbitScoreboardActivePlayer : (mRabbitScoreboardActivePlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.RabbitScoreboardActivePlayer")); }
			ScriptFunction RabbitLeaderboardShow() { return mRabbitLeaderboardShow ? mRabbitLeaderboardShow : (mRabbitLeaderboardShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.RabbitLeaderboardShow")); }
			ScriptFunction TeamCTFStatsUpdateGeneratorStatus() { return mTeamCTFStatsUpdateGeneratorStatus ? mTeamCTFStatsUpdateGeneratorStatus : (mTeamCTFStatsUpdateGeneratorStatus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamCTFStatsUpdateGeneratorStatus")); }
			ScriptFunction TeamCTFStatsUpdateGeneratorTimer() { return mTeamCTFStatsUpdateGeneratorTimer ? mTeamCTFStatsUpdateGeneratorTimer : (mTeamCTFStatsUpdateGeneratorTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamCTFStatsUpdateGeneratorTimer")); }
			ScriptFunction TeamCTFStatsUpdateFlagReturnTime() { return mTeamCTFStatsUpdateFlagReturnTime ? mTeamCTFStatsUpdateFlagReturnTime : (mTeamCTFStatsUpdateFlagReturnTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamCTFStatsUpdateFlagReturnTime")); }
			ScriptFunction TeamCTFStatsUpdateFlagStatus() { return mTeamCTFStatsUpdateFlagStatus ? mTeamCTFStatsUpdateFlagStatus : (mTeamCTFStatsUpdateFlagStatus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamCTFStatsUpdateFlagStatus")); }
			ScriptFunction TeamCTFStatsUpdateTeamScore() { return mTeamCTFStatsUpdateTeamScore ? mTeamCTFStatsUpdateTeamScore : (mTeamCTFStatsUpdateTeamScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamCTFStatsUpdateTeamScore")); }
			ScriptFunction TeamCTFStatsUpdateTime() { return mTeamCTFStatsUpdateTime ? mTeamCTFStatsUpdateTime : (mTeamCTFStatsUpdateTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamCTFStatsUpdateTime")); }
			ScriptFunction TeamCTFStatsShow() { return mTeamCTFStatsShow ? mTeamCTFStatsShow : (mTeamCTFStatsShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamCTFStatsShow")); }
			ScriptFunction TeamRabbitStatsUpdateFlagStatus() { return mTeamRabbitStatsUpdateFlagStatus ? mTeamRabbitStatsUpdateFlagStatus : (mTeamRabbitStatsUpdateFlagStatus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamRabbitStatsUpdateFlagStatus")); }
			ScriptFunction TeamRabbitStatsUpdateTeamScore() { return mTeamRabbitStatsUpdateTeamScore ? mTeamRabbitStatsUpdateTeamScore : (mTeamRabbitStatsUpdateTeamScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamRabbitStatsUpdateTeamScore")); }
			ScriptFunction ASC_FriendlyTDMScoreUpdate() { return mASC_FriendlyTDMScoreUpdate ? mASC_FriendlyTDMScoreUpdate : (mASC_FriendlyTDMScoreUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ASC_FriendlyTDMScoreUpdate")); }
			ScriptFunction ASC_EnemyTDMScoreUpdate() { return mASC_EnemyTDMScoreUpdate ? mASC_EnemyTDMScoreUpdate : (mASC_EnemyTDMScoreUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ASC_EnemyTDMScoreUpdate")); }
			ScriptFunction TeamRabbitStatsPointBreak() { return mTeamRabbitStatsPointBreak ? mTeamRabbitStatsPointBreak : (mTeamRabbitStatsPointBreak = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamRabbitStatsPointBreak")); }
			ScriptFunction ASC_FriendlyTDMPointBreak() { return mASC_FriendlyTDMPointBreak ? mASC_FriendlyTDMPointBreak : (mASC_FriendlyTDMPointBreak = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ASC_FriendlyTDMPointBreak")); }
			ScriptFunction ASC_EnemyTDMPointBreak() { return mASC_EnemyTDMPointBreak ? mASC_EnemyTDMPointBreak : (mASC_EnemyTDMPointBreak = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ASC_EnemyTDMPointBreak")); }
			ScriptFunction ShowNotification() { return mShowNotification ? mShowNotification : (mShowNotification = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowNotification")); }
			ScriptFunction HideNotification() { return mHideNotification ? mHideNotification : (mHideNotification = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideNotification")); }
			ScriptFunction TeamRabbitStatsUpdateTime() { return mTeamRabbitStatsUpdateTime ? mTeamRabbitStatsUpdateTime : (mTeamRabbitStatsUpdateTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamRabbitStatsUpdateTime")); }
			ScriptFunction TeamRabbitStatsShow() { return mTeamRabbitStatsShow ? mTeamRabbitStatsShow : (mTeamRabbitStatsShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamRabbitStatsShow")); }
			ScriptFunction ArenaUpdateManGraphic() { return mArenaUpdateManGraphic ? mArenaUpdateManGraphic : (mArenaUpdateManGraphic = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ArenaUpdateManGraphic")); }
			ScriptFunction ArenaStatsUpdateTime() { return mArenaStatsUpdateTime ? mArenaStatsUpdateTime : (mArenaStatsUpdateTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ArenaStatsUpdateTime")); }
			ScriptFunction ArenaStatsUpdateRoundCount() { return mArenaStatsUpdateRoundCount ? mArenaStatsUpdateRoundCount : (mArenaStatsUpdateRoundCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ArenaStatsUpdateRoundCount")); }
			ScriptFunction ArenaStatsUpdateFriendlyRoundScore() { return mArenaStatsUpdateFriendlyRoundScore ? mArenaStatsUpdateFriendlyRoundScore : (mArenaStatsUpdateFriendlyRoundScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ArenaStatsUpdateFriendlyRoundScore")); }
			ScriptFunction ArenaStatsUpdateEnemyRoundScore() { return mArenaStatsUpdateEnemyRoundScore ? mArenaStatsUpdateEnemyRoundScore : (mArenaStatsUpdateEnemyRoundScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ArenaStatsUpdateEnemyRoundScore")); }
			ScriptFunction ArenaStatsShow() { return mArenaStatsShow ? mArenaStatsShow : (mArenaStatsShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ArenaStatsShow")); }
			ScriptFunction ArenaStatsPointBreak() { return mArenaStatsPointBreak ? mArenaStatsPointBreak : (mArenaStatsPointBreak = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ArenaStatsPointBreak")); }
			ScriptFunction ASC_FriendlyArenaPointBreak() { return mASC_FriendlyArenaPointBreak ? mASC_FriendlyArenaPointBreak : (mASC_FriendlyArenaPointBreak = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ASC_FriendlyArenaPointBreak")); }
			ScriptFunction ASC_EnemyArenaPointBreak() { return mASC_EnemyArenaPointBreak ? mASC_EnemyArenaPointBreak : (mASC_EnemyArenaPointBreak = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ASC_EnemyArenaPointBreak")); }
			ScriptFunction ArenaStatsUpdateTeamScore() { return mArenaStatsUpdateTeamScore ? mArenaStatsUpdateTeamScore : (mArenaStatsUpdateTeamScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ArenaStatsUpdateTeamScore")); }
			ScriptFunction ASC_FriendlyArenaLivesUpdate() { return mASC_FriendlyArenaLivesUpdate ? mASC_FriendlyArenaLivesUpdate : (mASC_FriendlyArenaLivesUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ASC_FriendlyArenaLivesUpdate")); }
			ScriptFunction ASC_EnemyArenaLivesUpdate() { return mASC_EnemyArenaLivesUpdate ? mASC_EnemyArenaLivesUpdate : (mASC_EnemyArenaLivesUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ASC_EnemyArenaLivesUpdate")); }
			ScriptFunction DaDStatsShow() { return mDaDStatsShow ? mDaDStatsShow : (mDaDStatsShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.DaDStatsShow")); }
			ScriptFunction DaDUpdateFriendlyStats() { return mDaDUpdateFriendlyStats ? mDaDUpdateFriendlyStats : (mDaDUpdateFriendlyStats = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.DaDUpdateFriendlyStats")); }
			ScriptFunction DaDUpdateEnemyStats() { return mDaDUpdateEnemyStats ? mDaDUpdateEnemyStats : (mDaDUpdateEnemyStats = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.DaDUpdateEnemyStats")); }
			ScriptFunction CaHStatsShow() { return mCaHStatsShow ? mCaHStatsShow : (mCaHStatsShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.CaHStatsShow")); }
			ScriptFunction CaHControlPointAShow() { return mCaHControlPointAShow ? mCaHControlPointAShow : (mCaHControlPointAShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.CaHControlPointAShow")); }
			ScriptFunction CaHControlPointBShow() { return mCaHControlPointBShow ? mCaHControlPointBShow : (mCaHControlPointBShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.CaHControlPointBShow")); }
			ScriptFunction CaHControlPointCShow() { return mCaHControlPointCShow ? mCaHControlPointCShow : (mCaHControlPointCShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.CaHControlPointCShow")); }
			ScriptFunction CaHControlPointDShow() { return mCaHControlPointDShow ? mCaHControlPointDShow : (mCaHControlPointDShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.CaHControlPointDShow")); }
			ScriptFunction CaHControlPointEShow() { return mCaHControlPointEShow ? mCaHControlPointEShow : (mCaHControlPointEShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.CaHControlPointEShow")); }
			ScriptFunction CaHUpdate() { return mCaHUpdate ? mCaHUpdate : (mCaHUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.CaHUpdate")); }
			ScriptFunction CaHPointUpdate() { return mCaHPointUpdate ? mCaHPointUpdate : (mCaHPointUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.CaHPointUpdate")); }
			ScriptFunction CaHFriendlyPointBreak() { return mCaHFriendlyPointBreak ? mCaHFriendlyPointBreak : (mCaHFriendlyPointBreak = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.CaHFriendlyPointBreak")); }
			ScriptFunction CaHEnemyPointBreak() { return mCaHEnemyPointBreak ? mCaHEnemyPointBreak : (mCaHEnemyPointBreak = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.CaHEnemyPointBreak")); }
			ScriptFunction TeamScoreboardShow() { return mTeamScoreboardShow ? mTeamScoreboardShow : (mTeamScoreboardShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamScoreboardShow")); }
			ScriptFunction RabbitScoreboardShow() { return mRabbitScoreboardShow ? mRabbitScoreboardShow : (mRabbitScoreboardShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.RabbitScoreboardShow")); }
			ScriptFunction UpdateCredits() { return mUpdateCredits ? mUpdateCredits : (mUpdateCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateCredits")); }
			ScriptFunction UpdateFlagInHand() { return mUpdateFlagInHand ? mUpdateFlagInHand : (mUpdateFlagInHand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateFlagInHand")); }
			ScriptFunction UpdateSkiing() { return mUpdateSkiing ? mUpdateSkiing : (mUpdateSkiing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateSkiing")); }
			ScriptFunction UpdateSkiLevel() { return mUpdateSkiLevel ? mUpdateSkiLevel : (mUpdateSkiLevel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateSkiLevel")); }
			ScriptFunction UpdateTeamStats() { return mUpdateTeamStats ? mUpdateTeamStats : (mUpdateTeamStats = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateTeamStats")); }
			ScriptFunction UpdateVehicleStats() { return mUpdateVehicleStats ? mUpdateVehicleStats : (mUpdateVehicleStats = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateVehicleStats")); }
			ScriptFunction UpdateVehicleHealth() { return mUpdateVehicleHealth ? mUpdateVehicleHealth : (mUpdateVehicleHealth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateVehicleHealth")); }
			ScriptFunction UpdateVehicleEnergy() { return mUpdateVehicleEnergy ? mUpdateVehicleEnergy : (mUpdateVehicleEnergy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateVehicleEnergy")); }
			ScriptFunction UpdateVehicleSeat() { return mUpdateVehicleSeat ? mUpdateVehicleSeat : (mUpdateVehicleSeat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateVehicleSeat")); }
			ScriptFunction UpdateOffhand() { return mUpdateOffhand ? mUpdateOffhand : (mUpdateOffhand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateOffhand")); }
			ScriptFunction UpdateOwnedItem() { return mUpdateOwnedItem ? mUpdateOwnedItem : (mUpdateOwnedItem = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateOwnedItem")); }
			ScriptFunction SoundAccolade() { return mSoundAccolade ? mSoundAccolade : (mSoundAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SoundAccolade")); }
			ScriptFunction UpdateCallIn() { return mUpdateCallIn ? mUpdateCallIn : (mUpdateCallIn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateCallIn")); }
			ScriptFunction RetrieveGFxObject() { return mRetrieveGFxObject ? mRetrieveGFxObject : (mRetrieveGFxObject = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.RetrieveGFxObject")); }
			ScriptFunction SetGlobalAlert() { return mSetGlobalAlert ? mSetGlobalAlert : (mSetGlobalAlert = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetGlobalAlert")); }
			ScriptFunction HideGlobalAlert() { return mHideGlobalAlert ? mHideGlobalAlert : (mHideGlobalAlert = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideGlobalAlert")); }
			ScriptFunction CreateKillCamInfo() { return mCreateKillCamInfo ? mCreateKillCamInfo : (mCreateKillCamInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.CreateKillCamInfo")); }
			ScriptFunction ShowKillCamInfo() { return mShowKillCamInfo ? mShowKillCamInfo : (mShowKillCamInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowKillCamInfo")); }
			ScriptFunction GetWeaponNameFromDamageType() { return mGetWeaponNameFromDamageType ? mGetWeaponNameFromDamageType : (mGetWeaponNameFromDamageType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.GetWeaponNameFromDamageType")); }
			ScriptFunction SetSpectatorPlayerPanel_FlagCarried() { return mSetSpectatorPlayerPanel_FlagCarried ? mSetSpectatorPlayerPanel_FlagCarried : (mSetSpectatorPlayerPanel_FlagCarried = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_FlagCarried")); }
			ScriptFunction SetSpectatorPlayerPanel_PlayerName() { return mSetSpectatorPlayerPanel_PlayerName ? mSetSpectatorPlayerPanel_PlayerName : (mSetSpectatorPlayerPanel_PlayerName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_PlayerName")); }
			ScriptFunction SetSpectatorPlayerPanel_ClassName() { return mSetSpectatorPlayerPanel_ClassName ? mSetSpectatorPlayerPanel_ClassName : (mSetSpectatorPlayerPanel_ClassName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_ClassName")); }
			ScriptFunction SetSpectatorPlayerPanel_NextRegen() { return mSetSpectatorPlayerPanel_NextRegen ? mSetSpectatorPlayerPanel_NextRegen : (mSetSpectatorPlayerPanel_NextRegen = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_NextRegen")); }
			ScriptFunction SetSpectatorPlayerPanel_HealthFillBar() { return mSetSpectatorPlayerPanel_HealthFillBar ? mSetSpectatorPlayerPanel_HealthFillBar : (mSetSpectatorPlayerPanel_HealthFillBar = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_HealthFillBar")); }
			ScriptFunction SetSpectatorPlayerPanel_Health() { return mSetSpectatorPlayerPanel_Health ? mSetSpectatorPlayerPanel_Health : (mSetSpectatorPlayerPanel_Health = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_Health")); }
			ScriptFunction SetSpectatorPlayerPanel_EnergyFillBar() { return mSetSpectatorPlayerPanel_EnergyFillBar ? mSetSpectatorPlayerPanel_EnergyFillBar : (mSetSpectatorPlayerPanel_EnergyFillBar = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_EnergyFillBar")); }
			ScriptFunction SetSpectatorPlayerPanel_Energy() { return mSetSpectatorPlayerPanel_Energy ? mSetSpectatorPlayerPanel_Energy : (mSetSpectatorPlayerPanel_Energy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_Energy")); }
			ScriptFunction SetSpectatorPlayerPanel_PrimaryWeaponName() { return mSetSpectatorPlayerPanel_PrimaryWeaponName ? mSetSpectatorPlayerPanel_PrimaryWeaponName : (mSetSpectatorPlayerPanel_PrimaryWeaponName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_PrimaryWeaponName")); }
			ScriptFunction SetSpectatorPlayerPanel_PrimaryAmmoCount() { return mSetSpectatorPlayerPanel_PrimaryAmmoCount ? mSetSpectatorPlayerPanel_PrimaryAmmoCount : (mSetSpectatorPlayerPanel_PrimaryAmmoCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_PrimaryAmmoCount")); }
			ScriptFunction SetSpectatorPlayerPanel_SecondaryWeaponName() { return mSetSpectatorPlayerPanel_SecondaryWeaponName ? mSetSpectatorPlayerPanel_SecondaryWeaponName : (mSetSpectatorPlayerPanel_SecondaryWeaponName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_SecondaryWeaponName")); }
			ScriptFunction SetSpectatorPlayerPanel_SecondaryAmmoCount() { return mSetSpectatorPlayerPanel_SecondaryAmmoCount ? mSetSpectatorPlayerPanel_SecondaryAmmoCount : (mSetSpectatorPlayerPanel_SecondaryAmmoCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_SecondaryAmmoCount")); }
			ScriptFunction SetSpectatorPlayerPanel_OffhandIcon() { return mSetSpectatorPlayerPanel_OffhandIcon ? mSetSpectatorPlayerPanel_OffhandIcon : (mSetSpectatorPlayerPanel_OffhandIcon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_OffhandIcon")); }
			ScriptFunction SetSpectatorPlayerPanel_OffhandAmmo() { return mSetSpectatorPlayerPanel_OffhandAmmo ? mSetSpectatorPlayerPanel_OffhandAmmo : (mSetSpectatorPlayerPanel_OffhandAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_OffhandAmmo")); }
			ScriptFunction SetSpectatorPlayerPanel_OffhandName() { return mSetSpectatorPlayerPanel_OffhandName ? mSetSpectatorPlayerPanel_OffhandName : (mSetSpectatorPlayerPanel_OffhandName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_OffhandName")); }
			ScriptFunction SetSpectatorPlayerPanel_PackIcon() { return mSetSpectatorPlayerPanel_PackIcon ? mSetSpectatorPlayerPanel_PackIcon : (mSetSpectatorPlayerPanel_PackIcon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_PackIcon")); }
			ScriptFunction SetSpectatorPlayerPanel_PackAmmo() { return mSetSpectatorPlayerPanel_PackAmmo ? mSetSpectatorPlayerPanel_PackAmmo : (mSetSpectatorPlayerPanel_PackAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_PackAmmo")); }
			ScriptFunction SetSpectatorPlayerPanel_PackName() { return mSetSpectatorPlayerPanel_PackName ? mSetSpectatorPlayerPanel_PackName : (mSetSpectatorPlayerPanel_PackName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_PackName")); }
			ScriptFunction SetSpectatorPlayerPanel_Perk1Icon() { return mSetSpectatorPlayerPanel_Perk1Icon ? mSetSpectatorPlayerPanel_Perk1Icon : (mSetSpectatorPlayerPanel_Perk1Icon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_Perk1Icon")); }
			ScriptFunction SetSpectatorPlayerPanel_Perk1Name() { return mSetSpectatorPlayerPanel_Perk1Name ? mSetSpectatorPlayerPanel_Perk1Name : (mSetSpectatorPlayerPanel_Perk1Name = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_Perk1Name")); }
			ScriptFunction SetSpectatorPlayerPanel_Perk2Icon() { return mSetSpectatorPlayerPanel_Perk2Icon ? mSetSpectatorPlayerPanel_Perk2Icon : (mSetSpectatorPlayerPanel_Perk2Icon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_Perk2Icon")); }
			ScriptFunction SetSpectatorPlayerPanel_Perk2Name() { return mSetSpectatorPlayerPanel_Perk2Name ? mSetSpectatorPlayerPanel_Perk2Name : (mSetSpectatorPlayerPanel_Perk2Name = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_Perk2Name")); }
			ScriptFunction SetSpectatorPlayerPanel_SkiIndicatorFillBar() { return mSetSpectatorPlayerPanel_SkiIndicatorFillBar ? mSetSpectatorPlayerPanel_SkiIndicatorFillBar : (mSetSpectatorPlayerPanel_SkiIndicatorFillBar = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_SkiIndicatorFillBar")); }
			ScriptFunction SetSpectatorPlayerPanel_SkiIndicatorSpeed() { return mSetSpectatorPlayerPanel_SkiIndicatorSpeed ? mSetSpectatorPlayerPanel_SkiIndicatorSpeed : (mSetSpectatorPlayerPanel_SkiIndicatorSpeed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_SkiIndicatorSpeed")); }
			ScriptFunction SetSpectatorPlayerPanel_Selected() { return mSetSpectatorPlayerPanel_Selected ? mSetSpectatorPlayerPanel_Selected : (mSetSpectatorPlayerPanel_Selected = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorPlayerPanel_Selected")); }
			ScriptFunction SetSpectatorVehiclePanel_FlagCarried() { return mSetSpectatorVehiclePanel_FlagCarried ? mSetSpectatorVehiclePanel_FlagCarried : (mSetSpectatorVehiclePanel_FlagCarried = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_FlagCarried")); }
			ScriptFunction SetSpectatorVehiclePanel_VehicleName() { return mSetSpectatorVehiclePanel_VehicleName ? mSetSpectatorVehiclePanel_VehicleName : (mSetSpectatorVehiclePanel_VehicleName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_VehicleName")); }
			ScriptFunction SetSpectatorVehiclePanel_DriverName() { return mSetSpectatorVehiclePanel_DriverName ? mSetSpectatorVehiclePanel_DriverName : (mSetSpectatorVehiclePanel_DriverName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_DriverName")); }
			ScriptFunction SetSpectatorVehiclePanel_PassengerName() { return mSetSpectatorVehiclePanel_PassengerName ? mSetSpectatorVehiclePanel_PassengerName : (mSetSpectatorVehiclePanel_PassengerName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_PassengerName")); }
			ScriptFunction SetSpectatorVehiclePanel_HealthFillBar() { return mSetSpectatorVehiclePanel_HealthFillBar ? mSetSpectatorVehiclePanel_HealthFillBar : (mSetSpectatorVehiclePanel_HealthFillBar = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_HealthFillBar")); }
			ScriptFunction SetSpectatorVehiclePanel_Health() { return mSetSpectatorVehiclePanel_Health ? mSetSpectatorVehiclePanel_Health : (mSetSpectatorVehiclePanel_Health = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_Health")); }
			ScriptFunction SetSpectatorVehiclePanel_EnergyFillBar() { return mSetSpectatorVehiclePanel_EnergyFillBar ? mSetSpectatorVehiclePanel_EnergyFillBar : (mSetSpectatorVehiclePanel_EnergyFillBar = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_EnergyFillBar")); }
			ScriptFunction SetSpectatorVehiclePanel_Energy() { return mSetSpectatorVehiclePanel_Energy ? mSetSpectatorVehiclePanel_Energy : (mSetSpectatorVehiclePanel_Energy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_Energy")); }
			ScriptFunction SetSpectatorVehiclePanel_PrimaryWeaponName() { return mSetSpectatorVehiclePanel_PrimaryWeaponName ? mSetSpectatorVehiclePanel_PrimaryWeaponName : (mSetSpectatorVehiclePanel_PrimaryWeaponName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_PrimaryWeaponName")); }
			ScriptFunction SetSpectatorVehiclePanel_PrimaryWeaponReady() { return mSetSpectatorVehiclePanel_PrimaryWeaponReady ? mSetSpectatorVehiclePanel_PrimaryWeaponReady : (mSetSpectatorVehiclePanel_PrimaryWeaponReady = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_PrimaryWeaponReady")); }
			ScriptFunction SetSpectatorVehiclePanel_PrimaryWeaponVisible() { return mSetSpectatorVehiclePanel_PrimaryWeaponVisible ? mSetSpectatorVehiclePanel_PrimaryWeaponVisible : (mSetSpectatorVehiclePanel_PrimaryWeaponVisible = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_PrimaryWeaponVisible")); }
			ScriptFunction SetSpectatorVehiclePanel_SecondaryWeaponName() { return mSetSpectatorVehiclePanel_SecondaryWeaponName ? mSetSpectatorVehiclePanel_SecondaryWeaponName : (mSetSpectatorVehiclePanel_SecondaryWeaponName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_SecondaryWeaponName")); }
			ScriptFunction SetSpectatorVehiclePanel_SecondaryWeaponReady() { return mSetSpectatorVehiclePanel_SecondaryWeaponReady ? mSetSpectatorVehiclePanel_SecondaryWeaponReady : (mSetSpectatorVehiclePanel_SecondaryWeaponReady = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_SecondaryWeaponReady")); }
			ScriptFunction SetSpectatorVehiclePanel_SecondaryWeaponVisible() { return mSetSpectatorVehiclePanel_SecondaryWeaponVisible ? mSetSpectatorVehiclePanel_SecondaryWeaponVisible : (mSetSpectatorVehiclePanel_SecondaryWeaponVisible = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_SecondaryWeaponVisible")); }
			ScriptFunction SetSpectatorVehiclePanel_SkiIndicatorFillBar() { return mSetSpectatorVehiclePanel_SkiIndicatorFillBar ? mSetSpectatorVehiclePanel_SkiIndicatorFillBar : (mSetSpectatorVehiclePanel_SkiIndicatorFillBar = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_SkiIndicatorFillBar")); }
			ScriptFunction SetSpectatorVehiclePanel_SkiIndicatorSpeed() { return mSetSpectatorVehiclePanel_SkiIndicatorSpeed ? mSetSpectatorVehiclePanel_SkiIndicatorSpeed : (mSetSpectatorVehiclePanel_SkiIndicatorSpeed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_SkiIndicatorSpeed")); }
			ScriptFunction SetSpectatorVehiclePanel_Selected() { return mSetSpectatorVehiclePanel_Selected ? mSetSpectatorVehiclePanel_Selected : (mSetSpectatorVehiclePanel_Selected = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorVehiclePanel_Selected")); }
			ScriptFunction SetSpectatorBookmarkPanel_BookmarkName() { return mSetSpectatorBookmarkPanel_BookmarkName ? mSetSpectatorBookmarkPanel_BookmarkName : (mSetSpectatorBookmarkPanel_BookmarkName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorBookmarkPanel_BookmarkName")); }
			ScriptFunction SetSpectatorObjectivePanel_ObjectiveName() { return mSetSpectatorObjectivePanel_ObjectiveName ? mSetSpectatorObjectivePanel_ObjectiveName : (mSetSpectatorObjectivePanel_ObjectiveName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorObjectivePanel_ObjectiveName")); }
			ScriptFunction SetSpectatorObjectivePanel_ObjectiveDescription() { return mSetSpectatorObjectivePanel_ObjectiveDescription ? mSetSpectatorObjectivePanel_ObjectiveDescription : (mSetSpectatorObjectivePanel_ObjectiveDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorObjectivePanel_ObjectiveDescription")); }
			ScriptFunction SetSpectatorObjectivePanel_HealthFillBar() { return mSetSpectatorObjectivePanel_HealthFillBar ? mSetSpectatorObjectivePanel_HealthFillBar : (mSetSpectatorObjectivePanel_HealthFillBar = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorObjectivePanel_HealthFillBar")); }
			ScriptFunction SetSpectatorFloatCameraPanel_Name() { return mSetSpectatorFloatCameraPanel_Name ? mSetSpectatorFloatCameraPanel_Name : (mSetSpectatorFloatCameraPanel_Name = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorFloatCameraPanel_Name")); }
			ScriptFunction SetSpectatorFloatCameraPanel_Description() { return mSetSpectatorFloatCameraPanel_Description ? mSetSpectatorFloatCameraPanel_Description : (mSetSpectatorFloatCameraPanel_Description = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetSpectatorFloatCameraPanel_Description")); }
			ScriptFunction ShowSpectatorControls() { return mShowSpectatorControls ? mShowSpectatorControls : (mShowSpectatorControls = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowSpectatorControls")); }
			ScriptFunction HideVGSMenu() { return mHideVGSMenu ? mHideVGSMenu : (mHideVGSMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideVGSMenu")); }
			ScriptFunction HideTutorial() { return mHideTutorial ? mHideTutorial : (mHideTutorial = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideTutorial")); }
			ScriptFunction ShowFlagCarried() { return mShowFlagCarried ? mShowFlagCarried : (mShowFlagCarried = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowFlagCarried")); }
			ScriptFunction HideFlagCarried() { return mHideFlagCarried ? mHideFlagCarried : (mHideFlagCarried = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideFlagCarried")); }
			ScriptFunction HideKillCamInfo() { return mHideKillCamInfo ? mHideKillCamInfo : (mHideKillCamInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideKillCamInfo")); }
			ScriptFunction UpdateVGSMenuList() { return mUpdateVGSMenuList ? mUpdateVGSMenuList : (mUpdateVGSMenuList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateVGSMenuList")); }
			ScriptFunction ShowEnding() { return mShowEnding ? mShowEnding : (mShowEnding = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowEnding")); }
			ScriptFunction UpdateChatLog() { return mUpdateChatLog ? mUpdateChatLog : (mUpdateChatLog = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateChatLog")); }
			ScriptFunction SetPowerOscillation() { return mSetPowerOscillation ? mSetPowerOscillation : (mSetPowerOscillation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.SetPowerOscillation")); }
			ScriptFunction UpdateChatLogInput() { return mUpdateChatLogInput ? mUpdateChatLogInput : (mUpdateChatLogInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateChatLogInput")); }
			ScriptFunction TeamScoreboardActivePlayer() { return mTeamScoreboardActivePlayer ? mTeamScoreboardActivePlayer : (mTeamScoreboardActivePlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamScoreboardActivePlayer")); }
			ScriptFunction TeamScoreboardUpdateTime() { return mTeamScoreboardUpdateTime ? mTeamScoreboardUpdateTime : (mTeamScoreboardUpdateTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamScoreboardUpdateTime")); }
			ScriptFunction RabbitScoreboardUpdateTime() { return mRabbitScoreboardUpdateTime ? mRabbitScoreboardUpdateTime : (mRabbitScoreboardUpdateTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.RabbitScoreboardUpdateTime")); }
			ScriptFunction TeamScoreboardUpdateTeamScore() { return mTeamScoreboardUpdateTeamScore ? mTeamScoreboardUpdateTeamScore : (mTeamScoreboardUpdateTeamScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.TeamScoreboardUpdateTeamScore")); }
			ScriptFunction UpdateTutorial() { return mUpdateTutorial ? mUpdateTutorial : (mUpdateTutorial = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.UpdateTutorial")); }
			ScriptFunction AddUpdateToCombatLog() { return mAddUpdateToCombatLog ? mAddUpdateToCombatLog : (mAddUpdateToCombatLog = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.AddUpdateToCombatLog")); }
			ScriptFunction AddUpdateToKillMessage() { return mAddUpdateToKillMessage ? mAddUpdateToKillMessage : (mAddUpdateToKillMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.AddUpdateToKillMessage")); }
			ScriptFunction ShowSpectatorPlayer() { return mShowSpectatorPlayer ? mShowSpectatorPlayer : (mShowSpectatorPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowSpectatorPlayer")); }
			ScriptFunction HideSpectatorPlayer() { return mHideSpectatorPlayer ? mHideSpectatorPlayer : (mHideSpectatorPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideSpectatorPlayer")); }
			ScriptFunction ShowSpectatorVehicle() { return mShowSpectatorVehicle ? mShowSpectatorVehicle : (mShowSpectatorVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowSpectatorVehicle")); }
			ScriptFunction HideSpectatorVehicle() { return mHideSpectatorVehicle ? mHideSpectatorVehicle : (mHideSpectatorVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideSpectatorVehicle")); }
			ScriptFunction ShowSpectatorBookmark() { return mShowSpectatorBookmark ? mShowSpectatorBookmark : (mShowSpectatorBookmark = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowSpectatorBookmark")); }
			ScriptFunction HideSpectatorBookmark() { return mHideSpectatorBookmark ? mHideSpectatorBookmark : (mHideSpectatorBookmark = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideSpectatorBookmark")); }
			ScriptFunction ShowSpectatorObjectivePanel() { return mShowSpectatorObjectivePanel ? mShowSpectatorObjectivePanel : (mShowSpectatorObjectivePanel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowSpectatorObjectivePanel")); }
			ScriptFunction HideSpectatorObjectivePanel() { return mHideSpectatorObjectivePanel ? mHideSpectatorObjectivePanel : (mHideSpectatorObjectivePanel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideSpectatorObjectivePanel")); }
			ScriptFunction ShowSpectatorFloatCameraPanel() { return mShowSpectatorFloatCameraPanel ? mShowSpectatorFloatCameraPanel : (mShowSpectatorFloatCameraPanel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.ShowSpectatorFloatCameraPanel")); }
			ScriptFunction HideSpectatorFloatCameraPanel() { return mHideSpectatorFloatCameraPanel ? mHideSpectatorFloatCameraPanel : (mHideSpectatorFloatCameraPanel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.HideSpectatorFloatCameraPanel")); }
			ScriptFunction AddFlyingIcon() { return mAddFlyingIcon ? mAddFlyingIcon : (mAddFlyingIcon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHud.AddFlyingIcon")); }
		}
	}
	enum
	{
		THR_SPINFUSOR = 1,
		THR_SMG = 2,
		THR_RIFLE = 3,
		THR_LOCKED_ON = 4,
		THR_CROSSBOW = 5,
		THR_FLAME_THROWER = 6,
		THR_CHAIN_GUN = 7,
		THR_MISSILE = 8,
		THR_NANITE = 9,
		THR_SHOTGUN = 10,
		THR_UNKNOWN = 11,
		THR_LASER = 12,
		THR_CH_V13 = 13,
		THR_SCOPE = 14,
		THR_STANDARD = 15,
		THR_GRENADE_LAUNCHER = 16,
		THR_MELEE = 17,
		THR_SHRIKE = 18,
		THR_FREE_SPECTATOR = 19,
		THR_RED_DOT = 20,
		THR_BXT1 = 21,
		THR_PHASERIFLE = 22,
		THR_SAP20 = 23,
		THR_PLASMAGUN = 24,
		HAE_KILL_STREAK_LEVEL_1 = 1,
		HAE_KILL_STREAK_LEVEL_2 = 2,
		HAE_KILL_STREAK_LEVEL_3 = 3,
		HAE_KILL_STREAK_LEVEL_4 = 4,
		HAE_KILL_STREAK_LEVEL_5 = 5,
		TRHUD_PACK_STEALTH = 1,
		TRHUD_PACK_DAMAGE = 2,
		TRHUD_PACK_OMNI = 3,
		TRHUD_PACK_ERECHARGE = 4,
		TRHUD_PACK_AIRTURRET = 5,
		TRHUD_PACK_BLINK = 6,
		TRHUD_PACK_ENERGY = 7,
		TRHUD_PACK_SHIELD = 8,
		TRHUD_PACK_JAMMER = 9,
		TRHUD_PACK_LIGHTTURRET = 10,
		TRHUD_PACK_FORCEFIELD = 11,
		TRHUD_PACK_WALLTURRET = 12,
		TRHUD_PACK_REGEN = 13,
		TRHUD_PACK_DROPJAMMER = 14,
		TRHUD_TBD1 = 15,
		TRHUD_TBD2 = 16,
		TRHUD_TBD3 = 17,
		TRHUD_BELT_STICKYGREN = 18,
		TRHUD_BELT_FRAG = 19,
		TRHUD_BELT_CLAYMORE = 20,
		TRHUD_BELT_NITRON = 21,
		TRHUD_BELT_MOTIONALARM = 22,
		TRHUD_BELT_SPIKEGREN = 23,
		TRHUD_BELT_WHITEOUT = 24,
		TRHUD_BELT_APGREN = 25,
		TRHUD_BELT_STGREN = 26,
		TRHUD_BELT_PRISMMINES = 27,
		TRHUD_BELT_FLARE = 28,
		TRHUD_BELT_EMPGREN = 29,
		TRHUD_BELT_MINES = 30,
		TRHUD_BELT_DISKTOSS = 31,
		TRHUD_TBD4 = 32,
		TRHUD_TBD5 = 33,
		TRHUD_MEDAL_ASSIST = 34,
		TRHUD_CLAYMOREMINE = 35,
		TRHUD_PRISMMINE = 36,
		TRHUD_LIGHTTURRET = 37,
		TRHUD_AATURRET = 38,
		TRHUD_MOTIONSENSOR = 39,
		TRHUD_MINES = 40,
		TRHUD_FORCESHIELD = 41,
		TRHUD_DROPJAMMER = 42,
		TRHUD_GENERATOR = 43,
		TRHUD_SKIING = 44,
		TRHUD_MEDAL_KILLINGSPREE = 45,
		TRHUD_MEDAL_KILLINGRAMPAGE = 46,
		TRHUD_MEDAL_UNSTOPPABLE = 47,
		TRHUD_MEDAL_RELENTLESS = 48,
		TRHUD_MEDAL_THESLAYER = 49,
		TRHUD_MEDAL_SNIPINGSPREE = 50,
		TRHUD_MEDAL_MARKSMAN = 51,
		TRHUD_MEDAL_SHARPSHOOTER = 52,
		TRHUD_MEDAL_AIRMAIL = 53,
		TRHUD_MEDAL_DEMOLITIONSEXPERT = 54,
		TRHUD_MEDAL_HURTLOCKER = 55,
		TRHUD_MEDAL_CLASSICSPREE = 56,
		TRHUD_MEDAL_DISKJOCKEY = 57,
		TRHUD_MEDAL_TRIBALFANATIC = 58,
		TRHUD_MEDAL_DOUBLEKILL = 59,
		TRHUD_MEDAL_TRIPLEKILL = 60,
		TRHUD_MEDAL_QUATRAKILL = 61,
		TRHUD_MEDAL_ULTRAKILL = 62,
		TRHUD_MEDAL_TEAMKILL = 63,
		TRHUD_MEDAL_NOJOY = 64,
		TRHUD_MEDAL_REVENGE = 65,
		TRHUD_MEDAL_AFTERMATH = 66,
		TRHUD_MEDAL_FIRSTBLOOD = 67,
		TRHUD_MEDAL_BLUEPLATE = 68,
		TRHUD_MEDAL_STICKYKILL = 69,
		TRHUD_MEDAL_HEADSHOT = 70,
		TRHUD_MEDAL_ARTILLERYSHOT = 71,
		TRHUD_MEDAL_MARTIALART = 72,
		TRHUD_MEDAL_SQUISH = 73,
		TRHUD_MEDAL_FLAGGOLD = 74,
		TRHUD_MEDAL_FLAGSILVER = 75,
		TRHUD_MEDAL_FLAGBRONZE = 75,
		TRHUD_MEDAL_FLAGLLAMA = 75,
		TRHUD_MEDAL_GENERHATER = 76,
		TRHUD_MEDAL_RABBITHUNTER = 77,
		TRHUD_MEDAL_CAERBANNOG = 78,
		TRHUD_MEDAL_FINALBLOW = 79,
		TRHUD_MEDAL_GENDEFENSE = 76,
		TRHUD_MEDAL_FLAGDEFENSE = 75,
		TRHUD_MEDAL_VDESTROY = 73,
		TRHUD_MEDAL_HOTAIR = 284,
		TRICON_RANK_1 = 80,
		TRICON_RANK_2 = 81,
		TRICON_RANK_3 = 82,
		TRICON_RANK_4 = 83,
		TRICON_RANK_5 = 84,
		TRICON_RANK_6 = 85,
		TRICON_RANK_7 = 86,
		TRICON_RANK_8 = 87,
		TRICON_RANK_9 = 88,
		TRICON_RANK_10 = 89,
		TRICON_RANK_11 = 90,
		TRICON_RANK_12 = 91,
		TRICON_RANK_13 = 92,
		TRICON_RANK_14 = 93,
		TRICON_RANK_15 = 94,
		TRICON_RANK_16 = 95,
		TRICON_RANK_17 = 96,
		TRICON_RANK_18 = 97,
		TRICON_RANK_19 = 98,
		TRICON_RANK_20 = 99,
		TRICON_RANK_21 = 100,
		TRICON_RANK_22 = 101,
		TRICON_RANK_23 = 102,
		TRICON_RANK_24 = 103,
		TRICON_RANK_25 = 104,
		TRICON_RANK_26 = 105,
		TRICON_RANK_27 = 106,
		TRICON_RANK_28 = 107,
		TRICON_RANK_29 = 108,
		TRICON_RANK_30 = 109,
		TRICON_RANK_31 = 110,
		TRICON_RANK_32 = 111,
		TRICON_RANK_33 = 112,
		TRICON_RANK_34 = 113,
		TRICON_RANK_35 = 114,
		TRICON_RANK_36 = 115,
		TRICON_RANK_37 = 116,
		TRICON_RANK_38 = 117,
		TRICON_RANK_39 = 118,
		TRICON_RANK_40 = 119,
		TRICON_RANK_41 = 120,
		TRICON_RANK_42 = 121,
		TRICON_RANK_43 = 122,
		TRICON_RANK_44 = 123,
		TRICON_RANK_45 = 124,
		TRICON_RANK_46 = 125,
		TRICON_RANK_47 = 126,
		TRICON_RANK_48 = 127,
		TRICON_RANK_49 = 128,
		TRICON_RANK_50 = 129,
		TRICON_KILLTYPE_EXPLOSIVE = 130,
		TRICON_KILLTYPE_STICKY = 131,
		TRICON_KILLTYPE_SQUISH = 132,
		TRICON_KILLTYPE_MELEE = 133,
		TRICON_KILLTYPE_FALLING = 134,
		TRICON_KILLTYPE_VEHICLE = 135,
		TRICON_KILLTYPE_BULLET = 136,
		TRICON_KILLTYPE_SNIPER = 137,
		TRICON_KILLTYPE_BASE_TURRET = 138,
		TRICON_KILLTYPE_HEADSHOT = 139,
		TRICON_KILLTYPE_GENERIC = 140,
		TRICON_KILLTYPE_SPINFUSOR = 141,
		TRICON_KILLTYPE_TURRET = 142,
		TRICON_ACCOLADE_BASE_DESTROY = 143,
		TRICON_ACCOLADE_BASE_REPAIR = 144,
		TRICON_ACCOLADE_MIRACLE = 145,
		TRICON_ACCOLADE_ULTRAKILLNORED = 146,
		TRICON_ACCOLADE_NOTAMONGEQUALS = 147,
		TRICON_ACCOLADE_EXPLOSIVESPREE = 148,
		TRICON_ACCOLADE_ULTRAFASTGRAB = 149,
		TRICON_ACCOLADE_ONEMANARMY = 150,
		TRICON_ACCOLADE_GAMEWINNER = 151,
		TRICON_ACCOLADE_UNITEDWESTAND = 152,
		TRICON_ACCOLADE_DOUBLEDOWN = 153,
		TRICON_ACCOLADE_FASTFLAGGRAB = 154,
		TRICON_ACCOLADE_SHRIKEDOWN = 155,
		TRICON_ACCOLADE_GRAVCYCLEDOWN = 156,
		TRICON_ACCOLADE_BEOWULFDOWN = 157,
		TRICON_ACCOLADE_FINALBLOW = 158,
		TRICON_ACCOLADE_BENCHEM = 159,
		TRICON_ACCOLADE_LASTMANSTANDING = 160,
		TRICON_ACCOLADE_TRIBALHONOR = 161,
		TRICON_ACCOLADE_FLAGKILLER = 162,
		TRICON_ACCOLADE_GAMECOMPLETE = 163,
		TRICON_ACCOLADE_FLAGDEFENSE = 164,
		TRICON_ACCOLADE_GENERATORDEFENSE = 165,
		TRICON_ACCOLADE_LLAMAGRAB = 166,
		TRICON_ACCOLADE_EGRAB = 167,
		TRICON_ACCOLADE_TURRETDESTROYED = 168,
		TRICON_ACCOLADE_ALTFLAGCARRY = 169,
		TRICON_ACCOLADE_HOLDTHELINE = 281,
		TRICON_ACCOLADE_CAPTUREANDHOLD = 282,
		TRICON_BADGE_FLAGDEFENSE_4 = 170,
		TRICON_BADGE_FLAGDEFENSE_3 = 171,
		TRICON_BADGE_FLAGDEFENSE_2 = 172,
		TRICON_BADGE_FLAGDEFENSE_1 = 173,
		TRICON_BADGE_OPERATOR_4 = 174,
		TRICON_BADGE_OPERATOR_3 = 175,
		TRICON_BADGE_OPERATOR_2 = 176,
		TRICON_BADGE_OPERATOR_1 = 177,
		TRICON_BADGE_CALLINKILLS_4 = 178,
		TRICON_BADGE_CALLINKILLS_3 = 179,
		TRICON_BADGE_CALLINKILLS_2 = 180,
		TRICON_BADGE_CALLINKILLS_1 = 181,
		TRICON_BADGE_MELEEKILLS_4 = 182,
		TRICON_BADGE_MELEEKILLS_3 = 183,
		TRICON_BADGE_MELEEKILLS_2 = 184,
		TRICON_BADGE_MELEEKILLS_1 = 185,
		TRICON_BADGE_ONEMANARMY_4 = 186,
		TRICON_BADGE_ONEMANARMY_3 = 187,
		TRICON_BADGE_ONEMANARMY_2 = 188,
		TRICON_BADGE_ONEMANARMY_1 = 189,
		TRICON_BADGE_FLAGCAPPER_4 = 190,
		TRICON_BADGE_FLAGCAPPER_3 = 191,
		TRICON_BADGE_FLAGCAPPER_2 = 192,
		TRICON_BADGE_FLAGCAPPER_1 = 193,
		TRICON_BADGE_TOUROFDUTY_4 = 194,
		TRICON_BADGE_TOUROFDUTY_3 = 195,
		TRICON_BADGE_TOUROFDUTY_2 = 196,
		TRICON_BADGE_TOUROFDUTY_1 = 197,
		TRICON_BADGE_MULTIKILL_4 = 198,
		TRICON_BADGE_MULTIKILL_3 = 199,
		TRICON_BADGE_MULTIKILL_2 = 200,
		TRICON_BADGE_MULTIKILL_1 = 201,
		TRICON_BADGE_COMBATSTAR_4 = 202,
		TRICON_BADGE_COMBATSTAR_3 = 203,
		TRICON_BADGE_COMBATSTAR_2 = 204,
		TRICON_BADGE_COMBATSTAR_1 = 205,
		TRICON_BADGE_CROSSCOUNTRY_4 = 206,
		TRICON_BADGE_CROSSCOUNTRY_3 = 207,
		TRICON_BADGE_CROSSCOUNTRY_2 = 208,
		TRICON_BADGE_CROSSCOUNTRY_1 = 209,
		TRICON_BADGE_POWERPLAYER_4 = 210,
		TRICON_BADGE_POWERPLAYER_3 = 211,
		TRICON_BADGE_POWERPLAYER_2 = 212,
		TRICON_BADGE_POWERPLAYER_1 = 213,
		TRICON_BADGE_DEMOMAN_4 = 214,
		TRICON_BADGE_DEMOMAN_3 = 215,
		TRICON_BADGE_DEMOMAN_2 = 216,
		TRICON_BADGE_DEMOMAN_1 = 217,
		TRICON_BADGE_SPEEDRUNNER_4 = 218,
		TRICON_BADGE_SPEEDRUNNER_3 = 219,
		TRICON_BADGE_SPEEDRUNNER_2 = 220,
		TRICON_BADGE_SPEEDRUNNER_1 = 221,
		TRICON_BADGE_GOODDRIVER_4 = 222,
		TRICON_BADGE_GOODDRIVER_3 = 223,
		TRICON_BADGE_GOODDRIVER_2 = 224,
		TRICON_BADGE_GOODDRIVER_1 = 225,
		TRICON_BADGE_PURPLEHEART_4 = 226,
		TRICON_BADGE_PURPLEHEART_3 = 227,
		TRICON_BADGE_PURPLEHEART_2 = 228,
		TRICON_BADGE_PURPLEHEART_1 = 229,
		TRICON_BADGE_HAPPENSTOUSALL = 230,
		TRICON_BADGE_INVSTATION = 231,
		TRICON_BADGE_ANTIVEHICLE_4 = 232,
		TRICON_BADGE_ANTIVEHICLE_3 = 233,
		TRICON_BADGE_ANTIVEHICLE_2 = 234,
		TRICON_BADGE_ANTIVEHICLE_1 = 235,
		TRICON_BADGE_UTILITYBELT_4 = 236,
		TRICON_BADGE_UTILITYBELT_3 = 237,
		TRICON_BADGE_UTILITYBELT_2 = 238,
		TRICON_BADGE_UTILITYBELT_1 = 239,
		TRICON_BADGE_ONCALL_4 = 240,
		TRICON_BADGE_ONCALL_3 = 241,
		TRICON_BADGE_ONCALL_2 = 242,
		TRICON_BADGE_ONCALL_1 = 243,
		TRICON_BADGE_SUPPORT_4 = 244,
		TRICON_BADGE_SUPPORT_3 = 245,
		TRICON_BADGE_SUPPORT_2 = 246,
		TRICON_BADGE_SUPPORT_1 = 247,
		TRICON_BADGE_MARKSMAN_4 = 248,
		TRICON_BADGE_MARKSMAN_3 = 249,
		TRICON_BADGE_MARKSMAN_2 = 250,
		TRICON_BADGE_MARKSMAN_1 = 251,
		TRICON_BADGE_ASSISTOR_4 = 252,
		TRICON_BADGE_ASSISTOR_3 = 253,
		TRICON_BADGE_ASSISTOR_2 = 254,
		TRICON_BADGE_ASSISTOR_1 = 255,
		TRICON_BADGE_BUILDER_4 = 256,
		TRICON_BADGE_BUILDER_3 = 257,
		TRICON_BADGE_BUILDER_2 = 258,
		TRICON_BADGE_BUILDER_1 = 259,
		TRICON_BADGE_GOINGFAST_4 = 260,
		TRICON_BADGE_GOINGFAST_3 = 261,
		TRICON_BADGE_GOINGFAST_2 = 262,
		TRICON_BADGE_GOINGFAST_1 = 263,
		RANK_XP_1 = 0,
		RANK_XP_2 = 1350,
		RANK_XP_3 = 2781,
		RANK_XP_4 = 4298,
		RANK_XP_5 = 5906,
		RANK_XP_6 = 11212,
		RANK_XP_7 = 16836,
		RANK_XP_8 = 22798,
		RANK_XP_9 = 31741,
		RANK_XP_10 = 41130,
		RANK_XP_11 = 50990,
		RANK_XP_12 = 61342,
		RANK_XP_13 = 76870,
		RANK_XP_14 = 93020,
		RANK_XP_15 = 109815,
		RANK_XP_16 = 127283,
		RANK_XP_17 = 145449,
		RANK_XP_18 = 172698,
		RANK_XP_19 = 200765,
		RANK_XP_20 = 229673,
		RANK_XP_21 = 259449,
		RANK_XP_22 = 290118,
		RANK_XP_23 = 321707,
		RANK_XP_24 = 369091,
		RANK_XP_25 = 417896,
		RANK_XP_26 = 468166,
		RANK_XP_27 = 519943,
		RANK_XP_28 = 573274,
		RANK_XP_29 = 628205,
		RANK_XP_30 = 684783,
		RANK_XP_31 = 743059,
		RANK_XP_32 = 803084,
		RANK_XP_33 = 864909,
		RANK_XP_34 = 928589,
		RANK_XP_35 = 994179,
		RANK_XP_36 = 1061737,
		RANK_XP_37 = 1131321,
		RANK_XP_38 = 1202994,
		RANK_XP_39 = 1276816,
		RANK_XP_40 = 1352853,
		RANK_XP_41 = 1431171,
		RANK_XP_42 = 1511839,
		RANK_XP_43 = 1594926,
		RANK_XP_44 = 1680507,
		RANK_XP_45 = 1768654,
		RANK_XP_46 = 1859447,
		RANK_XP_47 = 1952963,
		RANK_XP_48 = 2049284,
		RANK_XP_49 = 2148495,
		RANK_XP_50 = 2250682,
		ACCOLADE_TYPE_MISC = 0,
		ACCOLADE_TYPE_MULTIKILL = 1,
		ACCOLADE_TYPE_KILLSTREAK = 2,
		TRICON_PERK_ICON_WIP = 1,
		TRICON_PERK_BONUS_KILL_CREDITS = 1,
		TRICON_PERK_STICKY_HANDS = 2,
		TRICON_PERK_REDUCED_VEHICLE_COST = 3,
		TRICON_PERK_REDUCED_SELF_DAMAGE = 4,
		TRICON_PERK_REDUCED_RUN_OVER = 5,
		TRICON_PERK_REDUCED_BASE_UPGRADE_COST = 6,
		TRICON_PERK_REDUCED_FALL_DMG = 7,
		TRICON_PERK_REDUCED_AIR_VEHICLE_COST = 8,
		TRICON_PERK_TRAP_DETECTION = 9,
		TRICON_PERK_PICKUP_ENERGY_HEALTH = 10,
		TRICON_PERK_MELEE_FLAG_DROP = 11,
		TRICON_PERK_EXTRA_MINES = 12,
		TRICON_PERK_EXTRA_ENERGY = 13,
		TRICON_PERK_EXTRA_GRENADE_PICKUP = 14,
		TRICON_PERK_EXTRA_AMMO = 15,
		TRICON_PERK_EXTRA_GRENADE = 16,
		TRICON_PERK_BEOWULF_HEALTH_INCREASE = 17,
		TRICON_PERK_EJECTION_SEAT = 18,
		TRICON_PERK_ORBITAL_STRIKE = 19,
		TRICON_PERK_REDUCED_MELEE_DAMAGE = 20,
		TRICON_PERK_MELEE_BACKSTAB = 21,
		TRICON_PERK_DEMOLITIONS = 22,
		TRICON_PERK_SQUIRRELLY = 23,
		TRICON_PERK_STEALTHY = 24,
		TRICON_PERK_ULTRA_CAPACITOR = 25,
		TRICON_PERK_DETERMINATION = 26,
		TRICON_SKILL_SPEED = 1,
		TRICON_SKILL_ENERGY = 2,
		TRICON_SKILL_PING = 3,
		TRICON_SKILL_AMMO = 4,
		TRICON_SKILL_ANTI_ARMOR = 5,
		TRICON_SKILL_GRENADE = 6,
		TRICON_SKILL_RADIUS = 7,
		TRICON_SKILL_HEALTH = 8,
		TRICON_SKILL_BOOT = 9,
		TRICON_SKILL_TIMER = 10,
		TRICON_CLASS_SENTINEL = 1,
		TRICON_CLASS_PATHFINDER = 2,
		TRICON_CLASS_JUMPER = 3,
		TRICON_CLASS_INFILTRATOR = 4,
		TRICON_CLASS_WARDER = 30,
		TRICON_CLASS_TECHNICIAN = 31,
		TRICON_CLASS_SOLDIER = 32,
		TRICON_CLASS_SCRAMBLER = 33,
		TRICON_CLASS_RANGER = 34,
		TRICON_CLASS_RAIDER = 35,
		TRICON_CLASS_ENGINEER = 36,
		TRICON_CLASS_ROOK = 60,
		TRICON_CLASS_MARAUDER = 61,
		TRICON_CLASS_JUGGERNAUT = 62,
		TRICON_CLASS_DOOMBRINGER = 63,
		TRICON_CLASS_BRUTE = 64,
		TRICON_CLASS_WIP = 88,
		ICON_UPGRADE_NONE = 0,
		MOD_TYPE_NONE = 1,
		MOD_TYPE_HEALTH = 2,
		MOD_TYPE_MASSPCT = 3,
		MOD_TYPE_RADARLINK = 4,
		MOD_TYPE_FLAGREACH = 5,
		MOD_TYPE_BUILDUPPCT = 6,
		MOD_TYPE_CLOTHESLINE = 7,
		MOD_TYPE_STICKYHANDS = 8,
		MOD_TYPE_MAXSKISPEED = 9,
		MOD_TYPE_EXTRAENERGY = 10,
		MOD_TYPE_EJECTIONSEAT = 11,
		MOD_TYPE_SELFDAMAGEPCT = 12,
		MOD_TYPE_REPAIRRATEPCT = 13,
		MOD_TYPE_EXTRAMINESOUT = 14,
		MOD_TYPE_VEHICLEEXTRAHEALTH = 15,
		MOD_TYPE_GROUNDSPEEDPCT = 16,
		MOD_TYPE_ENERGYDRAINPCT = 17,
		MOD_TYPE_UPGRADECOSTPCT = 18,
		MOD_TYPE_CANDETECTTRAPS = 19,
		MOD_TYPE_SPLATDAMAGEPCT = 20,
		MOD_TYPE_WEAPONSWITCHPCT = 21,
		MOD_TYPE_POTENTIALENERGY = 22,
		MOD_TYPE_MAXJETTINGSPEED = 23,
		MOD_TYPE_CREDITSFROMKILLS = 24,
		MOD_TYPE_TERMINALSKISPEED = 25,
		MOD_TYPE_MAXSKICONTROLPCT = 26,
		MOD_TYPE_HASDETERMINATION = 27,
		MOD_TYPE_DEPLOYABLEHEALTH = 28,
		MOD_TYPE_EXTRAOFFHANDAMMO = 29,
		MOD_TYPE_EXTRAPRIMARYAMMO = 30,
		MOD_TYPE_PRIMARYRELOADPCT = 31,
		MOD_TYPE_SENSORDISTANCEPCT = 32,
		MOD_TYPE_PACKENERGYCOSTPCT = 33,
		MOD_TYPE_AMMOFROMPICKUPPCT = 34,
		MOD_TYPE_TIMETOREGENENERGY = 35,
		MOD_TYPE_SECONDARYRELOADPCT = 36,
		MOD_TYPE_EXTRASECONDARYAMMO = 37,
		MOD_TYPE_ENERGYREGENRATEPCT = 38,
		MOD_TYPE_HEALTHREGENRATEPCT = 39,
		MOD_TYPE_DEPLOYABLERANGEPCT = 40,
		MOD_TYPE_JAMMERPACKRADIUSPCT = 41,
		MOD_TYPE_BLINKPACKPOTENCYPCT = 42,
		MOD_TYPE_PEAKSKICONTROLSPEED = 43,
		MOD_TYPE_CANCALLINSUPPLYDROP = 44,
		MOD_TYPE_EXTRADEPLOYABLESOUT = 45,
		MOD_TYPE_HEALTHFROMPICKUPPCT = 46,
		MOD_TYPE_ENERGYFROMPICKUPPCT = 47,
		MOD_TYPE_TERMINALJETTINGSPEED = 48,
		MOD_TYPE_TIMETOREGENHEALTHPCT = 49,
		MOD_TYPE_VEHICLECOSTPCT = 50,
		MOD_TYPE_SKICONTROLSIGMASQUARE = 51,
		MOD_TYPE_RECEIVEMELEEDAMAGEPCT = 52,
		MOD_TYPE_VICTIMDROPFLAGONMELEE = 53,
		MOD_TYPE_PRIMARYWEAPONRANGEPCT = 54,
		MOD_TYPE_OFFHANDDAMAGERADIUSPCT = 55,
		MOD_TYPE_TURRETACQUIRETARGETPCT = 56,
		MOD_TYPE_WHITEOUTINTERPSPEEDPCT = 57,
		MOD_TYPE_BACKSTABMELEEDAMAGEPCT = 58,
		MOD_TYPE_MAXSTOPPINGDISTANCEPCT = 59,
		MOD_TYPE_SECONDARYWEAPONRANGEPCT = 60,
		MOD_TYPE_EXTRAGRENADESFROMPICKUP = 61,
		MOD_TYPE_SHIELDPACKEFFECTIVENESS = 62,
		MOD_TYPE_STEALTHPACKPULSETIMEPCT = 63,
		MOD_TYPE_PRIMARYINCREASEDCLIPSIZE = 64,
		MOD_TYPE_EXTRACREDITSFROMBELTKILLS = 65,
		MOD_TYPE_TURRETARMORPENETRATIONPCT = 66,
		MOD_TYPE_SECONDARYINCREASEDCLIPSIZE = 67,
		MOD_TYPE_OFFHANDARMORPENETRATIONPCT = 68,
		MOD_TYPE_PRIMARYARMORPENETRATIONPCT = 69,
		MOD_TYPE_RUNOVERDAMAGEPROTECTIONPCT = 70,
		MOD_TYPE_PRIMARYWEAPONENERGYCOSTPCT = 71,
		MOD_TYPE_ACQUIRETIMEBYENEMYTURRETPCT = 72,
		MOD_TYPE_SECONDARYARMORPENETRATIONPCT = 73,
		MOD_TYPE_VEHICLEEXTRAENERGY = 74,
		MOD_TYPE_AMMOPICKUPREACH = 75,
		MOD_TYPE_VEHICLEPASSENGERDMGPROTPCT = 76,
		MOD_TYPE_DAMAGEREPAIRENEMYOBJECTIVES = 77,
		MOD_TYPE_POTENTIALENERGYFALLDAMAGE = 78,
		MOD_TYPE_FASTERTHROWBELTBUFFPCT = 79,
		MOD_TYPE_IGNOREGRENADESECONDARYONSELF = 80,
		MOD_TYPE_POTENTIALENERGYDMGTRANSFERPCT = 81,
		MOD_TYPE_FLAGREACHTIER = 82,
		MOD_TYPE_SONICPUNCH = 83,
		MOD_TYPE_SONICPUNCHDIST = 84,
		MOD_TYPE_SONICPUNCHKNOCKBACK = 85,
		MOD_TYPE_RAGE = 86,
		MOD_TYPE_RAGEENERGYREGEN = 87,
		MOD_TYPE_RAGETIMELENGTH = 88,
		MOD_TYPE_RAGEHEALTHRESTOREPCT = 89,
		MOD_TYPE_IGNOREPULSESTEALTHTIME = 90,
		MOD_TYPE_RAGEMASSREDUCTION = 91,
		MOD_TYPE_REPAIRDEPLOYABLERATEPCT = 92,
		MAX_CLASS_SLOTS = 10,
		TR_QUERY_CTF = 0,
		TR_QUERY_TDM = 1,
		TR_QUERY_RABBIT = 2,
		TR_QUERY_TEAMRABBIT = 3,
		TR_QUERY_ARENA = 4,
		TR_QUERY_DEFENDANDDESTROY = 5,
		TR_QUERY_CTFBLITZ = 6,
		CONTEXT_GAME_MODE_TRCTF = 0,
		CONTEXT_GAME_MODE_TRTDM = 1,
		CONTEXT_GAME_MODE_TRRABBIT = 2,
		CONTEXT_GAME_MODE_TRSIEGE = 3,
		CONTEXT_GAME_MODE_TRTRAINING = 4,
		CONTEXT_GAME_MODE_TRSTORM = 5,
		CONTEXT_GAME_MODE_TRTEAMRABBIT = 6,
		CONTEXT_GAME_MODE_TRARENA = 7,
		CONTEXT_GAME_MODE_TRDEFENDANDDESTROY = 8,
		CONTEXT_GAME_MODE_TRCAPTUREANDHOLD = 9,
		CONTEXT_GAME_MODE_TRCTFBLITZ = 10,
		STAT_VIEW_BASE_PLAYER = 1,
		STAT_VIEW_BASE_GAME = 101,
		STAT_VIEW_BASE_WEAPON_TYPE = 1000,
		GAME_SESSION_NAME = "Game",
		PROPERTY_CUSTOM_MAPNAME = 0x40000001,
		PROPERTY_CUSTOM_GAMEMODE = 0x40000002,
		PROPERTY_SERVER_DESCRIPTION = 0x40000003,
		PROPERTY_CUSTOM_MUTATORS = 0x40000004,
		CLASS_TYPE_UNKNOWN = 1668,
		CLASS_TYPE_LIGHT_INFILTRATOR = 1682,
		CLASS_TYPE_LIGHT_JUMPER = 1696,
		CLASS_TYPE_LIGHT_ARCHITECT = 1697,
		CLASS_TYPE_LIGHT_PATHFINDER = 1683,
		CLASS_TYPE_LIGHT_NAKEDPATHFINDER = 1701,
		CLASS_TYPE_LIGHT_WRAITH = 1685,
		CLASS_TYPE_LIGHT_SENTINEL = 1686,
		CLASS_TYPE_MEDIUM_ENGINEER = 1698,
		CLASS_TYPE_MEDIUM_RANGER = 1687,
		CLASS_TYPE_MEDIUM_SCRAMBLER = 1688,
		CLASS_TYPE_MEDIUM_SOLDIER = 1693,
		CLASS_TYPE_MEDIUM_RAIDER = 1699,
		CLASS_TYPE_MEDIUM_TECHNICIAN = 1694,
		CLASS_TYPE_MEDIUM_WARDER = 1700,
		CLASS_TYPE_HEAVY_BRUTE = 1689,
		CLASS_TYPE_HEAVY_ROOK = 1690,
		CLASS_TYPE_HEAVY_DOOMBRINGER = 1691,
		CLASS_TYPE_HEAVY_JUGGERNAUGHT = 1692,
		CLASS_TYPE_HEAVY_MARAUDER = 1695,
		CLASS_PURCHASE_LIGHT_INFILTRATOR = 7476,
		CLASS_PURCHASE_LIGHT_PATHFINDER = 7466,
		CLASS_PURCHASE_LIGHT_SENTINEL = 7478,
		CLASS_PURCHASE_MEDIUM_SOLDIER = 7470,
		CLASS_PURCHASE_MEDIUM_RAIDER = 7494,
		CLASS_PURCHASE_MEDIUM_TECHNICIAN = 7472,
		CLASS_PURCHASE_HEAVY_BRUTE = 7486,
		CLASS_PURCHASE_HEAVY_DOOMBRINGER = 7488,
		CLASS_PURCHASE_HEAVY_JUGGERNAUGHT = 7474,
		CLASS_INFO_BIT_NONE = 0x00000000,
		CLASS_INFO_BIT_INFILTRATOR = 0x00000001,
		CLASS_INFO_BIT_JUMPER = 0x00000002,
		CLASS_INFO_BIT_ARCHITECT = 0x00000004,
		CLASS_INFO_BIT_PATHFINDER = 0x00000008,
		CLASS_INFO_BIT_WRAITH = 0x00000010,
		CLASS_INFO_BIT_SENTINEL = 0x00000020,
		CLASS_INFO_BIT_ENGINEER = 0x00000040,
		CLASS_INFO_BIT_RANGER = 0x00000080,
		CLASS_INFO_BIT_SCRAMBLER = 0x00000100,
		CLASS_INFO_BIT_SOLDIER = 0x00000200,
		CLASS_INFO_BIT_RAIDER = 0x00000400,
		CLASS_INFO_BIT_TECHNICIAN = 0x00000800,
		CLASS_INFO_BIT_WARDER = 0x00001000,
		CLASS_INFO_BIT_BRUTE = 0x00002000,
		CLASS_INFO_BIT_ROOK = 0x00004000,
		CLASS_INFO_BIT_DOOMBRINGER = 0x00008000,
		CLASS_INFO_BIT_JUGGERNAUT = 0x00010000,
		CLASS_INFO_BIT_MARAUDER = 0x00020000,
		CLASS_INFO_BIT_NAKEDPATHFINDER = 0x00040000,
		WEAPON_ID_UNKNOWN = 102000,
		WEAPON_ID_AVMINE = 102003,
		WEAPON_ID_DUALRHINO = 102024,
		WEAPON_ID_LACERATOR = 102016,
		WEAPON_ID_ARX_BUSTER = 7384,
		WEAPON_ID_CHAINGUN = 7386,
		WEAPON_ID_DROPJAMMER = 7456,
		WEAPON_ID_FORCEFIELD = 7411,
		WEAPON_ID_FORCEFIELD_PERSONAL = 7460,
		WEAPON_ID_GRENADE = 7390,
		WEAPON_ID_GRENADE_AP = 7434,
		WEAPON_ID_GRENADE_AP_HEAVY = 7447,
		WEAPON_ID_GRENADE_EMP = 7444,
		WEAPON_ID_GRENADE_FLARE = 7389,
		WEAPON_ID_GRENADE_NITRON = 7387,
		WEAPON_ID_GRENADE_NITRON_HEAVY = 7450,
		WEAPON_ID_GRENADE_SPIKE = 7428,
		WEAPON_ID_GRENADE_ST = 7437,
		WEAPON_ID_GRENADE_STICKY = 7402,
		WEAPON_ID_GRENADE_STICKY_LIGHT = 7455,
		WEAPON_ID_GRENADE_WHITEOUT = 7432,
		WEAPON_ID_GRENADE_XL = 7430,
		WEAPON_ID_GUNNER_BEOWULF = 7405,
		WEAPON_ID_GUNNER_HERC = 7404,
		WEAPON_ID_LAUNCHER_BOLT = 7425,
		WEAPON_ID_LAUNCHER_BOLT_HEAVY = 7452,
		WEAPON_ID_LAUNCHER_GRENADE = 7416,
		WEAPON_ID_LAUNCHER_MIRV = 7457,
		WEAPON_ID_LAUNCHER_MORTAR = 7393,
		WEAPON_ID_LAUNCHER_SABER = 7398,
		WEAPON_ID_MELEE = 7391,
		WEAPON_ID_MINE = 7392,
		WEAPON_ID_MINE_CLAYMORE = 7421,
		WEAPON_ID_MINE_PRISM = 7440,
		WEAPON_ID_MOTIONALARM = 7426,
		WEAPON_ID_PILOT_BEOWULF = 7406,
		WEAPON_ID_PILOT_GRAVCYCLE = 7410,
		WEAPON_ID_PILOT_HAVOC = 7409,
		WEAPON_ID_PILOT_HERC = 7403,
		WEAPON_ID_PILOT_SHRIKE = 7407,
		WEAPON_ID_PISTOL_EAGLE = 7388,
		WEAPON_ID_PISTOL_EAGLE_CUSTOM = 7439,
		WEAPON_ID_PISTOL_NOVA_COLT = 7394,
		WEAPON_ID_PISTOL_NOVA_SLUG = 7431,
		WEAPON_ID_PISTOL_FALCON = 7419,
		WEAPON_ID_PISTOL_H1 = 7435,
		WEAPON_ID_PISTOL_SN7 = 7418,
		WEAPON_ID_PISTOL_SPARROW = 7433,
		WEAPON_ID_TURRET_EXR = 7417,
		WEAPON_ID_TURRET_BASE = 7412,
		WEAPON_ID_TURRET_LIGHT = 7413,
		WEAPON_ID_TURRET_WALL = 7445,
		WEAPON_ID_REPAIR_TOOL = 7396,
		WEAPON_ID_REPAIR_TOOL_SD = 7436,
		WEAPON_ID_RIFLE_ASSAULT = 7385,
		WEAPON_ID_RIFLE_ASSAULT_LIGHT = 7438,
		WEAPON_ID_RIFLE_ASSAULT_S22 = 7424,
		WEAPON_ID_RIFLE_ASSAULT_X1 = 7458,
		WEAPON_ID_RIFLE_PHASE = 7395,
		WEAPON_ID_RIFLE_SNIPER = 7400,
		WEAPON_ID_SMG_NJ4 = 7441,
		WEAPON_ID_SMG_RHINO = 7397,
		WEAPON_ID_SMG_TCN4 = 7443,
		WEAPON_ID_SHOTGUN = 7399,
		WEAPON_ID_SHOTGUN_ARX = 7454,
		WEAPON_ID_SHOTGUN_AUTO = 7449,
		WEAPON_ID_SHOTGUN_SAWED_OFF = 7427,
		WEAPON_ID_SPINFUSOR = 7401,
		WEAPON_ID_SPINFUSOR_D = 7446,
		WEAPON_ID_SPINFUSOR_HEAVY = 7448,
		WEAPON_ID_SPINFUSOR_LIGHT = 7422,
		WEAPON_ID_SPINFUSOR_TOSS = 7459,
		WEAPON_ID_CALLIN_TACTICALSTRIKE = 7609,
		WEAPON_ID_CALLIN_INVENTORYDROP = 7610,
		WEAPON_ID_CALLIN_ORBITALSTRIKE = 7611,
		WEAPON_ID_TCNG = 7736,
		WEAPON_ID_FALLING = 7815,
		WEAPON_ID_HITWALL = 7816,
		WEAPON_ID_RANOVER = 7817,
		WEAPON_ID_THUMPER = 7461,
		WEAPON_ID_THUMPER_D = 7462,
		WEAPON_ID_STEALTHLIGHTSPINFUSOR = 7902,
		WEAPON_ID_GRENADE_T5 = 7914,
		WEAPON_ID_PROXIMITY_GRENADE = 8222,
		WEAPON_ID_INFILTRATORBLANK = 8230,
		WEAPON_ID_ACCURIZEDSHOTGUN = 8239,
		WEAPON_ID_MINE_ARMOREDCLAYMORE = 8240,
		WEAPON_ID_BUCKLER = 8242,
		WEAPON_ID_IMPACTBOMBLETS = 8244,
		WEAPON_ID_LIGHTTWINFUSOR = 8245,
		WEAPON_ID_LR1MORTAR = 8246,
		WEAPON_ID_MIRV_GRENADE = 8247,
		WEAPON_ID_GRENADE_NINJASMOKE = 8248,
		WEAPON_ID_NJ5SMG = 8249,
		WEAPON_ID_PLASMA_CANNON = 8250,
		WEAPON_ID_PLASMA_GUN = 8251,
		WEAPON_ID_REMOTE_ARX_BUSTER = 8252,
		WEAPON_ID_ROCKETLAUNCHER = 8253,
		WEAPON_ID_SAP20 = 8254,
		WEAPON_ID_THROWINGKNIVES = 8256,
		WEAPON_ID_TWINFUSOR = 8257,
		WEAPON_ID_HEAVYTWINFUSOR = 8656,
		WEAPON_ID_SPIKELAUNCHER = 8357,
		WEAPON_ID_TARGETINGBEACON = 8358,
		ITEM_PACK_AMMO = 7821,
		ITEM_PACK_BLINK = 7822,
		ITEM_PACK_DAMAGE = 7823,
		ITEM_PACK_ENERGY_SOLDIER = 7824,
		ITEM_PACK_ENERGY_JUGGERNAUT = 7901,
		ITEM_PACK_ENERGY_BRUTE = 7830,
		ITEM_PACK_RECHARGE_PATHFINDER = 7825,
		ITEM_PACK_RECHARGE_SENTINEL = 7900,
		ITEM_PACK_HEAVYSHIELD = 7826,
		ITEM_PACK_JAMMER = 7827,
		ITEM_PACK_LIGHTREGEN = 7828,
		ITEM_PACK_POWERPOOL = 7829,
		ITEM_PACK_MINORENERGY = 7830,
		ITEM_PACK_REGEN = 7831,
		ITEM_PACK_SHIELD = 7832,
		ITEM_PACK_STEALTH = 7833,
		ITEM_PACK_UTILITY_SOLDIER = 8223,
		ITEM_PACK_HIGHSPEEDSTEALTH = 8243,
		ITEM_PACK_SURVIVAL = 8255,
		WEAPON_BASE_UNKNOWN = 0,
		WEAPON_BASE_SPINFUSOR = 1,
		WEAPON_BASE_PISTOL = 2,
		WEAPON_BASE_SNIPERRIFLE = 3,
		WEAPON_BASE_ASSAULTRIFLE = 4,
		WEAPON_BASE_GRENADE = 5,
		WEAPON_BASE_REPAIRTOOL = 6,
		WEAPON_BASE_CALLIN = 7,
		WEAPON_BASE_SMG = 8,
		WEAPON_BASE_SHOTGUN = 9,
		WEAPON_BASE_VEHICLE = 10,
		WEAPON_TYPE_UNKNOWN = 0,
		WEAPON_TYPE_PROJECTILE = 1,
		WEAPON_TYPE_INSTANTFIRE = 2,
		ITEM_PERK_BOUNTYHUNTER = 8153,
		ITEM_PERK_CLOSECOMBAT = 8156,
		ITEM_PERK_DETERMINATION = 8157,
		ITEM_PERK_EGOCENTRIC = 7917,
		ITEM_PERK_LOOTER = 8158,
		ITEM_PERK_MECHANIC = 8170,
		ITEM_PERK_PILOT = 8159,
		ITEM_PERK_POTENTIALENERGY = 8160,
		ITEM_PERK_QUICKDRAW = 8161,
		ITEM_PERK_REACH = 7916,
		ITEM_PERK_SAFEFALL = 8162,
		ITEM_PERK_SAFETYTHIRD = 8163,
		ITEM_PERK_STEALTHY = 8164,
		ITEM_PERK_SUPERCAPACITOR = 8165,
		ITEM_PERK_SUPERHEAVY = 8166,
		ITEM_PERK_SURVIVALIST = 8167,
		ITEM_PERK_ULTRACAPACITOR = 8168,
		ITEM_PERK_WHEELDEAL = 8169,
		ITEM_PERK_RAGE = 8232,
		ITEM_PERK_SONICPUNCH = 8231,
		ITEM_PERK_LIGHTWEIGHT = 8646,
		ITEM_SKILL_PATHFINDER_PRIMARY_AMMO_I = 7508,
		ITEM_SKILL_PATHFINDER_PRIMARY_AMMO_II = 7637,
		ITEM_SKILL_PATHFINDER_PRIMARY_ANTIARMOR = 7509,
		ITEM_SKILL_PATHFINDER_SECONDARY_AMMO_I = 7638,
		ITEM_SKILL_PATHFINDER_SECONDARY_AMMO_II = 7640,
		ITEM_SKILL_PATHFINDER_SECONDARY_CLIP = 7639,
		ITEM_SKILL_PATHFINDER_SECONDARY_FALLOFF = 7641,
		ITEM_SKILL_PATHFINDER_GRENADE_AMMO = 7504,
		ITEM_SKILL_PATHFINDER_GRENADE_RADIUS = 7505,
		ITEM_SKILL_PATHFINDER_HEALTH_POOL = 7636,
		ITEM_SKILL_PATHFINDER_HEALTH_REGEN_RATE = 7507,
		ITEM_SKILL_PATHFINDER_HEALTH_REGEN_DELAY = 7506,
		ITEM_SKILL_PATHFINDER_ENERGY_REGEN_I = 7501,
		ITEM_SKILL_PATHFINDER_ENERGY_REGEN_II = 7635,
		ITEM_SKILL_PATHFINDER_SPEED_I = 7502,
		ITEM_SKILL_PATHFINDER_SPEED_II = 7503,
		ITEM_SKILL_PATHFINDER_GROUND_SPEED = 7754,
		ITEM_SKILL_PATHFINDER_STOP_DISTANCE = 7755,
		ITEM_SKILL_JUMPER_PRIMARY_AMMO_I = 7564,
		ITEM_SKILL_JUMPER_PRIMARY_AMMO_II = 7646,
		ITEM_SKILL_JUMPER_PRIMARY_ANTIARMOR = 7645,
		ITEM_SKILL_JUMPER_SECONDARY_AMMO = 7647,
		ITEM_SKILL_JUMPER_SECONDARY_RELOAD = 7565,
		ITEM_SKILL_JUMPER_SECONDARY_FALLOFF = 7648,
		ITEM_SKILL_JUMPER_GRENADE_AMMO = 7563,
		ITEM_SKILL_JUMPER_PACK_COST_I = 7558,
		ITEM_SKILL_JUMPER_PACK_COST_II = 7643,
		ITEM_SKILL_JUMPER_PACK_POTENCY = 7560,
		ITEM_SKILL_JUMPER_HEALTH_POOL = 7562,
		ITEM_SKILL_JUMPER_HEALTH_REGEN_RATE = 7644,
		ITEM_SKILL_JUMPER_HEALTH_REGEN_DELAY = 7561,
		ITEM_SKILL_JUMPER_ENERGY_POOL = 7642,
		ITEM_SKILL_JUMPER_CONTROL = 7557,
		ITEM_SKILL_JUMPER_SPEED = 7559,
		ITEM_SKILL_JUMPER_GROUND_SPEED = 7756,
		ITEM_SKILL_JUMPER_STOP_DISTANCE = 7757,
		ITEM_SKILL_SOLDIER_PRIMARY_AMMO_I = 7551,
		ITEM_SKILL_SOLDIER_PRIMARY_AMMO_II = 7667,
		ITEM_SKILL_SOLDIER_PRIMARY_ANTIARMOR = 7552,
		ITEM_SKILL_SOLDIER_SECONDARY_AMMO = 7670,
		ITEM_SKILL_SOLDIER_SECONDARY_CLIP = 7671,
		ITEM_SKILL_SOLDIER_SECONDARY_RELOAD = 7556,
		ITEM_SKILL_SOLDIER_GRENADE_AMMO = 7540,
		ITEM_SKILL_SOLDIER_HEALTH_POOL_I = 7555,
		ITEM_SKILL_SOLDIER_HEALTH_POOL_II = 7668,
		ITEM_SKILL_SOLDIER_HEALTH_REGEN_RATE = 7669,
		ITEM_SKILL_SOLDIER_HEALTH_REGEN_DELAY = 7554,
		ITEM_SKILL_SOLDIER_ENERGY_POOL_I = 7541,
		ITEM_SKILL_SOLDIER_ENERGY_POOL_II = 7665,
		ITEM_SKILL_SOLDIER_CONTROL = 7664,
		ITEM_SKILL_SOLDIER_SPEED_I = 7548,
		ITEM_SKILL_SOLDIER_SPEED_II = 7666,
		ITEM_SKILL_SOLDIER_GROUND_SPEED = 7759,
		ITEM_SKILL_SOLDIER_STOP_DISTANCE = 7760,
		ITEM_SKILL_SOLDIER_WEAPON_SWITCH = 7761,
		ITEM_SKILL_JUGGERNAUGHT_PRIMARY_AMMO_I = 7568,
		ITEM_SKILL_JUGGERNAUGHT_PRIMARY_AMMO_II = 7658,
		ITEM_SKILL_JUGGERNAUGHT_PRIMARY_ANTIARMOR = 7569,
		ITEM_SKILL_JUGGERNAUGHT_SECONDARY_AMMO_I = 7573,
		ITEM_SKILL_JUGGERNAUGHT_SECONDARY_AMMO_II = 7660,
		ITEM_SKILL_JUGGERNAUGHT_SECONDARY_ANTIARMOR = 7574,
		ITEM_SKILL_JUGGERNAUGHT_GRENADE_AMMO_I = 7566,
		ITEM_SKILL_JUGGERNAUGHT_GRENADE_AMMO_II = 7663,
		ITEM_SKILL_JUGGERNAUGHT_GRENADE_RADIUS = 7662,
		ITEM_SKILL_JUGGERNAUGHT_HEALTH_POOL_I = 7576,
		ITEM_SKILL_JUGGERNAUGHT_HEALTH_POOL_II = 7661,
		ITEM_SKILL_JUGGERNAUGHT_ENERGY_POOL_I = 7572,
		ITEM_SKILL_JUGGERNAUGHT_ENERGY_POOL_II = 7659,
		ITEM_SKILL_JUGGERNAUGHT_HEALTH_REGEN_DELAY = 7575,
		ITEM_SKILL_JUGGERNAUGHT_CONTROL = 7657,
		ITEM_SKILL_JUGGERNAUGHT_SPEED = 7570,
		ITEM_SKILL_JUGGERNAUGHT_GROUND_SPEED = 7770,
		ITEM_SKILL_JUGGERNAUGHT_WEAPON_SWITCH = 7771,
		ITEM_SKILL_TECHNICIAN_PRIMARY_AMMO = 7685,
		ITEM_SKILL_TECHNICIAN_PRIMARY_RELOAD = 7686,
		ITEM_SKILL_TECHNICIAN_REPAIR_RATE_I = 7519,
		ITEM_SKILL_TECHNICIAN_REPAIR_RATE_II = 7681,
		ITEM_SKILL_TECHNICIAN_GRENADE_AMMO_I = 7518,
		ITEM_SKILL_TECHNICIAN_GRENADE_AMMO_II = 7687,
		ITEM_SKILL_TECHNICIAN_DEPLOY_ACQUIRE = 7512,
		ITEM_SKILL_TECHNICIAN_DEPLOY_LIMIT = 7513,
		ITEM_SKILL_TECHNICIAN_DEPLOY_ANTIARMOR = 7514,
		ITEM_SKILL_TECHNICIAN_HEALTH_POOL_I = 7520,
		ITEM_SKILL_TECHNICIAN_HEALTH_POOL_II = 7684,
		ITEM_SKILL_TECHNICIAN_HEALTH_REGEN_DELAY = 7516,
		ITEM_SKILL_TECHNICIAN_ENERGY_POOL = 7515,
		ITEM_SKILL_TECHNICIAN_CONTROL = 7517,
		ITEM_SKILL_TECHNICIAN_SPEED_I = 7682,
		ITEM_SKILL_TECHNICIAN_SPEED_II = 7683,
		ITEM_SKILL_TECHNICIAN_GROUND_SPEED = 7765,
		ITEM_SKILL_TECHNICIAN_STOP_DISTANCE = 7766,
		ITEM_SKILL_TECHNICIAN_WEAPON_SWITCH = 7767,
		ITEM_SKILL_SENTINEL_PRIMARY_AMMO_I = 7528,
		ITEM_SKILL_SENTINEL_PRIMARY_AMMO_II = 7655,
		ITEM_SKILL_SENTINEL_PRIMARY_CLIP = 7654,
		ITEM_SKILL_SENTINEL_PRIMARY_FALLOFF = 7529,
		ITEM_SKILL_SENTINEL_SECONDARY_AMMO = 7651,
		ITEM_SKILL_SENTINEL_SECONDARY_CLIP = 7652,
		ITEM_SKILL_SENTINEL_GRENADE_AMMO = 7527,
		ITEM_SKILL_SENTINEL_GRENADE_RADIUS = 7656,
		ITEM_SKILL_SENTINEL_DEPLOY_HEALTH = 7649,
		ITEM_SKILL_SENTINEL_DEPLOY_RADIUS_I = 7521,
		ITEM_SKILL_SENTINEL_DEPLOY_RADIUS_II = 7650,
		ITEM_SKILL_SENTINEL_HEALTH_REGEN_RATE = 7526,
		ITEM_SKILL_SENTINEL_HEALTH_REGEN_DELAY = 7525,
		ITEM_SKILL_SENTINEL_ENERGY_POOL_I = 7523,
		ITEM_SKILL_SENTINEL_ENERGY_POOL_II = 7653,
		ITEM_SKILL_SENTINEL_SPEED = 7524,
		ITEM_SKILL_SENTINEL_WEAPON_SWITCH = 7758,
		ITEM_SKILL_RANGER_PRIMARY_AMMO = 7679,
		ITEM_SKILL_RANGER_PRIMARY_CLIP = 7680,
		ITEM_SKILL_RANGER_PRIMARY_RELOAD = 7582,
		ITEM_SKILL_RANGER_SECONDARY_AMMO_I = 7581,
		ITEM_SKILL_RANGER_SECONDARY_AMMO_II = 7675,
		ITEM_SKILL_RANGER_SECONDARY_ANTIARMOR = 7674,
		ITEM_SKILL_RANGER_GRENADE_AMMO_I = 7580,
		ITEM_SKILL_RANGER_GRENADE_AMMO_II = 7677,
		ITEM_SKILL_RANGER_PACK_COST = 7583,
		ITEM_SKILL_RANGER_HEALTH_POOL_I = 7585,
		ITEM_SKILL_RANGER_HEALTH_POOL_II = 7676,
		ITEM_SKILL_RANGER_HEALTH_REGEN_DELAY = 7584,
		ITEM_SKILL_RANGER_ENERGY_POOL_I = 7577,
		ITEM_SKILL_RANGER_ENERGY_POOL_II = 7678,
		ITEM_SKILL_RANGER_CONTROL = 7672,
		ITEM_SKILL_RANGER_SPEED_I = 7578,
		ITEM_SKILL_RANGER_SPEED_II = 7673,
		ITEM_SKILL_RANGER_GROUND_SPEED = 7762,
		ITEM_SKILL_RANGER_STOP_DISTANCE = 7763,
		ITEM_SKILL_RANGER_WEAPON_SWITCH = 7764,
		ITEM_SKILL_DOOMBRINGER_PRIMARY_AMMO_I = 7598,
		ITEM_SKILL_DOOMBRINGER_PRIMARY_AMMO_II = 7632,
		ITEM_SKILL_DOOMBRINGER_PRIMARY_SPINUP = 7597,
		ITEM_SKILL_DOOMBRINGER_GRENADE_AMMO_I = 7590,
		ITEM_SKILL_DOOMBRINGER_GRENADE_AMMO_II = 7634,
		ITEM_SKILL_DOOMBRINGER_DEPLOY_AMMO = 7591,
		ITEM_SKILL_DOOMBRINGER_GRENADE_ANTIARMOR = 7633,
		ITEM_SKILL_DOOMBRINGER_DEPLOY_HEALTH_I = 7592,
		ITEM_SKILL_DOOMBRINGER_DEPLOY_HEALTH_II = 7629,
		ITEM_SKILL_DOOMBRINGER_HEALTH_POOL_I = 7596,
		ITEM_SKILL_DOOMBRINGER_HEALTH_POOL_II = 7631,
		ITEM_SKILL_DOOMBRINGER_HEALTH_REGEN_DELAY = 7595,
		ITEM_SKILL_DOOMBRINGER_ENERGY_POOL = 7628,
		ITEM_SKILL_DOOMBRINGER_CONTROL = 7594,
		ITEM_SKILL_DOOMBRINGER_SPEED_I = 7593,
		ITEM_SKILL_DOOMBRINGER_SPEED_II = 7630,
		ITEM_SKILL_DOOMBRINGER_GROUND_SPEED = 7772,
		ITEM_SKILL_DOOMBRINGER_STOP_DISTANCE = 7773,
		ITEM_SKILL_DOOMBRINGER_WEAPON_SWITCH = 7774,
		ITEM_SKILL_INFILTRATOR_PRIMARY_AMMO_I = 7612,
		ITEM_SKILL_INFILTRATOR_PRIMARY_AMMO_II = 7818,
		ITEM_SKILL_INFILTRATOR_PRIMARY_RELOAD = 7614,
		ITEM_SKILL_INFILTRATOR_PRIMARY_FALLOFF = 7613,
		ITEM_SKILL_INFILTRATOR_SECONDARY_AMMO = 7623,
		ITEM_SKILL_INFILTRATOR_SECONDARY_CLIP = 7625,
		ITEM_SKILL_INFILTRATOR_SECONDARY_RELOAD = 7624,
		ITEM_SKILL_INFILTRATOR_GRENADE_AMMO_I = 7615,
		ITEM_SKILL_INFILTRATOR_GRENADE_AMMO_II = 7618,
		ITEM_SKILL_INFILTRATOR_GRENADE_RADIUS = 7617,
		ITEM_SKILL_INFILTRATOR_GRENADE_ANTIARMOR = 7616,
		ITEM_SKILL_INFILTRATOR_PACK_COST_I = 7620,
		ITEM_SKILL_INFILTRATOR_PACK_COST_II = 7622,
		ITEM_SKILL_INFILTRATOR_PACK_POTENCY = 7621,
		ITEM_SKILL_INFILTRATOR_HEALTH_REGEN_RATE = 7627,
		ITEM_SKILL_INFILTRATOR_HEALTH_REGEN_DELAY = 7626,
		ITEM_SKILL_INFILTRATOR_ENERGY_POOL = 7619,
		ITEM_SKILL_RAIDER_PRIMARY_AMMO = 7688,
		ITEM_SKILL_RAIDER_PRIMARY_RELOAD = 7690,
		ITEM_SKILL_RAIDER_PRIMARY_FALLOFF = 7689,
		ITEM_SKILL_RAIDER_SECONDARY_AMMO = 7691,
		ITEM_SKILL_RAIDER_SECONDARY_CLIP = 7693,
		ITEM_SKILL_RAIDER_SECONDARY_ANTIARMOR = 7692,
		ITEM_SKILL_RAIDER_GRENADE_AMMO = 7694,
		ITEM_SKILL_RAIDER_GRENADE_EFFECT = 7695,
		ITEM_SKILL_RAIDER_GRENADE_RADIUS = 7696,
		ITEM_SKILL_RAIDER_PACK_COST_I = 7700,
		ITEM_SKILL_RAIDER_PACK_COST_II = 7703,
		ITEM_SKILL_RAIDER_PACK_POTENCY = 7701,
		ITEM_SKILL_RAIDER_HEALTH_POOL_I = 7698,
		ITEM_SKILL_RAIDER_HEALTH_POOL_II = 7699,
		ITEM_SKILL_RAIDER_HEALTH_REGEN_DELAY = 7697,
		ITEM_SKILL_RAIDER_ENERGY_POOL = 7702,
		ITEM_SKILL_BRUTE_ENERGY_POOL = 7723,
		ITEM_SKILL_BRUTE_GRENADE_AMMO = 7720,
		ITEM_SKILL_BRUTE_GRENADE_DURATION = 7721,
		ITEM_SKILL_BRUTE_GRENADE_RADIUS = 7722,
		ITEM_SKILL_BRUTE_HEALTH_POOL_I = 7729,
		ITEM_SKILL_BRUTE_HEALTH_POOL_II = 7732,
		ITEM_SKILL_BRUTE_HEALTH_REGEN_DELAY = 7730,
		ITEM_SKILL_BRUTE_HEALTH_REGEN_RATE = 7731,
		ITEM_SKILL_BRUTE_PRIMARY_AMMO_I = 7726,
		ITEM_SKILL_BRUTE_PRIMARY_AMMO_II = 7728,
		ITEM_SKILL_BRUTE_PRIMARY_ANTIARMOR = 7727,
		ITEM_SKILL_BRUTE_SECONARY_AMMO = 7733,
		ITEM_SKILL_BRUTE_SECONDARY_CLIP = 7735,
		ITEM_SKILL_BRUTE_SECONDARY_RELOAD = 7734,
		ITEM_SKILL_BRUTE_CONTROL = 7725,
		ITEM_SKILL_BRUTE_SPEED = 7724,
		ITEM_SKILL_BRUTE_GROUND_SPEED = 7775,
		ITEM_SKILL_BRUTE_WEAPON_SWITCH = 7776,
		ITEM_SKILL_SCRAMBLER_ENERGY_POOL = 7707,
		ITEM_SKILL_SCRAMBLER_GRENADE_AMMO = 7704,
		ITEM_SKILL_SCRAMBLER_GRENADE_DURATION = 7706,
		ITEM_SKILL_SCRAMBLER_GRENADE_RADIUS = 7705,
		ITEM_SKILL_SCRAMBLER_HEALTH_POOL_I = 7714,
		ITEM_SKILL_SCRAMBLER_HEALTH_POOL_II = 7715,
		ITEM_SKILL_SCRAMBLER_HEALTH_REGEN_DELAY = 7713,
		ITEM_SKILL_SCRAMBLER_PACK_COST_I = 7716,
		ITEM_SKILL_SCRAMBLER_PACK_COST_II = 7718,
		ITEM_SKILL_SCRAMBLER_PACK_EFFECTIVENESS_I = 7717,
		ITEM_SKILL_SCRAMBLER_PACK_EFFECTIVENESS_II = 7719,
		ITEM_SKILL_SCRAMBLER_PRIMARY_AMMO_I = 7710,
		ITEM_SKILL_SCRAMBLER_PRIMARY_AMMO_II = 7712,
		ITEM_SKILL_SCRAMBLER_PRIMARY_ANTIARMOR = 7711,
		ITEM_SKILL_SCRAMBLER_CONTROL = 7709,
		ITEM_SKILL_SCRAMBLER_SPEED = 7708,
		ITEM_SKILL_SCRAMBLER_GROUND_SPEED = 7768,
		ITEM_SKILL_SCRAMBLER_WEAPON_SWITCH = 7769,
		ITEM_SKILL_WRAITH_ENERGY_POOL = 7790,
		ITEM_SKILL_WRAITH_ENERGY_REGEN_I = 7781,
		ITEM_SKILL_WRAITH_ENERGY_REGEN_II = 7783,
		ITEM_SKILL_WRAITH_GRENADE_AMMO = 7788,
		ITEM_SKILL_WRAITH_GRENADE_RADIUS = 7789,
		ITEM_SKILL_WRAITH_GROUND_SPEED = 7782,
		ITEM_SKILL_WRAITH_HEALTH_REGEN_DELAY = 7791,
		ITEM_SKILL_WRAITH_HEALTH_REGEN_RATE = 7792,
		ITEM_SKILL_WRAITH_PRIMARY_AMMO_I = 7793,
		ITEM_SKILL_WRAITH_PRIMARY_AMMO_II = 7796,
		ITEM_SKILL_WRAITH_PRIMARY_CLIP = 7795,
		ITEM_SKILL_WRAITH_PRIMARY_ENERGY_COST = 7794,
		ITEM_SKILL_WRAITH_SECONDARY_AMMO = 7784,
		ITEM_SKILL_WRAITH_SECONDARY_CLIP_I = 7785,
		ITEM_SKILL_WRAITH_SECONDARY_CLIP_II = 7786,
		ITEM_SKILL_WRAITH_WEAPON_SWITCH = 7787,
		TR_MAX_CALLINS = 3,
		PROPERTY_CALLIN_ORBITALSTRIKE = 10241,
		PROPERTY_CALLIN_TACTICALSTRIKE = 10201,
		PROPERTY_CALLIN_SUPPORTINVENTORY = 10234,
		ITEM_SKIN_PATHFINDER = 7834,
		ITEM_SKIN_PATHFINDER_MERC = 8326,
		ITEM_SKIN_INFILTRATOR = 7835,
		ITEM_SKIN_INFILTRATOR_ASSASSIN = 8337,
		ITEM_SKIN_INFILTRATOR_MERC = 8336,
		ITEM_SKIN_SENTINEL = 8327,
		ITEM_SKIN_SENTINEL_MERC = 8665,
		ITEM_SKIN_SOLDIER = 8328,
		ITEM_SKIN_TECHNICIAN = 8329,
		ITEM_SKIN_TECHNICIAN_MERC = 8731,
		ITEM_SKIN_RAIDER = 8330,
		ITEM_SKIN_RAIDER_GRIEVER = 8351,
		ITEM_SKIN_RAIDER_MERC = 8352,
		ITEM_SKIN_JUGGERNAUT = 8331,
		ITEM_SKIN_DOOMBRINGER = 8332,
		ITEM_SKIN_BRUTE = 8333,
		ITEM_SKIN_BRUTE_MERC = 8663,
		ITEM_VOICE_LIGHT_STANDARD = 7903,
		ITEM_VOICE_MEDIUM_STANDARD = 7904,
		ITEM_VOICE_HEAVY_STANDARD = 7905,
		ITEM_ARMOR_MOD_PATHFINDER_1 = 7836,
		ITEM_ARMOR_MOD_SENTINEL_1 = 7837,
		ITEM_ARMOR_MOD_INFILTRATOR_1 = 7838,
		ITEM_ARMOR_MOD_SOLDIER_1 = 7839,
		ITEM_ARMOR_MOD_TECHNICIAN_1 = 7840,
		ITEM_ARMOR_MOD_RAIDER_1 = 7841,
		ITEM_ARMOR_MOD_JUGGERNAUT_1 = 7842,
		ITEM_ARMOR_MOD_DOOMBRINGER_1 = 7843,
		ITEM_ARMOR_MOD_BRUTE_1 = 7844,
		WEAPON_ID_ARX_BUSTER_MKD = 8391,
		WEAPON_ID_CHAINGUN_MKD = 8392,
		WEAPON_ID_GRENADE_MKD = 8393,
		WEAPON_ID_GRENADE_AP_HEAVY_MKD = 8394,
		WEAPON_ID_GRENADE_EMP_MKD = 8395,
		WEAPON_ID_GRENADE_NITRON_MKD = 8396,
		WEAPON_ID_GRENADE_SPIKE_MKD = 8397,
		WEAPON_ID_GRENADE_STICKY_MKD = 8398,
		WEAPON_ID_GRENADE_XL_MKD = 8399,
		WEAPON_ID_LAUNCHER_MORTAR_MKD = 8400,
		WEAPON_ID_LAUNCHER_SABER_MKD = 8401,
		WEAPON_ID_MINE_CLAYMORE_MKD = 8402,
		WEAPON_ID_PISTOL_NOVA_COLT_MKD = 8403,
		WEAPON_ID_PISTOL_SN7_MKD = 8404,
		WEAPON_ID_REPAIR_TOOL_SD_MKD = 8405,
		WEAPON_ID_RIFLE_ASSAULT_MKD = 8406,
		WEAPON_ID_RIFLE_SNIPER_MKD = 8407,
		WEAPON_ID_SMG_NJ4_MKD = 8408,
		WEAPON_ID_SMG_RHINO_MKD = 8409,
		WEAPON_ID_SMG_TCN4_MKD = 8410,
		WEAPON_ID_SHOTGUN_MKD = 8411,
		WEAPON_ID_SHOTGUN_AUTO_MKD = 8412,
		WEAPON_ID_SPINFUSOR_D_MKD = 8413,
		WEAPON_ID_SPINFUSOR_HEAVY_MKD = 8414,
		WEAPON_ID_SPINFUSOR_LIGHT_MKD = 8415,
		WEAPON_ID_TCNG_MKD = 8416,
		WEAPON_ID_THUMPERD_MKD = 8417,
		WEAPON_ID_REPAIR_DEPLOYABLE = 8698,
		WEAPON_ID_SPINFUSOR_LIGHT_100X = 8696,
		WEAPON_ID_SPINFUSOR_100X = 8697,
		WEAPON_ID_TC24 = 8699,
		ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_1 = 8700,
		ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_2 = 8701,
		ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_3 = 8702,
		ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_1 = 8703,
		ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_2 = 8704,
		ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_3 = 8705,
		ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_1 = 8706,
		ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_2 = 8707,
		ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_3 = 8708,
		ITEM_UPGRADE_TECHNICIAN_TC24_1 = 8709,
		ITEM_UPGRADE_TECHNICIAN_TC24_2 = 8710,
		ITEM_UPGRADE_TECHNICIAN_TC24_3 = 8711,
		ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR_100X = 265,
		ACTIVITY_TECHNICIAN_BELT_REPAIR_DEPLOYABLE = 266,
		ACTIVITY_SOLDIER_PRIMARY_SPINFUSOR_100X = 264,
		ACTIVITY_TECHNICIAN_PRIMARY_TC24 = 267,
		ACTIVITY_SENTINEL_PRIMARY_SAP20 = 268,
		ACTIVITY_SENTINEL_SECONDARY_ACCURIZEDSHOTGUN = 269,
		ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_1 = 8418,
		ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_2 = 8419,
		ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_3 = 8420,
		ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_1 = 8421,
		ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_2 = 8422,
		ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_3 = 8423,
		ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_4 = 8424,
		ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_1 = 8425,
		ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_2 = 8426,
		ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_3 = 8427,
		ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_4 = 8428,
		ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_1 = 8429,
		ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_2 = 8430,
		ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_3 = 8431,
		ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_4 = 8432,
		ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_1 = 8433,
		ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_2 = 8434,
		ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_3 = 8435,
		ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_4 = 8436,
		ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_1 = 8437,
		ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_2 = 8438,
		ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_3 = 8439,
		ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_1 = 8440,
		ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_2 = 8441,
		ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_3 = 8442,
		ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_1 = 8443,
		ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_2 = 8444,
		ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_3 = 8445,
		ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_4 = 8446,
		ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_1 = 8447,
		ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_2 = 8448,
		ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_3 = 8449,
		ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_1 = 8657,
		ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_2 = 8658,
		ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_3 = 8659,
		ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_1 = 8450,
		ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_2 = 8451,
		ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_3 = 8452,
		ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_1 = 8453,
		ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_2 = 8454,
		ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_3 = 8455,
		ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_1 = 8456,
		ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_2 = 8457,
		ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_3 = 8458,
		ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_1 = 8459,
		ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_2 = 8460,
		ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_3 = 8461,
		ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_1 = 8462,
		ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_2 = 8463,
		ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_3 = 8464,
		ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_1 = 8465,
		ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_2 = 8466,
		ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_3 = 8467,
		ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_4 = 8468,
		ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_1 = 8469,
		ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_2 = 8470,
		ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_3 = 8471,
		ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_1 = 8472,
		ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_2 = 8473,
		ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_3 = 8474,
		ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_1 = 8475,
		ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_2 = 8476,
		ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_3 = 8477,
		ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_4 = 8478,
		ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_1 = 8479,
		ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_2 = 8480,
		ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_3 = 8481,
		ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_1 = 8482,
		ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_2 = 8483,
		ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_3 = 8484,
		ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_1 = 8486,
		ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_2 = 8487,
		ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_3 = 8488,
		ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_4 = 8489,
		ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_1 = 8490,
		ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_2 = 8491,
		ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_3 = 8492,
		ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_1 = 8493,
		ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_2 = 8494,
		ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_3 = 8495,
		ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_1 = 8496,
		ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_2 = 8497,
		ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_3 = 8498,
		ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_1 = 8499,
		ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_2 = 8500,
		ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_3 = 8501,
		ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_1 = 8502,
		ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_2 = 8503,
		ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_3 = 8504,
		ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_1 = 8505,
		ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_2 = 8506,
		ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_3 = 8507,
		ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_1 = 7850,
		ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_2 = 7851,
		ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_3 = 7852,
		ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_1 = 7855,
		ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_2 = 7860,
		ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_3 = 7857,
		ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_1 = 8277,
		ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_2 = 8278,
		ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_3 = 8279,
		ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_1 = 7927,
		ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_2 = 7929,
		ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_3 = 7930,
		ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_4 = 7931,
		ITEM_UPGRADE_SENTINEL_PHASERIFLE_1 = 7932,
		ITEM_UPGRADE_SENTINEL_PHASERIFLE_2 = 7933,
		ITEM_UPGRADE_SENTINEL_PHASERIFLE_3 = 7934,
		ITEM_UPGRADE_SENTINEL_PHASERIFLE_4 = 7935,
		ITEM_UPGRADE_SENTINEL_SAP20_1 = 8305,
		ITEM_UPGRADE_SENTINEL_SAP20_2 = 8306,
		ITEM_UPGRADE_SENTINEL_SAP20_3 = 8307,
		ITEM_UPGRADE_SENTINEL_SAP20_4 = 8308,
		ITEM_UPGRADE_INFILTRATOR_RHINOSMG_1 = 7960,
		ITEM_UPGRADE_INFILTRATOR_RHINOSMG_2 = 7961,
		ITEM_UPGRADE_INFILTRATOR_RHINOSMG_3 = 7962,
		ITEM_UPGRADE_INFILTRATOR_RHINOSMG_4 = 7963,
		ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_1 = 7964,
		ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_2 = 7965,
		ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_3 = 7966,
		ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_1 = 8298,
		ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_2 = 8299,
		ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_3 = 8300,
		ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_1 = 7985,
		ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_2 = 7986,
		ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_3 = 7987,
		ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_4 = 7988,
		ITEM_UPGRADE_SOLDIER_SPINFUSOR_1 = 7992,
		ITEM_UPGRADE_SOLDIER_SPINFUSOR_2 = 7993,
		ITEM_UPGRADE_SOLDIER_SPINFUSOR_3 = 7994,
		ITEM_UPGRADE_SOLDIER_TWINFUSOR_1 = 8316,
		ITEM_UPGRADE_SOLDIER_TWINFUSOR_2 = 8317,
		ITEM_UPGRADE_SOLDIER_TWINFUSOR_3 = 8318,
		ITEM_UPGRADE_TECHNICIAN_TCN4SMG_1 = 8012,
		ITEM_UPGRADE_TECHNICIAN_TCN4SMG_2 = 8013,
		ITEM_UPGRADE_TECHNICIAN_TCN4SMG_3 = 8014,
		ITEM_UPGRADE_TECHNICIAN_TCN4SMG_4 = 8015,
		ITEM_UPGRADE_TECHNICIAN_THUMPER_1 = 8016,
		ITEM_UPGRADE_TECHNICIAN_THUMPER_2 = 8017,
		ITEM_UPGRADE_TECHNICIAN_THUMPER_3 = 8018,
		ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_1 = 8045,
		ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_2 = 8046,
		ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_3 = 8047,
		ITEM_UPGRADE_RAIDER_ARXBUSTER_1 = 8042,
		ITEM_UPGRADE_RAIDER_ARXBUSTER_2 = 8043,
		ITEM_UPGRADE_RAIDER_ARXBUSTER_3 = 8044,
		ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_1 = 8070,
		ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_2 = 8071,
		ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_3 = 8072,
		ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_1 = 8073,
		ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_2 = 8074,
		ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_3 = 8075,
		ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_1 = 8280,
		ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_2 = 8281,
		ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_3 = 8282,
		ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_1 = 8100,
		ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_2 = 8101,
		ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_3 = 8102,
		ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_4 = 8103,
		ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_1 = 8104,
		ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_2 = 8105,
		ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_3 = 8106,
		ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_1 = 8124,
		ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_2 = 8125,
		ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_3 = 8126,
		ITEM_UPGRADE_BRUTE_PLASMACANNON_1 = 8292,
		ITEM_UPGRADE_BRUTE_PLASMACANNON_2 = 8293,
		ITEM_UPGRADE_BRUTE_PLASMACANNON_3 = 8294,
		ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_1 = 8386,
		ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_2 = 8387,
		ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_3 = 8388,
		ITEM_UPGRADE_PATHFINDER_SHOTGUN_1 = 7861,
		ITEM_UPGRADE_PATHFINDER_SHOTGUN_2 = 7862,
		ITEM_UPGRADE_PATHFINDER_SHOTGUN_3 = 7863,
		ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_1 = 7866,
		ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_2 = 7867,
		ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_3 = 7868,
		ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_4 = 7869,
		ITEM_UPGRADE_PATHFINDER_BUCKLER_1 = 8265,
		ITEM_UPGRADE_PATHFINDER_BUCKLER_2 = 8266,
		ITEM_UPGRADE_PATHFINDER_BUCKLER_3 = 8267,
		ITEM_UPGRADE_SENTINEL_NOVABLASTER_1 = 7936,
		ITEM_UPGRADE_SENTINEL_NOVABLASTER_2 = 7937,
		ITEM_UPGRADE_SENTINEL_NOVABLASTER_3 = 7938,
		ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_1 = 7939,
		ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_2 = 7940,
		ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_3 = 7941,
		ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_4 = 7942,
		ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_1 = 8258,
		ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_2 = 8259,
		ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_3 = 8260,
		ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_4 = 8261,
		ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_1 = 7967,
		ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_2 = 7968,
		ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_3 = 7969,
		ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_1 = 8312,
		ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_2 = 8313,
		ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_3 = 8314,
		ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_4 = 8315,
		ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_1 = 7995,
		ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_2 = 7996,
		ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_3 = 7997,
		ITEM_UPGRADE_SOLDIER_THUMPERD_1 = 7989,
		ITEM_UPGRADE_SOLDIER_THUMPERD_2 = 7990,
		ITEM_UPGRADE_SOLDIER_THUMPERD_3 = 7991,
		ITEM_UPGRADE_SOLDIER_PLASMAGUN_1 = 8295,
		ITEM_UPGRADE_SOLDIER_PLASMAGUN_2 = 8296,
		ITEM_UPGRADE_SOLDIER_PLASMAGUN_3 = 8297,
		ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_1 = 8019,
		ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_2 = 8020,
		ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_3 = 8021,
		ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_1 = 8022,
		ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_2 = 8023,
		ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_3 = 8024,
		ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_1 = 8025,
		ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_2 = 8026,
		ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_3 = 8027,
		ITEM_UPGRADE_RAIDER_NJ4SMG_1 = 8048,
		ITEM_UPGRADE_RAIDER_NJ4SMG_2 = 8049,
		ITEM_UPGRADE_RAIDER_NJ4SMG_3 = 8050,
		ITEM_UPGRADE_RAIDER_NJ4SMG_4 = 8051,
		ITEM_UPGRADE_RAIDER_NJ5SMG_1 = 8289,
		ITEM_UPGRADE_RAIDER_NJ5SMG_2 = 8290,
		ITEM_UPGRADE_RAIDER_NJ5SMG_3 = 8291,
		ITEM_UPGRADE_RAIDER_NJ5SMG_4 = 8304,
		ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_1 = 8076,
		ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_2 = 8077,
		ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_3 = 8078,
		ITEM_UPGRADE_JUGGERNAUT_LMG_1 = 8079,
		ITEM_UPGRADE_JUGGERNAUT_LMG_2 = 8080,
		ITEM_UPGRADE_JUGGERNAUT_LMG_3 = 8081,
		ITEM_UPGRADE_JUGGERNAUT_LMG_4 = 8082,
		ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_1 = 8107,
		ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_2 = 8108,
		ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_3 = 8109,
		ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_1 = 8301,
		ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_2 = 8302,
		ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_3 = 8303,
		ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_1 = 8127,
		ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_2 = 8128,
		ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_3 = 8129,
		ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_4 = 8130,
		ITEM_UPGRADE_BRUTE_NOVACOLT_1 = 8131,
		ITEM_UPGRADE_BRUTE_NOVACOLT_2 = 8132,
		ITEM_UPGRADE_BRUTE_NOVACOLT_3 = 8133,
		ITEM_UPGRADE_BRUTE_NOVACOLT_4 = 8134,
		ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_1 = 7881,
		ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_2 = 7882,
		ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_3 = 7883,
		ITEM_UPGRADE_PATHFINDER_GRENADE_ST_1 = 7888,
		ITEM_UPGRADE_PATHFINDER_GRENADE_ST_2 = 7889,
		ITEM_UPGRADE_PATHFINDER_GRENADE_ST_3 = 7890,
		ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_1 = 8274,
		ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_2 = 8275,
		ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_3 = 8276,
		ITEM_UPGRADE_SENTINEL_CLAYMORE_1 = 7943,
		ITEM_UPGRADE_SENTINEL_CLAYMORE_2 = 7944,
		ITEM_UPGRADE_SENTINEL_CLAYMORE_3 = 7945,
		ITEM_UPGRADE_SENTINEL_GRENADEXL_1 = 7946,
		ITEM_UPGRADE_SENTINEL_GRENADEXL_2 = 7947,
		ITEM_UPGRADE_SENTINEL_GRENADEXL_3 = 7948,
		ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_1 = 8262,
		ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_2 = 8263,
		ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_3 = 8264,
		ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_1 = 7970,
		ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_2 = 7971,
		ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_3 = 7972,
		ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_4 = 7973,
		ITEM_UPGRADE_INFILTRATOR_PRISMMINES_1 = 7974,
		ITEM_UPGRADE_INFILTRATOR_PRISMMINES_2 = 7975,
		ITEM_UPGRADE_INFILTRATOR_PRISMMINES_3 = 7976,
		ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_1 = 8286,
		ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_2 = 8287,
		ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_3 = 8288,
		ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_1 = 7998,
		ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_2 = 7999,
		ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_3 = 8000,
		ITEM_UPGRADE_SOLDIER_APGRENADE_1 = 8001,
		ITEM_UPGRADE_SOLDIER_APGRENADE_2 = 8002,
		ITEM_UPGRADE_SOLDIER_APGRENADE_3 = 8003,
		ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_1 = 8227,
		ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_2 = 8228,
		ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_3 = 8229,
		ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_1 = 8028,
		ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_2 = 8029,
		ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_3 = 8030,
		ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_1 = 8031,
		ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_2 = 8032,
		ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_3 = 8033,
		ITEM_UPGRADE_RAIDER_EMPGRENADE_1 = 8052,
		ITEM_UPGRADE_RAIDER_EMPGRENADE_2 = 8053,
		ITEM_UPGRADE_RAIDER_EMPGRENADE_3 = 8054,
		ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_1 = 8055,
		ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_2 = 8056,
		ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_3 = 8057,
		ITEM_UPGRADE_RAIDER_MIRVGRENADE_1 = 8283,
		ITEM_UPGRADE_RAIDER_MIRVGRENADE_2 = 8284,
		ITEM_UPGRADE_RAIDER_MIRVGRENADE_3 = 8285,
		ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_1 = 8083,
		ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_2 = 8084,
		ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_3 = 8085,
		ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_1 = 8086,
		ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_2 = 8087,
		ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_3 = 8088,
		ITEM_UPGRADE_DOOMBRINGER_GRENADE_1 = 8110,
		ITEM_UPGRADE_DOOMBRINGER_GRENADE_2 = 8111,
		ITEM_UPGRADE_DOOMBRINGER_GRENADE_3 = 8112,
		ITEM_UPGRADE_DOOMBRINGER_MINES_1 = 8113,
		ITEM_UPGRADE_DOOMBRINGER_MINES_2 = 8114,
		ITEM_UPGRADE_DOOMBRINGER_MINES_3 = 8115,
		ITEM_UPGRADE_BRUTE_FRACTALGRENADE_1 = 8135,
		ITEM_UPGRADE_BRUTE_FRACTALGRENADE_2 = 8136,
		ITEM_UPGRADE_BRUTE_FRACTALGRENADE_3 = 8137,
		ITEM_UPGRADE_BRUTE_STICKYGRENADE_1 = 8138,
		ITEM_UPGRADE_BRUTE_STICKYGRENADE_2 = 8139,
		ITEM_UPGRADE_BRUTE_STICKYGRENADE_3 = 8140,
		ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_1 = 7871,
		ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_2 = 7872,
		ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_3 = 7873,
		ITEM_UPGRADE_PATHFINDER_JUMPPACK_1 = 7876,
		ITEM_UPGRADE_PATHFINDER_JUMPPACK_2 = 7877,
		ITEM_UPGRADE_PATHFINDER_JUMPPACK_3 = 7878,
		ITEM_UPGRADE_SENTINEL_DROPJAMMER_1 = 7949,
		ITEM_UPGRADE_SENTINEL_DROPJAMMER_2 = 7950,
		ITEM_UPGRADE_SENTINEL_DROPJAMMER_3 = 7951,
		ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_1 = 7952,
		ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_2 = 7953,
		ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_3 = 7954,
		ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_1 = 7977,
		ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_2 = 7978,
		ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_3 = 7979,
		ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_1 = 8271,
		ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_2 = 8272,
		ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_3 = 8273,
		ITEM_UPGRADE_SOLDIER_ENERGYPACK_1 = 8004,
		ITEM_UPGRADE_SOLDIER_ENERGYPACK_2 = 8005,
		ITEM_UPGRADE_SOLDIER_ENERGYPACK_3 = 8006,
		ITEM_UPGRADE_SOLDIER_UTILITYPACK_1 = 8224,
		ITEM_UPGRADE_SOLDIER_UTILITYPACK_2 = 8225,
		ITEM_UPGRADE_SOLDIER_UTILITYPACK_3 = 8226,
		ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_1 = 8034,
		ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_2 = 8035,
		ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_3 = 8036,
		ITEM_UPGRADE_TECHNICIAN_EXRTURRET_1 = 8268,
		ITEM_UPGRADE_TECHNICIAN_EXRTURRET_2 = 8269,
		ITEM_UPGRADE_TECHNICIAN_EXRTURRET_3 = 8270,
		ITEM_UPGRADE_RAIDER_SHIELDPACK_1 = 8058,
		ITEM_UPGRADE_RAIDER_SHIELDPACK_2 = 8059,
		ITEM_UPGRADE_RAIDER_SHIELDPACK_3 = 8060,
		ITEM_UPGRADE_RAIDER_JAMMERPACK_1 = 8061,
		ITEM_UPGRADE_RAIDER_JAMMERPACK_2 = 8062,
		ITEM_UPGRADE_RAIDER_JAMMERPACK_3 = 8063,
		ITEM_UPGRADE_RAIDER_JAMMERPACK_4 = 8064,
		ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_1 = 8089,
		ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_2 = 8090,
		ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_3 = 8091,
		ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_1 = 8092,
		ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_2 = 8093,
		ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_3 = 8094,
		ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_1 = 8309,
		ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_2 = 8310,
		ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_3 = 8311,
		ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_1 = 8116,
		ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_2 = 8117,
		ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_3 = 8118,
		ITEM_UPGRADE_BRUTE_ENERGYPACK_1 = 8141,
		ITEM_UPGRADE_BRUTE_ENERGYPACK_2 = 8142,
		ITEM_UPGRADE_BRUTE_ENERGYPACK_3 = 8143,
		ITEM_UPGRADE_BRUTE_SHIELDPACK_1 = 8144,
		ITEM_UPGRADE_BRUTE_SHIELDPACK_2 = 8145,
		ITEM_UPGRADE_BRUTE_SHIELDPACK_3 = 8146,
		ITEM_UPGRADE_PATHFINDER_ARMOR_1 = 7893,
		ITEM_UPGRADE_PATHFINDER_ARMOR_2 = 7894,
		ITEM_UPGRADE_PATHFINDER_ARMOR_3 = 7895,
		ITEM_UPGRADE_PATHFINDER_ARMOR_4 = 7896,
		ITEM_UPGRADE_PATHFINDER_ARMOR_5 = 7897,
		ITEM_UPGRADE_SENTINEL_ARMOR_1 = 7955,
		ITEM_UPGRADE_SENTINEL_ARMOR_2 = 7956,
		ITEM_UPGRADE_SENTINEL_ARMOR_3 = 7957,
		ITEM_UPGRADE_SENTINEL_ARMOR_4 = 7958,
		ITEM_UPGRADE_SENTINEL_ARMOR_5 = 7959,
		ITEM_UPGRADE_INFILTRATOR_ARMOR_1 = 7980,
		ITEM_UPGRADE_INFILTRATOR_ARMOR_2 = 7981,
		ITEM_UPGRADE_INFILTRATOR_ARMOR_3 = 7982,
		ITEM_UPGRADE_INFILTRATOR_ARMOR_4 = 7983,
		ITEM_UPGRADE_INFILTRATOR_ARMOR_5 = 7984,
		ITEM_UPGRADE_SOLDIER_ARMOR_1 = 8007,
		ITEM_UPGRADE_SOLDIER_ARMOR_2 = 8008,
		ITEM_UPGRADE_SOLDIER_ARMOR_3 = 8009,
		ITEM_UPGRADE_SOLDIER_ARMOR_4 = 8010,
		ITEM_UPGRADE_SOLDIER_ARMOR_5 = 8011,
		ITEM_UPGRADE_TECHNICIAN_ARMOR_1 = 8037,
		ITEM_UPGRADE_TECHNICIAN_ARMOR_2 = 8038,
		ITEM_UPGRADE_TECHNICIAN_ARMOR_3 = 8039,
		ITEM_UPGRADE_TECHNICIAN_ARMOR_4 = 8040,
		ITEM_UPGRADE_TECHNICIAN_ARMOR_5 = 8041,
		ITEM_UPGRADE_RAIDER_ARMOR_1 = 8065,
		ITEM_UPGRADE_RAIDER_ARMOR_2 = 8066,
		ITEM_UPGRADE_RAIDER_ARMOR_3 = 8067,
		ITEM_UPGRADE_RAIDER_ARMOR_4 = 8068,
		ITEM_UPGRADE_RAIDER_ARMOR_5 = 8069,
		ITEM_UPGRADE_JUGGERNAUT_ARMOR_1 = 8095,
		ITEM_UPGRADE_JUGGERNAUT_ARMOR_2 = 8096,
		ITEM_UPGRADE_JUGGERNAUT_ARMOR_3 = 8097,
		ITEM_UPGRADE_JUGGERNAUT_ARMOR_4 = 8098,
		ITEM_UPGRADE_JUGGERNAUT_ARMOR_5 = 8099,
		ITEM_UPGRADE_DOOMBRINGER_ARMOR_1 = 8119,
		ITEM_UPGRADE_DOOMBRINGER_ARMOR_2 = 8120,
		ITEM_UPGRADE_DOOMBRINGER_ARMOR_3 = 8121,
		ITEM_UPGRADE_DOOMBRINGER_ARMOR_4 = 8122,
		ITEM_UPGRADE_DOOMBRINGER_ARMOR_5 = 8123,
		ITEM_UPGRADE_BRUTE_ARMOR_1 = 8147,
		ITEM_UPGRADE_BRUTE_ARMOR_2 = 8148,
		ITEM_UPGRADE_BRUTE_ARMOR_3 = 8149,
		ITEM_UPGRADE_BRUTE_ARMOR_4 = 8150,
		ITEM_UPGRADE_BRUTE_ARMOR_5 = 8151,
		ITEM_PERK_UPGRADE_BOUNTYHUNTER_1 = 8188,
		ITEM_PERK_UPGRADE_BOUNTYHUNTER_2 = 8189,
		ITEM_PERK_UPGRADE_BOUNTYHUNTER_3 = 8190,
		ITEM_PERK_UPGRADE_CLOSECOMBAT_1 = 8194,
		ITEM_PERK_UPGRADE_CLOSECOMBAT_2 = 8195,
		ITEM_PERK_UPGRADE_CLOSECOMBAT_3 = 8196,
		ITEM_PERK_UPGRADE_EGOCENTRIC_1 = 8173,
		ITEM_PERK_UPGRADE_EGOCENTRIC_2 = 8174,
		ITEM_PERK_UPGRADE_EGOCENTRIC_3 = 8175,
		ITEM_PERK_UPGRADE_LOOTER_1 = 8185,
		ITEM_PERK_UPGRADE_LOOTER_2 = 8186,
		ITEM_PERK_UPGRADE_LOOTER_3 = 8187,
		ITEM_PERK_UPGRADE_MECHANIC_1 = 8215,
		ITEM_PERK_UPGRADE_MECHANIC_2 = 8216,
		ITEM_PERK_UPGRADE_MECHANIC_3 = 8217,
		ITEM_PERK_UPGRADE_PILOT_1 = 8179,
		ITEM_PERK_UPGRADE_PILOT_2 = 8180,
		ITEM_PERK_UPGRADE_PILOT_3 = 8181,
		ITEM_PERK_UPGRADE_POTENTIALENERGY_1 = 8200,
		ITEM_PERK_UPGRADE_POTENTIALENERGY_2 = 8201,
		ITEM_PERK_UPGRADE_POTENTIALENERGY_3 = 8202,
		ITEM_PERK_UPGRADE_QUICKDRAW_1 = 8209,
		ITEM_PERK_UPGRADE_QUICKDRAW_2 = 8210,
		ITEM_PERK_UPGRADE_QUICKDRAW_3 = 8211,
		ITEM_PERK_UPGRADE_REACH_1 = 8152,
		ITEM_PERK_UPGRADE_REACH_2 = 8171,
		ITEM_PERK_UPGRADE_REACH_3 = 8172,
		ITEM_PERK_UPGRADE_SAFEFALL_1 = 8176,
		ITEM_PERK_UPGRADE_SAFEFALL_2 = 8177,
		ITEM_PERK_UPGRADE_SAFEFALL_3 = 8178,
		ITEM_PERK_UPGRADE_SAFETYTHIRD_1 = 8212,
		ITEM_PERK_UPGRADE_SAFETYTHIRD_2 = 8213,
		ITEM_PERK_UPGRADE_SAFETYTHIRD_3 = 8214,
		ITEM_PERK_UPGRADE_STEALTHY_1 = 8206,
		ITEM_PERK_UPGRADE_STEALTHY_2 = 8207,
		ITEM_PERK_UPGRADE_STEALTHY_3 = 8208,
		ITEM_PERK_UPGRADE_SUPERHEAVY_1 = 8197,
		ITEM_PERK_UPGRADE_SUPERHEAVY_2 = 8198,
		ITEM_PERK_UPGRADE_SUPERHEAVY_3 = 8199,
		ITEM_PERK_UPGRADE_SURVIVALIST_1 = 8191,
		ITEM_PERK_UPGRADE_SURVIVALIST_2 = 8192,
		ITEM_PERK_UPGRADE_SURVIVALIST_3 = 8193,
		ITEM_PERK_UPGRADE_ULTRACAPACITOR_1 = 8203,
		ITEM_PERK_UPGRADE_ULTRACAPACITOR_2 = 8204,
		ITEM_PERK_UPGRADE_ULTRACAPACITOR_3 = 8205,
		ITEM_PERK_UPGRADE_WHEELDEAL_1 = 8182,
		ITEM_PERK_UPGRADE_WHEELDEAL_2 = 8183,
		ITEM_PERK_UPGRADE_WHEELDEAL_3 = 8184,
		ITEM_PERK_UPGRADE_RAGE_1 = 8236,
		ITEM_PERK_UPGRADE_RAGE_2 = 8237,
		ITEM_PERK_UPGRADE_RAGE_3 = 8238,
		ITEM_PERK_UPGRADE_SONICPUNCH_1 = 8233,
		ITEM_PERK_UPGRADE_SONICPUNCH_2 = 8234,
		ITEM_PERK_UPGRADE_SONICPUNCH_3 = 8235,
		ITEM_UPGRADE_TEMP = 99999,
		SHOP_VENDOR_GOLD = 507,
		SHOP_VENDOR_BUNDLES = 518,
		SHOP_VENDOR_BOOSTERS = 508,
		SHOP_VENDOR_NAMECHANGE = 512,
		SHOP_VENDOR_CLANTAG = 545,
		SKIN_INFILTRATOR_BE = 6,
		SKIN_INFILTRATOR_DS = 7,
		SKIN_SENTINEL_BE = 8,
		SKIN_SENTINEL_DS = 9,
		SKIN_RAIDER_BE = 10,
		SKIN_RAIDER_DS = 11,
		SKIN_TECHNICIAN_BE = 12,
		SKIN_TECHNICIAN_DS = 13,
		SKIN_DOOMBRINGER_BE = 14,
		SKIN_DOOMBRINGER_DS = 15,
		SKIN_JUGGERNAUT_BE = 16,
		SKIN_JUGGERNAUT_DS = 17,
		SKIN_BRUTE_BE = 18,
		SKIN_BRUTE_DS = 19,
		SKIN_SOLDIER_BE = 20,
		SKIN_SOLDIER_DS = 21,
		SKIN_PATHFINDER_BE = 22,
		SKIN_PATHFINDER_DS = 23,
		SKIN_PATHFINDER_MC = 24,
		SKIN_INFILTRATOR_AS = 25,
		SKIN_INFILTRATOR_MC = 26,
		SKIN_RAIDER_GV = 25,
		SKIN_RAIDER_MC = 26,
		SKIN_SENTINEL_MC = 27,
		SKIN_BRUTE_MC = 28,
		SKIN_TECHNICIAN_MC = 29,
		QUEUE_CONFIG_SERVERNAME = 1243,
		QUEUE_CONFIG_ADMINPASSWORD = 1245,
		QUEUE_CONFIG_GENPASSWORD = 1246,
		QUEUE_CONFIG_SLOTS = 1247,
		QUEUE_CONFIG_MATCHQUEUEID = 1253,
		QUEUE_CONFIG_SERVERDESCRIPTION = 1255,
		QUEUE_CONFIG_MAPROTATIONTYPE = 1256,
		QUEUE_CONFIG_MAPSLOT1 = 1257,
		QUEUE_CONFIG_MAPSLOT2 = 1258,
		QUEUE_CONFIG_MAPSLOT3 = 1259,
		QUEUE_CONFIG_MAPSLOT4 = 1260,
		QUEUE_CONFIG_MAPSLOT5 = 1261,
		QUEUE_CONFIG_MAPSLOT6 = 1262,
		QUEUE_CONFIG_MAPSLOT7 = 1263,
		QUEUE_CONFIG_MAPSLOT8 = 1264,
		QUEUE_CONFIG_SITEID = 1272,
		QUEUE_CONFIG_MINLEVEL = 1296,
		QUEUE_CONFIG_MAXLEVEL = 1297,
		GAME_CONFIG_TIMELIMIT = 1059,
		GAME_CONFIG_MAXPLAYERS = 1060,
		GAME_CONFIG_AUTOBALANCE = 1062,
		GAME_CONFIG_OVERTIMELIMIT = 1063,
		GAME_CONFIG_RESPAWNTIME = 1064,
		GAME_CONFIG_FRIENDLYFIRE = 1065,
		GAME_CONFIG_GENAUTOREGEN = 1066,
		GAME_CONFIG_UPGRADES = 1067,
		GAME_CONFIG_SPAWNNAKED = 1068,
		GAME_CONFIG_BASEASSETS = 1070,
		GAME_CONFIG_POWERDEPLOYS = 1072,
		GAME_CONFIG_VEHICLELIMITS = 1075,
		GAME_CONFIG_VGRAVCYCLELIMIT = 1268,
		GAME_CONFIG_VBEOWULFLIMIT = 1269,
		GAME_CONFIG_VSHRIKELIMIT = 1270,
		GAME_CONFIG_VBEOWULFPRICE = 1076,
		GAME_CONFIG_VGRAVPRICE = 1077,
		GAME_CONFIG_VSHRIKEPRICE = 1080,
		GAME_CONFIG_TEAMJOINTYPE = 1081,
		GAME_CONFIG_FFMULTIPLIER = 1123,
		GAME_CONFIG_CALLINSDENIED = 1233,
		GAME_CONFIG_CALLINPRICETAC = 1234,
		GAME_CONFIG_CALLINPRICESUP = 1235,
		GAME_CONFIG_CALLINPRICEORB = 1236,
		GAME_CONFIG_CALLINCLDWNTAC = 1237,
		GAME_CONFIG_CALLINCLDWNSUP = 1238,
		GAME_CONFIG_CALLINCLDWNORB = 1239,
		GAME_CONFIG_CALLINBLDUPTAC = 1249,
		GAME_CONFIG_CALLINBLDUPSUP = 1250,
		GAME_CONFIG_CALLINBLDUPORB = 1251,
		GAME_CONFIG_BASEDESTLIMIT = 1241,
		GAME_CONFIG_WARMUPTIME = 1248,
		GAME_CONFIG_TEAMDISPARITY = 1252,
		GAME_CONFIG_CONFIGCASEID = 1254,
		GAME_CONFIG_ARENAROUNDS = 1265,
		GAME_CONFIG_SCORELIMIT_CTF = 1061,
		GAME_CONFIG_SCORELIMIT_RAB = 1278,
		GAME_CONFIG_SCORELIMIT_TDM = 1276,
		GAME_CONFIG_SCORELIMIT_ARN = 1277,
		GAME_CONFIG_SCORELIMIT_CAH = 1279,
		GAME_CONFIG_GAMETYPE = 1244,
		GAME_CONFIG_GENDESTROYABLE = 1280,
		GAME_CONFIG_INVDESTROYABLE = 1281,
		GAME_CONFIG_FFDEPLOYABLES = 1282,
		GAME_CONFIG_FFBASEASSETS = 1283,
		GAME_CONFIG_FFDMGLIMIT = 1284,
		GAME_CONFIG_FFKILLLIMIT = 1285,
		GAME_CONFIG_SUPPLYDROPAMMOONLY = 1286,
		GAME_CONFIG_CLASSCOUNT_PTH = 1287,
		GAME_CONFIG_CLASSCOUNT_SEN = 1289,
		GAME_CONFIG_CLASSCOUNT_INF = 1288,
		GAME_CONFIG_CLASSCOUNT_SLD = 1290,
		GAME_CONFIG_CLASSCOUNT_TCN = 1291,
		GAME_CONFIG_CLASSCOUNT_RDR = 1292,
		GAME_CONFIG_CLASSCOUNT_JUG = 1293,
		GAME_CONFIG_CLASSCOUNT_DMB = 1294,
		GAME_CONFIG_CLASSCOUNT_BRT = 1295,
		GAME_CONFIG_POWEREDCALLINS = 1298,
		GAME_CONFIG_TEAMCREDITS = 1299,
		GAME_CONFIG_VEHICLEHEALTHMULT = 1327,
		GAME_CONFIG_SKIENABLED = 1373,
		GAME_CONFIG_ENERGYMULTIPLIER = 1374,
		GAME_CONFIG_AOESIZEMULTIPLIER = 1375,
		GAME_CONFIG_AOEDAMAGEMULTIPLIER = 1376,
		GAME_CONFIG_CTFBLITZALLFLAGSMOVE = 1377,
		GAME_CONFIG_MAXSPEEDWITHFLAGLIGHT = 1391,
		GAME_CONFIG_DECELERATIONRATEWITHFLAG = 1392,
		GAME_CONFIG_MAXSPEEDWITHFLAGMEDIUM = 1395,
		GAME_CONFIG_MAXSPEEDWITHFLAGHEAVY = 1396,
		SERVER_RT_METHOD_RANDOM = 10070,
		SERVER_RT_METHOD_LINEAR = 10071,
		SERVER_RT_METHOD_LINEAR2 = 10072,
		SERVER_RT_METHOD_LINEAR4 = 10073,
		TR_MAX_GAMETYPES = 5,
		SERVER_GAMECLASSID_CTF = 197,
		SERVER_GAMECLASSID_RAB = 8012,
		SERVER_GAMECLASSID_TDM = 8036,
		SERVER_GAMECLASSID_ARN = 8086,
		SERVER_GAMECLASSID_CAH = 8094,
		SERVER_GAMECLASSID_BTZ = 8118,
		SERVER_DEFAULT_MAP_CTF = 1462,
		SERVER_DEFAULT_MAP_RAB = 1465,
		SERVER_DEFAULT_MAP_TDM = 1488,
		SERVER_DEFAULT_MAP_ARN = 1495,
		SERVER_DEFAULT_MAP_CAH = 1519,
		SERVER_DEFAULT_MAP_BTZ = 1539,
		PTH_LOADOUT_ONE = 8359,
		PTH_LOADOUT_TWO = 8360,
		PTH_LOADOUT_THREE = 8361,
		PTH_LOADOUT_FOUR = 8674,
		PTH_LOADOUT_FIVE = 8675,
		INF_LOADOUT_ONE = 8362,
		INF_LOADOUT_TWO = 8363,
		INF_LOADOUT_THREE = 8364,
		INF_LOADOUT_FOUR = 8676,
		INF_LOADOUT_FIVE = 8677,
		SEN_LOADOUT_ONE = 8365,
		SEN_LOADOUT_TWO = 8366,
		SEN_LOADOUT_THREE = 8367,
		SEN_LOADOUT_FOUR = 8678,
		SEN_LOADOUT_FIVE = 8679,
		SLD_LOADOUT_ONE = 8368,
		SLD_LOADOUT_TWO = 8369,
		SLD_LOADOUT_THREE = 8370,
		SLD_LOADOUT_FOUR = 8680,
		SLD_LOADOUT_FIVE = 8681,
		TCN_LOADOUT_ONE = 8371,
		TCN_LOADOUT_TWO = 8372,
		TCN_LOADOUT_THREE = 8373,
		TCN_LOADOUT_FOUR = 8682,
		TCN_LOADOUT_FIVE = 8683,
		RDR_LOADOUT_ONE = 8374,
		RDR_LOADOUT_TWO = 8375,
		RDR_LOADOUT_THREE = 8376,
		RDR_LOADOUT_FOUR = 8684,
		RDR_LOADOUT_FIVE = 8685,
		JUG_LOADOUT_ONE = 8377,
		JUG_LOADOUT_TWO = 8378,
		JUG_LOADOUT_THREE = 8379,
		JUG_LOADOUT_FOUR = 8686,
		JUG_LOADOUT_FIVE = 8687,
		DMB_LOADOUT_ONE = 8380,
		DMB_LOADOUT_TWO = 8381,
		DMB_LOADOUT_THREE = 8382,
		DMB_LOADOUT_FOUR = 8688,
		DMB_LOADOUT_FIVE = 8689,
		BRT_LOADOUT_ONE = 8383,
		BRT_LOADOUT_TWO = 8384,
		BRT_LOADOUT_THREE = 8385,
		BRT_LOADOUT_FOUR = 8690,
		BRT_LOADOUT_FIVE = 8691,
		ACTIVITY_DEVICE_NONE = 0,
		ACTIVITY_SENTINEL_PRIMARY_BXT1 = 124,
		ACTIVITY_SENTINEL_BELT_MINE_CLAYMORE_MKD = 125,
		ACTIVITY_SENTINEL_PRIMARY_SNIPERRIFLE_MKD = 126,
		ACTIVITY_BRUTE_PRIMARY_HEAVYSPINFUSOR = 127,
		ACTIVITY_BRUTE_PRIMARY_HEAVYSPINFUSOR_MKD = 128,
		ACTIVITY_BRUTE_PRIMARY_SPIKELAUNCHER = 129,
		ACTIVITY_DOOMBRINGER_PRIMARY_CHAINGUN = 131,
		ACTIVITY_DOOMBRINGER_PRIMARY_CHAINGUN_MKD = 132,
		ACTIVITY_DOOMBRINGER_PRIMARY_HEAVYBOLTLAUNCHER = 133,
		ACTIVITY_INFILTRATOR_PRIMARY_REMOTEARXBUSTER = 134,
		ACTIVITY_INFILTRATOR_PRIMARY_RHINOSMG = 135,
		ACTIVITY_INFILTRATOR_PRIMARY_RHINOSMG_MKD = 136,
		ACTIVITY_INFILTRATOR_PRIMARY_STEALTHLIGHTSPINFUSOR = 137,
		ACTIVITY_JUGGERNAUT_PRIMARY_FUSIONMORTAR = 138,
		ACTIVITY_JUGGERNAUT_PRIMARY_FUSIONMORTAR_MKD = 139,
		ACTIVITY_JUGGERNAUT_PRIMARY_MIRVLAUNCHER = 140,
		ACTIVITY_PATHFINDER_PRIMARY_BOLTLAUNCHER = 141,
		ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR = 142,
		ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR_MKD = 143,
		ACTIVITY_RAIDER_PRIMARY_ARXBUSTER = 144,
		ACTIVITY_RAIDER_PRIMARY_ARXBUSTER_MKD = 145,
		ACTIVITY_RAIDER_PRIMARY_GRENADELAUNCHER = 146,
		ACTIVITY_RAIDER_PRIMARY_PLASMAGUN = 147,
		ACTIVITY_SENTINEL_PRIMARY_PHASERIFLE = 148,
		ACTIVITY_SOLDIER_PRIMARY_ASSAULTRIFLE = 149,
		ACTIVITY_SOLDIER_PRIMARY_ASSAULTRIFLE_MKD = 150,
		ACTIVITY_SOLDIER_PRIMARY_SPINFUSOR = 151,
		ACTIVITY_TECHNICIAN_PRIMARY_TCN4 = 152,
		ACTIVITY_TECHNICIAN_PRIMARY_TCN4_MKD = 153,
		ACTIVITY_TECHNICIAN_PRIMARY_THUMPER = 154,
		ACTIVITY_BRUTE_SECONDARY_AUTOSHOTGUN = 155,
		ACTIVITY_BRUTE_SECONDARY_AUTOSHOTGUN_MKD = 156,
		ACTIVITY_BRUTE_SECONDARY_NOVACOLT = 157,
		ACTIVITY_BRUTE_SECONDARY_PLASMACANNON = 158,
		ACTIVITY_DOOMBRINGER_SECONDARY_SABERLAUNCHER = 159,
		ACTIVITY_DOOMBRINGER_SECONDARY_SABERLAUNCHER_MKD = 160,
		ACTIVITY_INFILTRATOR_SECONDARY_SN7 = 161,
		ACTIVITY_INFILTRATOR_SECONDARY_SN7_MKD = 162,
		ACTIVITY_INFILTRATOR_SECONDARY_THROWINGKNIVES = 163,
		ACTIVITY_JUGGERNAUT_SECONDARY_SPINFUSORD = 164,
		ACTIVITY_JUGGERNAUT_SECONDARY_SPINFUSORD_MKD = 165,
		ACTIVITY_JUGGERNAUT_SECONDARY_X1LMG = 166,
		ACTIVITY_PATHFINDER_SECONDARY_LIGHTASSAULTRIFLE = 167,
		ACTIVITY_PATHFINDER_SECONDARY_SHOTGUN = 168,
		ACTIVITY_PATHFINDER_SECONDARY_SHOTGUN_MKD = 169,
		ACTIVITY_RAIDER_SECONDARY_NJ4SMG = 170,
		ACTIVITY_RAIDER_SECONDARY_NJ4SMG_MKD = 171,
		ACTIVITY_RAIDER_SECONDARY_NJ5SMG = 172,
		ACTIVITY_SENTINEL_SECONDARY_FALCON = 173,
		ACTIVITY_SENTINEL_SECONDARY_NOVABLASTER = 174,
		ACTIVITY_SENTINEL_SECONDARY_NOVABLASTER_MKD = 175,
		ACTIVITY_SOLDIER_SECONDARY_EAGLE = 176,
		ACTIVITY_SOLDIER_SECONDARY_THUMPERD = 177,
		ACTIVITY_SOLDIER_SECONDARY_THUMPERD_MKD = 178,
		ACTIVITY_TECHNICIAN_SECONDARY_REPAIRTOOLSD = 179,
		ACTIVITY_TECHNICIAN_SECONDARY_REPAIRTOOLSD_MKD = 180,
		ACTIVITY_TECHNICIAN_SECONDARY_SAWEDOFF = 181,
		ACTIVITY_TECHNICIAN_SECONDARY_SPARROW = 182,
		ACTIVITY_ARMOR_MOD_BRUTE_1 = 183,
		ACTIVITY_ARMOR_MOD_DOOMBRINGER_1 = 184,
		ACTIVITY_ARMOR_MOD_INFILTRATOR_1 = 185,
		ACTIVITY_ARMOR_MOD_JUGGERNAUT_1 = 186,
		ACTIVITY_ARMOR_MOD_PATHFINDER_1 = 187,
		ACTIVITY_ARMOR_MOD_RAIDER_1 = 188,
		ACTIVITY_ARMOR_MOD_SENTINEL_1 = 189,
		ACTIVITY_ARMOR_MOD_TECHNICIAN_1 = 190,
		ACTIVITY_ARMOR_MOD_SOLDIER_1 = 191,
		ACTIVITY_BRUTE_BELT_FRACTALGRENADE = 192,
		ACTIVITY_BRUTE_BELT_FRACTALGRENADE_MKD = 193,
		ACTIVITY_BRUTE_BELT_LIGHTSTICKYGRENADE = 194,
		ACTIVITY_DOOMBRINGER_BELT_MINE = 195,
		ACTIVITY_DOOMBRINGER_BELT_STANDARDGRENADE = 196,
		ACTIVITY_DOOMBRINGER_BELT_STANDARDGRENADE_MKD = 197,
		ACTIVITY_INFILTRATOR_BELT_NINJASMOKE = 198,
		ACTIVITY_INFILTRATOR_BELT_PRISMMINES = 199,
		ACTIVITY_INFILTRATOR_BELT_STICKYGRENADE = 200,
		ACTIVITY_INFILTRATOR_BELT_STICKYGRENADE_MKD = 201,
		ACTIVITY_JUGGERNAUT_BELT_DISKTOSS = 202,
		ACTIVITY_JUGGERNAUT_BELT_HEAVYAPGRENADE = 203,
		ACTIVITY_JUGGERNAUT_BELT_HEAVYAPGRENADE_MKD = 204,
		ACTIVITY_PATHFINDER_BELT_IMPACTNITRON = 205,
		ACTIVITY_PATHFINDER_BELT_IMPACTNITRON_MKD = 206,
		ACTIVITY_PATHFINDER_BELT_STGRENADE = 207,
		ACTIVITY_RAIDER_BELT_EMPGRENADE = 208,
		ACTIVITY_RAIDER_BELT_EMPGRENADE_MKD = 209,
		ACTIVITY_RAIDER_BELT_MIRVGRENADE = 210,
		ACTIVITY_RAIDER_BELT_WHITEOUT = 211,
		ACTIVITY_SENTINEL_BELT_ARMOREDCLAYMORE = 212,
		ACTIVITY_SENTINEL_BELT_CLAYMORE = 213,
		ACTIVITY_SENTINEL_BELT_CLAYMORE_MKD = 214,
		ACTIVITY_SENTINEL_BELT_GRENADET5 = 215,
		ACTIVITY_SOLDIER_BELT_APGRENADE = 216,
		ACTIVITY_SOLDIER_BELT_FRAGGRENADEXL = 217,
		ACTIVITY_SOLDIER_BELT_FRAGGRENADEXL_MKD = 218,
		ACTIVITY_SOLDIER_BELT_PROXIMITYGRENADE = 219,
		ACTIVITY_TECHNICIAN_BELT_MOTIONALARM = 220,
		ACTIVITY_TECHNICIAN_BELT_TCNG = 221,
		ACTIVITY_TECHNICIAN_BELT_TCNG_MKD = 222,
		ACTIVITY_BRUTE_PACK_HEAVYSHIELD = 223,
		ACTIVITY_BRUTE_PACK_MINORENERGY = 224,
		ACTIVITY_BRUTE_PACK_SURVIVALPACK = 225,
		ACTIVITY_DOOMBRINGER_PACK_FORCEFIELD = 226,
		ACTIVITY_INFILTRATOR_PACK_STEALTH = 227,
		ACTIVITY_JUGGERNAUT_PACK_HEALTHREGEN = 228,
		ACTIVITY_PATHFINDER_PACK_ENERGYRECHARGE = 229,
		ACTIVITY_PATHFINDER_PACK_JUMPPACK = 230,
		ACTIVITY_RAIDER_PACK_JAMMER = 231,
		ACTIVITY_RAIDER_PACK_SHIELD = 232,
		ACTIVITY_SENTINEL_PACK_DROPJAMMER = 233,
		ACTIVITY_SENTINEL_PACK_ENERGYRECHARGE = 234,
		ACTIVITY_SOLDIER_PACK_ENERGYPOOL = 235,
		ACTIVITY_SOLDIER_PACK_UTILITY = 236,
		ACTIVITY_TECHNICIAN_PACK_EXRTURRET = 237,
		ACTIVITY_TECHNICIAN_PACK_LIGHTTURRET = 238,
		ACTIVITY_PERK_BOUNTY_HUNTER = 239,
		ACTIVITY_PERK_CLOSE_COMBAT = 240,
		ACTIVITY_PERK_LOOTER = 241,
		ACTIVITY_PERK_RAGE = 242,
		ACTIVITY_PERK_REACH = 243,
		ACTIVITY_PERK_SAFE_FALL = 244,
		ACTIVITY_PERK_SAFETY_THIRD = 245,
		ACTIVITY_PERK_STEALTHY = 246,
		ACTIVITY_PERK_SUPER_CAPACITOR = 247,
		ACTIVITY_PERK_WHEEL_DEAL = 248,
		ACTIVITY_PERK_DETERMINATION = 249,
		ACTIVITY_PERK_EGOCENTRIC = 250,
		ACTIVITY_PERK_MECHANIC = 253,
		ACTIVITY_PERK_PILOT = 254,
		ACTIVITY_PERK_POTENTIAL_ENERGY = 255,
		ACTIVITY_PERK_QUICKDRAW = 256,
		ACTIVITY_PERK_SONIC_PUNCH = 257,
		ACTIVITY_PERK_SUPER_HEAVY = 258,
		ACTIVITY_PERK_SURVIVALIST = 259,
		ACTIVITY_PERK_ULTRA_CAPACITOR = 260,
		ACTIVITY_PATHFINDER_PRIMARY_LIGHTTWINFUSOR = 261,
		ACTIVITY_SOLDIER_PRIMARY_TWINFUSOR = 262,
		ACTIVITY_JUGGERNAUT_SECONDARY_HEAVYTWINFUSOR = 263,
		BUNDLE_LOOT_ID_CAD_ASSASSIN = 8918,
		BUNDLE_LOOT_ID_CAD_MERCENARY = 8919,
		BUNDLE_LOOT_ID_CAD_PREMIUM = 8912,
		BUNDLE_LOOT_ID_CAD_WEAPONS = 8920,
		BUNDLE_LOOT_ID_RAP_GRIEVER = 8982,
		BUNDLE_LOOT_ID_RAP_MERCENARY = 8983,
		BUNDLE_LOOT_ID_RAP_PREMIUM = 8981,
		BUNDLE_LOOT_ID_RAP_WEAPONS = 8984,
		BUNDLE_LOOT_ID_NEWPLAYER = 9214,
		BUNDLE_LOOT_ID_SHAZBUNDLE = 9213,
		BUNDLE_LOOT_ID_STAYINALIVE = 9035,
		BUNDLE_LOOT_ID_TWINFUSOR = 9449,
		BUNDLE_LOOT_ID_SKINPACK = 9457,
		BUNDLE_LOOT_ID_SPECIALIST = 9496,
		BUNDLE_LOOT_ID_SENTINEL = 9510,
		ITEM_VOICE_LIGHT = 8666,
		ITEM_VOICE_MEDIUM = 8667,
		ITEM_VOICE_HEAVY = 8668,
		ITEM_VOICE_DARK = 8669,
		ITEM_VOICE_FEM1 = 8670,
		ITEM_VOICE_FEM2 = 8671,
		ITEM_VOICE_AUS = 8695,
		ITEM_VOICE_T2FEM01 = 8712,
		ITEM_VOICE_T2FEM02 = 8714,
		ITEM_VOICE_T2FEM03 = 8715,
		ITEM_VOICE_T2FEM04 = 8716,
		ITEM_VOICE_T2FEM05 = 8717,
		ITEM_VOICE_T2MALE01 = 8719,
		ITEM_VOICE_T2MALE02 = 8720,
		ITEM_VOICE_T2MALE03 = 8721,
		ITEM_VOICE_T2MALE04 = 8722,
		ITEM_VOICE_T2MALE05 = 8723,
		ITEM_VOICE_T2BDERM01 = 8724,
		ITEM_VOICE_T2BDERM02 = 8725,
		ITEM_VOICE_T2BDERM03 = 8726,
		MAX_VGS_ENTRIES = 16,
	}
	struct TrTempMessage
	{
		private ubyte __buffer__[21];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.GfxTrHud.TrTempMessage")); }
		@property final
		{
			auto ref
			{
				TgSupportCommands.GC_ALERT_PRIORITY Priority() { return *cast(TgSupportCommands.GC_ALERT_PRIORITY*)(cast(size_t)&this + 20); }
				ScriptString Message() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
				float TakeDownTime() { return *cast(float*)(cast(size_t)&this + 4); }
			}
			bool bInUse() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bInUse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) m_aDamageEffectNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 3004); }
			GfxTrHud.TrTempMessage m_HeroStatusTempMessage() { return *cast(GfxTrHud.TrTempMessage*)(cast(size_t)cast(void*)this + 3068); }
			GfxTrHud.TrTempMessage m_PromptPanelTempMessage() { return *cast(GfxTrHud.TrTempMessage*)(cast(size_t)cast(void*)this + 3044); }
			ScriptString m_sRound() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3032); }
			GFxObject VGSMenuList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 3028); }
			GFxObject _global() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 3024); }
			MaterialInstanceConstant m_DirDamageMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3020); }
			MaterialEffect m_DirectionalDamageEffect() { return *cast(MaterialEffect*)(cast(size_t)cast(void*)this + 3016); }
			float m_fDirectionalDamageFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3000); }
			int m_nNearDeathHealthMax() { return *cast(int*)(cast(size_t)cast(void*)this + 2996); }
			GFxObject KillCamInfoObject() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2992); }
			GFxObject VGSMenuEntry() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2928); }
			GFxObject SpecHelp_LockViewTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2924); }
			GFxObject SpecHelp_ZoomOutTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2920); }
			GFxObject SpecHelp_ZoomInTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2916); }
			GFxObject SpecHelp_FreeCameraTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2912); }
			GFxObject SpecHelp_FastestPlayerTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2908); }
			GFxObject SpecHelp_ChangeVehiclesTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2904); }
			GFxObject SpecHelp_ChangeBookmarksTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2900); }
			GFxObject SpecHelp_ChangeFlagstandsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2896); }
			GFxObject SpecHelp_ChangeFlagsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2892); }
			GFxObject SpecHelp_ChangeGeneratorsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2888); }
			GFxObject SpecHelp_ChangePlayersTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2884); }
			GFxObject SpecHelp_DecreaseSpeedTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2880); }
			GFxObject SpecHelp_IncreaseSpeedTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2876); }
			GFxObject SpecHelp_StrafeRightTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2872); }
			GFxObject SpecHelp_StrafeLeftTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2868); }
			GFxObject SpecHelp_MoveBackTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2864); }
			GFxObject SpecHelp_MoveForwardTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2860); }
			GFxObject SpecHelp_MoveDownTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2856); }
			GFxObject SpecHelp_MoveUpTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2852); }
			GFxObject SpecHelp_ObjKaratsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2848); }
			GFxObject SpecHelp_SpecHudTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2844); }
			GFxObject SpecHelp_MainmenuTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2840); }
			GFxObject SpecHelp_ScoreboardTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2836); }
			GFxObject SpecHelp_TeamSelectTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2832); }
			GFxObject SpecHelp_HelpTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2828); }
			GFxObject SpecFloat_DescriptionTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2824); }
			GFxObject SpecFloat_FloatCameraNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2820); }
			GFxObject SpecObjective_HealthTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2816); }
			GFxObject SpecObjective_HealthFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2812); }
			GFxObject SpecObjective_DescriptionTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2808); }
			GFxObject SpecObjective_ObjectiveNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2804); }
			GFxObject SpecBookmark_DescriptionTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2800); }
			GFxObject SpecBookmark_BookmarkNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2796); }
			GFxObject SpecVehicle_SkiIndicator_fillBar_speedoTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2792); }
			GFxObject SpecVehicle_SkiIndicator_fillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2788); }
			GFxObject SpecVehicle_VehicleGroup_secondaryReady() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2784); }
			GFxObject SpecVehicle_SecondaryNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2780); }
			GFxObject SpecVehicle_VehicleGroup_primaryReady() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2776); }
			GFxObject SpecVehicle_PrimaryNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2772); }
			GFxObject SpecVehicle_EnergyTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2768); }
			GFxObject SpecVehicle_EnergyFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2764); }
			GFxObject SpecVehicle_HealthTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2760); }
			GFxObject SpecVehicle_HealthFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2756); }
			GFxObject SpecVehicle_PassengerNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2752); }
			GFxObject SpecVehicle_DriverNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2748); }
			GFxObject SpecVehicle_VehicleNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2744); }
			GFxObject SpecVehicle_FlagCarried() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2740); }
			GFxObject SpecPlayer_SkiIndicator_fillBar_speedoTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2736); }
			GFxObject SpecPlayer_SkiIndicator_fillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2732); }
			GFxObject SpecPlayer_Perk2TF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2728); }
			GFxObject SpecPlayer_PerkItem2() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2724); }
			GFxObject SpecPlayer_Perk1TF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2720); }
			GFxObject SpecPlayer_PerkItem1() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2716); }
			GFxObject SpecPlayer_PackNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2712); }
			GFxObject SpecPlayer_PackIcons_count() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2708); }
			GFxObject SpecPlayer_PackIcons_icon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2704); }
			GFxObject SpecPlayer_OffhandNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2700); }
			GFxObject SpecPlayer_OffhandIcons_count() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2696); }
			GFxObject SpecPlayer_OffhandIcons_icon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2692); }
			GFxObject SpecPlayer_SecondaryAmmoTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2688); }
			GFxObject SpecPlayer_SecondaryNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2684); }
			GFxObject SpecPlayer_PrimaryAmmoTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2680); }
			GFxObject SpecPlayer_PrimaryNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2676); }
			GFxObject SpecPlayer_EnergyTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2672); }
			GFxObject SpecPlayer_EnergyFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2668); }
			GFxObject SpecPlayer_HealthTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2664); }
			GFxObject SpecPlayer_HealthFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2660); }
			GFxObject SpecPlayer_RegenTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2656); }
			GFxObject SpecPlayer_ClassNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2652); }
			GFxObject SpecPlayer_PlayerNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2648); }
			GFxObject SpecPlayer_FlagCarried() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2644); }
			GFxObject SpecObjective() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2640); }
			GFxObject SpecBookmark() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2636); }
			GFxObject SpawnCounter() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2632); }
			GFxObject SpecVehicle() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2628); }
			GFxObject SpecPlayer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2624); }
			GFxObject SpecFloat() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2620); }
			GFxObject SpecHelp() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2616); }
			GFxObject VGS() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2612); }
			GFxObject NotificationPopup() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2608); }
			GFxObject DeployStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2584); }
			GFxObject GlobalAlertTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2580); }
			GFxObject Credits_And_Streaks_CallItem() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2568); }
			GFxObject PlayerStats_Offhand1_Count() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2564); }
			GFxObject PlayerStats_Offhand1_Icon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2560); }
			GFxObject PlayerStats_PackCount() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2556); }
			GFxObject PlayerStats_PackMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2552); }
			GFxObject PlayerStats_Pack() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2548); }
			GFxObject playerStats_Offhand1() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2544); }
			GFxObject VehicleStats_VehicleSlot() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2520); }
			GFxObject VehicleStats_VehicleEnergyFill() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2516); }
			GFxObject VehicleStats_EnergyTF_TextField() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2512); }
			GFxObject VehicleStats_VehicleHealthFill() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2508); }
			GFxObject VehicleStats_HealthTF_TextField() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2504); }
			GFxObject VehicleStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2500); }
			GFxObject TeamStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2496); }
			GFxObject Offhands_And_Flag_FlagInHand() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2492); }
			GFxObject Credits_And_Streaks_CreditsGroup_CreditsMC_CreditsN() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2488); }
			GFxObject RabbitScoreboard() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2484); }
			GFxObject TeamScoreBoard() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2480); }
			GFxObject ArenaStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2476); }
			GFxObject ArenaStats_EnemyScoreTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2472); }
			GFxObject ArenaStats_FriendlyScoreTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2468); }
			GFxObject ArenaStats_roundCountTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2464); }
			GFxObject ArenaStats_arenaGameTimerTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2460); }
			GFxObject ArenaStats_EnemyManGraphic08() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2456); }
			GFxObject ArenaStats_EnemyManGraphic07() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2452); }
			GFxObject ArenaStats_EnemyManGraphic06() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2448); }
			GFxObject ArenaStats_EnemyManGraphic05() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2444); }
			GFxObject ArenaStats_EnemyManGraphic04() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2440); }
			GFxObject ArenaStats_EnemyManGraphic03() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2436); }
			GFxObject ArenaStats_EnemyManGraphic02() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2432); }
			GFxObject ArenaStats_EnemyManGraphic01() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2428); }
			GFxObject ArenaStats_FriendlyManGraphic08() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2424); }
			GFxObject ArenaStats_FriendlyManGraphic07() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2420); }
			GFxObject ArenaStats_FriendlyManGraphic06() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2416); }
			GFxObject ArenaStats_FriendlyManGraphic05() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2412); }
			GFxObject ArenaStats_FriendlyManGraphic04() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2408); }
			GFxObject ArenaStats_FriendlyManGraphic03() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2404); }
			GFxObject ArenaStats_FriendlyManGraphic02() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2400); }
			GFxObject ArenaStats_FriendlyManGraphic01() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2396); }
			GFxObject CaHControlPointE() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2392); }
			GFxObject CaHControlPointD() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2388); }
			GFxObject CaHControlPointC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2384); }
			GFxObject CaHControlPointB() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2380); }
			GFxObject CaHControlPointA() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2376); }
			GFxObject CaHStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2372); }
			GFxObject DaDStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2368); }
			GFxObject TdmStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2364); }
			GFxObject TdmStats_gameTimer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2360); }
			GFxObject TdmStats_rightFlagStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2356); }
			GFxObject TdmStats_leftFlagStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2352); }
			GFxObject CTFStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2348); }
			GFxObject CTFStats_Timer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2344); }
			GFxObject CTFStats_RightScore() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2340); }
			GFxObject CTFStats_LeftScore() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2336); }
			GFxObject CTFStats_RightFlagTimer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2332); }
			GFxObject CTFStats_LeftFlagTimer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2328); }
			GFxObject CTFStats_RightFlagStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2324); }
			GFxObject CTFStats_LeftFlagStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2320); }
			GFxObject CTFStats_RightGenTimer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2316); }
			GFxObject CTFStats_LeftGenTimer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2312); }
			GFxObject CTFStats_RightGenStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2308); }
			GFxObject CTFStats_LeftGenStatus() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2304); }
			GFxObject RabbitStats_Timer() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2300); }
			GFxObject RabbitStats_LeaderScore() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2288); }
			GFxObject RabbitStats_LeaderText() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2276); }
			GFxObject RabbitStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2272); }
			GFxObject RabbitScoreboard_PlayerHighlight() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2240); }
			GFxObject RabbitScoreboard_RankIcon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2208); }
			GFxObject RabbitScoreboard_RankTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2176); }
			GFxObject RabbitScoreboard_ClassTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2144); }
			GFxObject RabbitScoreboard_PingTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2112); }
			GFxObject RabbitScoreboard_AssistsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2080); }
			GFxObject RabbitScoreboard_KillsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2048); }
			GFxObject RabbitScoreboard_ScoreT() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 2016); }
			GFxObject RabbitScoreboard_PlayerTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1984); }
			GFxObject TeamScoreboard_Blue_RankTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1920); }
			GFxObject TeamScoreboard_Blue_RankIcon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1856); }
			GFxObject TeamScoreboard_Blue_ClassTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1792); }
			GFxObject TeamScoreboard_Blue_PingTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1728); }
			GFxObject TeamScoreboard_Blue_AssistsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1664); }
			GFxObject TeamScoreboard_Blue_KillsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1600); }
			GFxObject TeamScoreboard_Blue_ScoreTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1536); }
			GFxObject TeamScoreboard_Blue_PlayerNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1472); }
			GFxObject TeamScoreboard_Red_RankTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1408); }
			GFxObject TeamScoreboard_Red_RankIcon() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1344); }
			GFxObject TeamScoreboard_Red_ClassTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1280); }
			GFxObject TeamScoreboard_Red_PingTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1216); }
			GFxObject TeamScoreboard_Red_AssistsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1152); }
			GFxObject TeamScoreboard_Red_KillsTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1088); }
			GFxObject TeamScoreboard_Red_ScoreTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 1024); }
			GFxObject TeamScoreboard_Red_PlayerNameTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 960); }
			GFxObject PlayerStats_EnergyFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 956); }
			GFxObject PlayerStats_GhostHealthBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 952); }
			GFxObject PlayerStats_HealthFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 948); }
			GFxObject SpawnCounter_TimeLabel() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 944); }
			GFxObject SpawnCounter_StatusMessage() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 940); }
			GFxObject CreditsAndStreaks_Streak() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 928); }
			GFxObject CreditsAndStreaks() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 924); }
			GFxObject SkiIndicatorFillBar() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 916); }
			GFxObject SkiIndicatorTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 908); }
			GFxObject SkiIndicator() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 900); }
			GFxObject CombatLog() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 896); }
			GFxObject KillMessageArea() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 892); }
			GFxObject KillCamInfo() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 888); }
			GFxObject PromptPanel() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 884); }
			GFxObject HeroStatus_outputTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 880); }
			GFxObject PlayerStats() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 876); }
			GFxObject Visor() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 860); }
			GFxDeviceAmmoCount deviceAmmoPoolMP() { return *cast(GFxDeviceAmmoCount*)(cast(size_t)cast(void*)this + 856); }
			GFxDeviceAmmoCount deviceAmmoCountMP() { return *cast(GFxDeviceAmmoCount*)(cast(size_t)cast(void*)this + 852); }
			GFxTrReticules Reticules() { return *cast(GFxTrReticules*)(cast(size_t)cast(void*)this + 848); }
			GFxObject sniperPowerUp() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 844); }
			TrDevice m_LastOffhand() { return *cast(TrDevice*)(cast(size_t)cast(void*)this + 832); }
			TeamInfo m_LastTeam() { return *cast(TeamInfo*)(cast(size_t)cast(void*)this + 828); }
			int m_nLastVehicleAmmoPool() { return *cast(int*)(cast(size_t)cast(void*)this + 824); }
			float m_fLastVehicleEnergy() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
			int m_nLastVehicleHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 816); }
			int m_nLastSeatMask() { return *cast(int*)(cast(size_t)cast(void*)this + 812); }
			float m_fSpeedometerUpdateInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 808); }
			int m_SkiSpeedSteps() { return *cast(int*)(cast(size_t)cast(void*)this + 760); }
			int m_VGSMenuListCount() { return *cast(int*)(cast(size_t)cast(void*)this + 756); }
			float m_fLastSpeedometerUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 752); }
			float m_fCurrentGhostHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 748); }
			float m_fLastActualHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
			float m_fLastMaxHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 740); }
			float m_fLastRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 736); }
			float m_fCrosshairDepth() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
			int m_nLastFriendlyGeneratorTime() { return *cast(int*)(cast(size_t)cast(void*)this + 724); }
			int m_nLastEnemyGeneratorTime() { return *cast(int*)(cast(size_t)cast(void*)this + 720); }
			int m_nLastOffhandCount() { return *cast(int*)(cast(size_t)cast(void*)this + 708); }
			int m_nLastPercentReload() { return *cast(int*)(cast(size_t)cast(void*)this + 704); }
			int m_nLastPercentLaser() { return *cast(int*)(cast(size_t)cast(void*)this + 700); }
			int m_nLastSkiSpeedStep() { return *cast(int*)(cast(size_t)cast(void*)this + 696); }
			int m_nStreakEvent() { return *cast(int*)(cast(size_t)cast(void*)this + 676); }
			int m_nCrossHairMode() { return *cast(int*)(cast(size_t)cast(void*)this + 672); }
			int m_nLastAmmoPool() { return *cast(int*)(cast(size_t)cast(void*)this + 668); }
			int m_nLastCredits() { return *cast(int*)(cast(size_t)cast(void*)this + 664); }
			int m_nLastPercent() { return *cast(int*)(cast(size_t)cast(void*)this + 660); }
			int m_HUDStageHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 656); }
			int m_HUDStageWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 652); }
			int m_HUDStageOriginY() { return *cast(int*)(cast(size_t)cast(void*)this + 648); }
			int m_HUDStageOriginX() { return *cast(int*)(cast(size_t)cast(void*)this + 644); }
			TrPlayerController m_TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 640); }
			TrHUD m_TrHUD() { return *cast(TrHUD*)(cast(size_t)cast(void*)this + 636); }
		}
		bool bVGSLoadouts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x200) != 0; }
		bool bVGSLoadouts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x200; } return val; }
		bool m_bNearDeathOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x100) != 0; }
		bool m_bNearDeathOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x100; } return val; }
		bool bShowingBadge() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x80) != 0; }
		bool bShowingBadge(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x80; } return val; }
		bool m_bLastIn3P() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x40) != 0; }
		bool m_bLastIn3P(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x40; } return val; }
		bool m_bShowingAmmoClip() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x20) != 0; }
		bool m_bShowingAmmoClip(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x20; } return val; }
		bool m_bLastInVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x10) != 0; }
		bool m_bLastInVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x10; } return val; }
		bool m_bGameOver() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x8) != 0; }
		bool m_bGameOver(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x8; } return val; }
		bool m_bShowPlayerStats() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x4) != 0; }
		bool m_bShowPlayerStats(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x4; } return val; }
		bool m_bLastHasFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x2) != 0; }
		bool m_bLastHasFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x2; } return val; }
		bool m_bLastSkiing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 732) & 0x1) != 0; }
		bool m_bLastSkiing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 732) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 732) &= ~0x1; } return val; }
	}
final:
	void DelegateSoundAccolade()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DelegateSoundAccolade, cast(void*)0, cast(void*)0);
	}
	void DelegateLoadVGSMenu(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.DelegateLoadVGSMenu, params.ptr, cast(void*)0);
	}
	bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(Functions.Start, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void registerReticules(GFxTrReticules MC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrReticules*)params.ptr = MC;
		(cast(ScriptObject)this).ProcessEvent(Functions.registerReticules, params.ptr, cast(void*)0);
	}
	void Init(LocalPlayer pPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void SetLoadVGSMenuDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLoadVGSMenuDelegate, params.ptr, cast(void*)0);
	}
	void SetSoundAccoladeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSoundAccoladeDelegate, params.ptr, cast(void*)0);
	}
	void RabbitLeaderboardUpdateSlot(int Index, ScriptString PlayerName, ScriptString Score)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = PlayerName;
		*cast(ScriptString*)&params[16] = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.RabbitLeaderboardUpdateSlot, params.ptr, cast(void*)0);
	}
	void RabbitLeaderboardUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.RabbitLeaderboardUpdateTime, params.ptr, cast(void*)0);
	}
	void SetFontIndex(int FontIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FontIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFontIndex, params.ptr, cast(void*)0);
	}
	void ClearPromptPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPromptPanel, cast(void*)0, cast(void*)0);
	}
	void RemoveFromPromptPanel(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFromPromptPanel, params.ptr, cast(void*)0);
	}
	void ClearPromptPanelMessage(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPromptPanelMessage, params.ptr, cast(void*)0);
	}
	void LoadVGSMenu(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadVGSMenu, params.ptr, cast(void*)0);
	}
	void AddVGSEntry(ScriptString Command, bool bBold)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(bool*)&params[12] = bBold;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVGSEntry, params.ptr, cast(void*)0);
	}
	void AddToPromptPanelTime(ScriptString Message, float EndTime, TgSupportCommands.GC_ALERT_PRIORITY messagePriority)
	{
		ubyte params[17];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(float*)&params[12] = EndTime;
		*cast(TgSupportCommands.GC_ALERT_PRIORITY*)&params[16] = messagePriority;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToPromptPanelTime, params.ptr, cast(void*)0);
	}
	void AddtoPromptPanelAS(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddtoPromptPanelAS, params.ptr, cast(void*)0);
	}
	void UpdateHeroStatus(ScriptString Message, float ShowTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(float*)&params[12] = ShowTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHeroStatus, params.ptr, cast(void*)0);
	}
	void ClearHeroStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearHeroStatus, cast(void*)0, cast(void*)0);
	}
	void SetSpeedometer(int Speed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpeedometer, params.ptr, cast(void*)0);
	}
	void SetPlayerRankIcon(int IconIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = IconIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerRankIcon, params.ptr, cast(void*)0);
	}
	void SetPlayerTeamIcon(int Team)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerTeamIcon, params.ptr, cast(void*)0);
	}
	void SetPlayerClassObjects(ScriptString ClassName, int PerkIcon1, int PerkIcon2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		*cast(int*)&params[12] = PerkIcon1;
		*cast(int*)&params[16] = PerkIcon2;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerClassObjects, params.ptr, cast(void*)0);
	}
	bool ShouldShowSpectatorReticule()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowSpectatorReticule, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SystemEnableNotifies(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.SystemEnableNotifies, params.ptr, cast(void*)0);
	}
	void ConfigureSpectatorHUD(bool bIsNeutral)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsNeutral;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConfigureSpectatorHUD, params.ptr, cast(void*)0);
	}
	void ConfigureHUDState(bool bAlive, bool bReady, bool bForceCredits)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bAlive;
		*cast(bool*)&params[4] = bReady;
		*cast(bool*)&params[8] = bForceCredits;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConfigureHUDState, params.ptr, cast(void*)0);
	}
	void ShowChatLog()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowChatLog, cast(void*)0, cast(void*)0);
	}
	void HideChatLog()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideChatLog, cast(void*)0, cast(void*)0);
	}
	void ShowCenterHUDElements(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowCenterHUDElements, params.ptr, cast(void*)0);
	}
	void UpdateCreditsAndStreaks(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCreditsAndStreaks, params.ptr, cast(void*)0);
	}
	void SetScoreboardTitle(ScriptString sValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScoreboardTitle, params.ptr, cast(void*)0);
	}
	void UpdateRespawnText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRespawnText, params.ptr, cast(void*)0);
	}
	void SetRespawnText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRespawnText, params.ptr, cast(void*)0);
	}
	void UpdateRespawnTimer(int TimeRemaining)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TimeRemaining;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRespawnTimer, params.ptr, cast(void*)0);
	}
	void UpdateHUDCredits(int changeAmount, int newTotal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = changeAmount;
		*cast(int*)&params[4] = newTotal;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHUDCredits, params.ptr, cast(void*)0);
	}
	void registerHUDView(GFxObject MovieClip, bool secondPass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MovieClip;
		*cast(bool*)&params[4] = secondPass;
		(cast(ScriptObject)this).ProcessEvent(Functions.registerHUDView, params.ptr, cast(void*)0);
	}
	void SetHUDStageSize(int HUDOriginX, int HUDOriginY, int Width, int Height)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = HUDOriginX;
		*cast(int*)&params[4] = HUDOriginY;
		*cast(int*)&params[8] = Width;
		*cast(int*)&params[12] = Height;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHUDStageSize, params.ptr, cast(void*)0);
	}
	void SetAmmoCountTF(Weapon Wep, ScriptString Ammo)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = Wep;
		*cast(ScriptString*)&params[4] = Ammo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAmmoCountTF, params.ptr, cast(void*)0);
	}
	void ClearStats(bool clearScores)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = clearScores;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearStats, params.ptr, cast(void*)0);
	}
	void ForceHealthUpdate(int NewHealth, int NewMaxHealth)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = NewHealth;
		*cast(int*)&params[4] = NewMaxHealth;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceHealthUpdate, params.ptr, cast(void*)0);
	}
	int GetSkiSpeedStep(float Speed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSkiSpeedStep, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void ConfigureSkiSpeedSteps(float SoftCap)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = SoftCap;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConfigureSkiSpeedSteps, params.ptr, cast(void*)0);
	}
	int GetFrameNumberForVehicle(TrVehicle V)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFrameNumberForVehicle, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void TickHud(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.TickHud, params.ptr, cast(void*)0);
	}
	void ASSetHeading(int Heading)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Heading;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASSetHeading, params.ptr, cast(void*)0);
	}
	void TickDirectionalDamageEffect(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.TickDirectionalDamageEffect, params.ptr, cast(void*)0);
	}
	bool ChangeDamageEffectParameter(ScriptName ParamName, float changeValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(float*)&params[8] = changeValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeDamageEffectParameter, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void PlayDamageEffectWithNoDirectionalIndicator(float Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDamageEffectWithNoDirectionalIndicator, params.ptr, cast(void*)0);
	}
	void ApplyDirectionalDamageEffect(int EffectIndex, float addValue)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EffectIndex;
		*cast(float*)&params[4] = addValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyDirectionalDamageEffect, params.ptr, cast(void*)0);
	}
	void ApplyNearDeathEffect(float Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyNearDeathEffect, params.ptr, cast(void*)0);
	}
	void DisplayHit(Vector HitDir, int Damage, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitDir;
		*cast(int*)&params[12] = Damage;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayHit, params.ptr, cast(void*)0);
	}
	void UpdateHealth(GFxMinimapHud.HeEnDisplay* pInfo, float NewHealth, float HealthMax)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = *pInfo;
		*cast(float*)&params[36] = NewHealth;
		*cast(float*)&params[40] = HealthMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHealth, params.ptr, cast(void*)0);
		*pInfo = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	void TickGhostHealth(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.TickGhostHealth, params.ptr, cast(void*)0);
	}
	void UpdateEnergy(GFxMinimapHud.HeEnDisplay* pInfo, float NewEnergy, float EnergyMax)
	{
		ubyte params[44];
		params[] = 0;
		*cast(GFxMinimapHud.HeEnDisplay*)params.ptr = *pInfo;
		*cast(float*)&params[36] = NewEnergy;
		*cast(float*)&params[40] = EnergyMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateEnergy, params.ptr, cast(void*)0);
		*pInfo = *cast(GFxMinimapHud.HeEnDisplay*)params.ptr;
	}
	void SetOwnership()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOwnership, cast(void*)0, cast(void*)0);
	}
	void TeamScoreboardUpdateSlot(int Index, ScriptString PlayerName, ScriptString Score, ScriptString Kills, ScriptString Assists, ScriptString Ping, ScriptString ClassAbb, int Rank, int RankIcon)
	{
		ubyte params[84];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = PlayerName;
		*cast(ScriptString*)&params[16] = Score;
		*cast(ScriptString*)&params[28] = Kills;
		*cast(ScriptString*)&params[40] = Assists;
		*cast(ScriptString*)&params[52] = Ping;
		*cast(ScriptString*)&params[64] = ClassAbb;
		*cast(int*)&params[76] = Rank;
		*cast(int*)&params[80] = RankIcon;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamScoreboardUpdateSlot, params.ptr, cast(void*)0);
	}
	void RabbitScoreboardUpdateSlot(int Index, ScriptString PlayerName, ScriptString Score, ScriptString Kills, ScriptString Assists, ScriptString Ping, ScriptString ClassAbb, int Rank, int RankIcon)
	{
		ubyte params[84];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = PlayerName;
		*cast(ScriptString*)&params[16] = Score;
		*cast(ScriptString*)&params[28] = Kills;
		*cast(ScriptString*)&params[40] = Assists;
		*cast(ScriptString*)&params[52] = Ping;
		*cast(ScriptString*)&params[64] = ClassAbb;
		*cast(int*)&params[76] = Rank;
		*cast(int*)&params[80] = RankIcon;
		(cast(ScriptObject)this).ProcessEvent(Functions.RabbitScoreboardUpdateSlot, params.ptr, cast(void*)0);
	}
	void RabbitScoreboardActivePlayer(int Index, bool bVisible)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.RabbitScoreboardActivePlayer, params.ptr, cast(void*)0);
	}
	void RabbitLeaderboardShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.RabbitLeaderboardShow, params.ptr, cast(void*)0);
	}
	void TeamCTFStatsUpdateGeneratorStatus(int Team, bool bPowered)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(bool*)&params[4] = bPowered;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamCTFStatsUpdateGeneratorStatus, params.ptr, cast(void*)0);
	}
	void TeamCTFStatsUpdateGeneratorTimer(int Team, ScriptString Time)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(ScriptString*)&params[4] = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamCTFStatsUpdateGeneratorTimer, params.ptr, cast(void*)0);
	}
	void TeamCTFStatsUpdateFlagReturnTime(int Team, ScriptString Time)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(ScriptString*)&params[4] = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamCTFStatsUpdateFlagReturnTime, params.ptr, cast(void*)0);
	}
	void TeamCTFStatsUpdateFlagStatus(int Team, bool bAtBase)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(bool*)&params[4] = bAtBase;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamCTFStatsUpdateFlagStatus, params.ptr, cast(void*)0);
	}
	void TeamCTFStatsUpdateTeamScore(int Team, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamCTFStatsUpdateTeamScore, params.ptr, cast(void*)0);
	}
	void TeamCTFStatsUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamCTFStatsUpdateTime, params.ptr, cast(void*)0);
	}
	void TeamCTFStatsShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamCTFStatsShow, params.ptr, cast(void*)0);
	}
	void TeamRabbitStatsUpdateFlagStatus(int Team)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamRabbitStatsUpdateFlagStatus, params.ptr, cast(void*)0);
	}
	void TeamRabbitStatsUpdateTeamScore(int Team, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamRabbitStatsUpdateTeamScore, params.ptr, cast(void*)0);
	}
	void ASC_FriendlyTDMScoreUpdate(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASC_FriendlyTDMScoreUpdate, params.ptr, cast(void*)0);
	}
	void ASC_EnemyTDMScoreUpdate(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASC_EnemyTDMScoreUpdate, params.ptr, cast(void*)0);
	}
	void TeamRabbitStatsPointBreak(int Team, ScriptString val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(ScriptString*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamRabbitStatsPointBreak, params.ptr, cast(void*)0);
	}
	void ASC_FriendlyTDMPointBreak(ScriptString val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASC_FriendlyTDMPointBreak, params.ptr, cast(void*)0);
	}
	void ASC_EnemyTDMPointBreak(ScriptString val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASC_EnemyTDMPointBreak, params.ptr, cast(void*)0);
	}
	void ShowNotification(ScriptString val, ScriptString Val2)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		*cast(ScriptString*)&params[12] = Val2;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowNotification, params.ptr, cast(void*)0);
	}
	void HideNotification()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideNotification, cast(void*)0, cast(void*)0);
	}
	void TeamRabbitStatsUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamRabbitStatsUpdateTime, params.ptr, cast(void*)0);
	}
	void TeamRabbitStatsShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamRabbitStatsShow, params.ptr, cast(void*)0);
	}
	void ArenaUpdateManGraphic(GFxObject Obj, ScriptString Path, int Index)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		*cast(ScriptString*)&params[4] = Path;
		*cast(int*)&params[16] = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ArenaUpdateManGraphic, params.ptr, cast(void*)0);
	}
	void ArenaStatsUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.ArenaStatsUpdateTime, params.ptr, cast(void*)0);
	}
	void ArenaStatsUpdateRoundCount(int RoundNum)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RoundNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ArenaStatsUpdateRoundCount, params.ptr, cast(void*)0);
	}
	void ArenaStatsUpdateFriendlyRoundScore(int Score)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.ArenaStatsUpdateFriendlyRoundScore, params.ptr, cast(void*)0);
	}
	void ArenaStatsUpdateEnemyRoundScore(int Score)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.ArenaStatsUpdateEnemyRoundScore, params.ptr, cast(void*)0);
	}
	void ArenaStatsShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.ArenaStatsShow, params.ptr, cast(void*)0);
	}
	void ArenaStatsPointBreak(int Team, ScriptString val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(ScriptString*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.ArenaStatsPointBreak, params.ptr, cast(void*)0);
	}
	void ASC_FriendlyArenaPointBreak(ScriptString val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASC_FriendlyArenaPointBreak, params.ptr, cast(void*)0);
	}
	void ASC_EnemyArenaPointBreak(ScriptString val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASC_EnemyArenaPointBreak, params.ptr, cast(void*)0);
	}
	void ArenaStatsUpdateTeamScore(int Team, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.ArenaStatsUpdateTeamScore, params.ptr, cast(void*)0);
	}
	void ASC_FriendlyArenaLivesUpdate(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASC_FriendlyArenaLivesUpdate, params.ptr, cast(void*)0);
	}
	void ASC_EnemyArenaLivesUpdate(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASC_EnemyArenaLivesUpdate, params.ptr, cast(void*)0);
	}
	void DaDStatsShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.DaDStatsShow, params.ptr, cast(void*)0);
	}
	void DaDUpdateFriendlyStats(int bGenOnline, ScriptString RemainingGenTime, int CapAOnline, int CapBOnline, int CapCOnline, int CoreHealth)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = bGenOnline;
		*cast(ScriptString*)&params[4] = RemainingGenTime;
		*cast(int*)&params[16] = CapAOnline;
		*cast(int*)&params[20] = CapBOnline;
		*cast(int*)&params[24] = CapCOnline;
		*cast(int*)&params[28] = CoreHealth;
		(cast(ScriptObject)this).ProcessEvent(Functions.DaDUpdateFriendlyStats, params.ptr, cast(void*)0);
	}
	void DaDUpdateEnemyStats(int bGenOnline, ScriptString RemainingGenTime, int CapAOnline, int CapBOnline, int CapCOnline, int CoreHealth)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = bGenOnline;
		*cast(ScriptString*)&params[4] = RemainingGenTime;
		*cast(int*)&params[16] = CapAOnline;
		*cast(int*)&params[20] = CapBOnline;
		*cast(int*)&params[24] = CapCOnline;
		*cast(int*)&params[28] = CoreHealth;
		(cast(ScriptObject)this).ProcessEvent(Functions.DaDUpdateEnemyStats, params.ptr, cast(void*)0);
	}
	void CaHStatsShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.CaHStatsShow, params.ptr, cast(void*)0);
	}
	void CaHControlPointAShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.CaHControlPointAShow, params.ptr, cast(void*)0);
	}
	void CaHControlPointBShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.CaHControlPointBShow, params.ptr, cast(void*)0);
	}
	void CaHControlPointCShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.CaHControlPointCShow, params.ptr, cast(void*)0);
	}
	void CaHControlPointDShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.CaHControlPointDShow, params.ptr, cast(void*)0);
	}
	void CaHControlPointEShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.CaHControlPointEShow, params.ptr, cast(void*)0);
	}
	void CaHUpdate(int FriendlyHeld, int FriendlyPoints, int FriendlyPct, int EnemyHeld, int EnemyPoints, int EnemyPct, ScriptString GenTime)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = FriendlyHeld;
		*cast(int*)&params[4] = FriendlyPoints;
		*cast(int*)&params[8] = FriendlyPct;
		*cast(int*)&params[12] = EnemyHeld;
		*cast(int*)&params[16] = EnemyPoints;
		*cast(int*)&params[20] = EnemyPct;
		*cast(ScriptString*)&params[24] = GenTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.CaHUpdate, params.ptr, cast(void*)0);
	}
	void CaHPointUpdate(ScriptString PointName, int PointType, int PctHeld)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PointName;
		*cast(int*)&params[12] = PointType;
		*cast(int*)&params[16] = PctHeld;
		(cast(ScriptObject)this).ProcessEvent(Functions.CaHPointUpdate, params.ptr, cast(void*)0);
	}
	void CaHFriendlyPointBreak(ScriptString Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.CaHFriendlyPointBreak, params.ptr, cast(void*)0);
	}
	void CaHEnemyPointBreak(ScriptString Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.CaHEnemyPointBreak, params.ptr, cast(void*)0);
	}
	void TeamScoreboardShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamScoreboardShow, params.ptr, cast(void*)0);
	}
	void RabbitScoreboardShow(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.RabbitScoreboardShow, params.ptr, cast(void*)0);
	}
	void UpdateCredits(int Credits)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Credits;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCredits, params.ptr, cast(void*)0);
	}
	void UpdateFlagInHand(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFlagInHand, params.ptr, cast(void*)0);
	}
	void UpdateSkiing(bool bSkiing)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSkiing;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSkiing, params.ptr, cast(void*)0);
	}
	void UpdateSkiLevel(int pLevel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = pLevel;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSkiLevel, params.ptr, cast(void*)0);
	}
	void UpdateTeamStats(int Team)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Team;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTeamStats, params.ptr, cast(void*)0);
	}
	void UpdateVehicleStats(bool bVisible, int FrameId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		*cast(int*)&params[4] = FrameId;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateVehicleStats, params.ptr, cast(void*)0);
	}
	void UpdateVehicleHealth(int Health, int FrameId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Health;
		*cast(int*)&params[4] = FrameId;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateVehicleHealth, params.ptr, cast(void*)0);
	}
	void UpdateVehicleEnergy(float Energy, int FrameId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Energy;
		*cast(int*)&params[4] = FrameId;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateVehicleEnergy, params.ptr, cast(void*)0);
	}
	void UpdateVehicleSeat(int Index, int FrameId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(int*)&params[4] = FrameId;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateVehicleSeat, params.ptr, cast(void*)0);
	}
	void UpdateOffhand(int Index, bool bVisible, int FrameId, int Count)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bVisible;
		*cast(int*)&params[8] = FrameId;
		*cast(int*)&params[12] = Count;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateOffhand, params.ptr, cast(void*)0);
	}
	void UpdateOwnedItem(int Index, bool bVisible, int FrameId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bVisible;
		*cast(int*)&params[8] = FrameId;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateOwnedItem, params.ptr, cast(void*)0);
	}
	void SoundAccolade()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SoundAccolade, cast(void*)0, cast(void*)0);
	}
	void UpdateCallIn(int Index, bool bEnable, bool bAvailable)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bEnable;
		*cast(bool*)&params[8] = bAvailable;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCallIn, params.ptr, cast(void*)0);
	}
	GFxObject RetrieveGFxObject(GFxObject* Obj, ScriptString ObjName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GFxObject*)params.ptr = *Obj;
		*cast(ScriptString*)&params[4] = ObjName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RetrieveGFxObject, params.ptr, cast(void*)0);
		*Obj = *cast(GFxObject*)params.ptr;
		return *cast(GFxObject*)&params[16];
	}
	void SetGlobalAlert(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGlobalAlert, params.ptr, cast(void*)0);
	}
	void HideGlobalAlert()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideGlobalAlert, cast(void*)0, cast(void*)0);
	}
	void CreateKillCamInfo(TrPlayerReplicationInfo KillerPRI, TrPlayerReplicationInfo VictimPRI, ScriptClass KillDamageType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = KillerPRI;
		*cast(TrPlayerReplicationInfo*)&params[4] = VictimPRI;
		*cast(ScriptClass*)&params[8] = KillDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateKillCamInfo, params.ptr, cast(void*)0);
	}
	void ShowKillCamInfo(GFxObject Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowKillCamInfo, params.ptr, cast(void*)0);
	}
	ScriptString GetWeaponNameFromDamageType(TrPlayerReplicationInfo PRI, ScriptClass FamilyInfo, ScriptClass KillDamageType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = PRI;
		*cast(ScriptClass*)&params[4] = FamilyInfo;
		*cast(ScriptClass*)&params[8] = KillDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponNameFromDamageType, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void SetSpectatorPlayerPanel_FlagCarried(bool bCarried)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bCarried;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_FlagCarried, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_PlayerName(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_PlayerName, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_ClassName(ScriptString ClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_ClassName, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_NextRegen(ScriptString NextRegen)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = NextRegen;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_NextRegen, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_HealthFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_HealthFillBar, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_Health(ScriptString Health)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Health;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_Health, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_EnergyFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_EnergyFillBar, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_Energy(ScriptString Energy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Energy;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_Energy, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_PrimaryWeaponName(ScriptString PrimaryWeaponName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PrimaryWeaponName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_PrimaryWeaponName, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_PrimaryAmmoCount(ScriptString PrimaryAmmoCount)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PrimaryAmmoCount;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_PrimaryAmmoCount, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_SecondaryWeaponName(ScriptString SecondaryWeaponName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SecondaryWeaponName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_SecondaryWeaponName, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_SecondaryAmmoCount(ScriptString SecondaryAmmoCount)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SecondaryAmmoCount;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_SecondaryAmmoCount, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_OffhandIcon(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_OffhandIcon, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_OffhandAmmo(ScriptString OffhandAmmo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = OffhandAmmo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_OffhandAmmo, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_OffhandName(ScriptString OffhandName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = OffhandName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_OffhandName, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_PackIcon(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_PackIcon, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_PackAmmo(ScriptString PackAmmo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PackAmmo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_PackAmmo, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_PackName(ScriptString PackName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PackName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_PackName, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_Perk1Icon(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_Perk1Icon, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_Perk1Name(ScriptString PerkName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PerkName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_Perk1Name, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_Perk2Icon(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_Perk2Icon, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_Perk2Name(ScriptString PerkName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PerkName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_Perk2Name, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_SkiIndicatorFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_SkiIndicatorFillBar, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_SkiIndicatorSpeed(ScriptString Speed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_SkiIndicatorSpeed, params.ptr, cast(void*)0);
	}
	void SetSpectatorPlayerPanel_Selected(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorPlayerPanel_Selected, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_FlagCarried(bool bCarried)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bCarried;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_FlagCarried, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_VehicleName(ScriptString VehicleName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VehicleName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_VehicleName, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_DriverName(ScriptString DriverName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DriverName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_DriverName, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_PassengerName(ScriptString PassengerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PassengerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_PassengerName, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_HealthFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_HealthFillBar, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_Health(ScriptString Health)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Health;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_Health, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_EnergyFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_EnergyFillBar, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_Energy(ScriptString Energy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Energy;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_Energy, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_PrimaryWeaponName(ScriptString PrimaryWeaponName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PrimaryWeaponName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_PrimaryWeaponName, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_PrimaryWeaponReady(int Ready)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Ready;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_PrimaryWeaponReady, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_PrimaryWeaponVisible(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_PrimaryWeaponVisible, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_SecondaryWeaponName(ScriptString SecondaryWeaponName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SecondaryWeaponName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_SecondaryWeaponName, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_SecondaryWeaponReady(int Ready)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Ready;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_SecondaryWeaponReady, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_SecondaryWeaponVisible(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_SecondaryWeaponVisible, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_SkiIndicatorFillBar(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_SkiIndicatorFillBar, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_SkiIndicatorSpeed(ScriptString Speed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_SkiIndicatorSpeed, params.ptr, cast(void*)0);
	}
	void SetSpectatorVehiclePanel_Selected(int FrameIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorVehiclePanel_Selected, params.ptr, cast(void*)0);
	}
	void SetSpectatorBookmarkPanel_BookmarkName(ScriptString BookmarkName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BookmarkName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorBookmarkPanel_BookmarkName, params.ptr, cast(void*)0);
	}
	void SetSpectatorObjectivePanel_ObjectiveName(ScriptString ObjectiveName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ObjectiveName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorObjectivePanel_ObjectiveName, params.ptr, cast(void*)0);
	}
	void SetSpectatorObjectivePanel_ObjectiveDescription(ScriptString ObjectiveDescription)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ObjectiveDescription;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorObjectivePanel_ObjectiveDescription, params.ptr, cast(void*)0);
	}
	void SetSpectatorObjectivePanel_HealthFillBar(int FrameIndex, int Health)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FrameIndex;
		*cast(int*)&params[4] = Health;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorObjectivePanel_HealthFillBar, params.ptr, cast(void*)0);
	}
	void SetSpectatorFloatCameraPanel_Name(ScriptString FloatCameraName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FloatCameraName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorFloatCameraPanel_Name, params.ptr, cast(void*)0);
	}
	void SetSpectatorFloatCameraPanel_Description(ScriptString Description)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Description;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectatorFloatCameraPanel_Description, params.ptr, cast(void*)0);
	}
	void ShowSpectatorControls(bool bShowControls)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShowControls;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorControls, params.ptr, cast(void*)0);
	}
	void HideVGSMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideVGSMenu, cast(void*)0, cast(void*)0);
	}
	void HideTutorial()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideTutorial, cast(void*)0, cast(void*)0);
	}
	void ShowFlagCarried()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowFlagCarried, cast(void*)0, cast(void*)0);
	}
	void HideFlagCarried()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideFlagCarried, cast(void*)0, cast(void*)0);
	}
	void HideKillCamInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideKillCamInfo, cast(void*)0, cast(void*)0);
	}
	void UpdateVGSMenuList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateVGSMenuList, cast(void*)0, cast(void*)0);
	}
	void ShowEnding(int Winner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Winner;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowEnding, params.ptr, cast(void*)0);
	}
	void UpdateChatLog(ScriptString Message, int ChannelColor, bool bPublic)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(int*)&params[12] = ChannelColor;
		*cast(bool*)&params[16] = bPublic;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateChatLog, params.ptr, cast(void*)0);
	}
	void SetPowerOscillation(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPowerOscillation, params.ptr, cast(void*)0);
	}
	void UpdateChatLogInput(ScriptString Message)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateChatLogInput, params.ptr, cast(void*)0);
	}
	void TeamScoreboardActivePlayer(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamScoreboardActivePlayer, params.ptr, cast(void*)0);
	}
	void TeamScoreboardUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamScoreboardUpdateTime, params.ptr, cast(void*)0);
	}
	void RabbitScoreboardUpdateTime(ScriptString Time)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.RabbitScoreboardUpdateTime, params.ptr, cast(void*)0);
	}
	void TeamScoreboardUpdateTeamScore(int Index, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamScoreboardUpdateTeamScore, params.ptr, cast(void*)0);
	}
	void UpdateTutorial(ScriptString Title, ScriptString Body, float Icon, ScriptString footer, ScriptString Suppress)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		*cast(ScriptString*)&params[12] = Body;
		*cast(float*)&params[24] = Icon;
		*cast(ScriptString*)&params[28] = footer;
		*cast(ScriptString*)&params[40] = Suppress;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTutorial, params.ptr, cast(void*)0);
	}
	void AddUpdateToCombatLog(int CombatType, ScriptString Aggressor, int WeaponIcon, ScriptString Victim)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = CombatType;
		*cast(ScriptString*)&params[4] = Aggressor;
		*cast(int*)&params[16] = WeaponIcon;
		*cast(ScriptString*)&params[20] = Victim;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddUpdateToCombatLog, params.ptr, cast(void*)0);
	}
	void AddUpdateToKillMessage(int RankIcon, int PlayerIcon, ScriptString PlayerName, ScriptString Message)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = RankIcon;
		*cast(int*)&params[4] = PlayerIcon;
		*cast(ScriptString*)&params[8] = PlayerName;
		*cast(ScriptString*)&params[20] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddUpdateToKillMessage, params.ptr, cast(void*)0);
	}
	void ShowSpectatorPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorPlayer, cast(void*)0, cast(void*)0);
	}
	void HideSpectatorPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSpectatorPlayer, cast(void*)0, cast(void*)0);
	}
	void ShowSpectatorVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorVehicle, cast(void*)0, cast(void*)0);
	}
	void HideSpectatorVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSpectatorVehicle, cast(void*)0, cast(void*)0);
	}
	void ShowSpectatorBookmark()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorBookmark, cast(void*)0, cast(void*)0);
	}
	void HideSpectatorBookmark()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSpectatorBookmark, cast(void*)0, cast(void*)0);
	}
	void ShowSpectatorObjectivePanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorObjectivePanel, cast(void*)0, cast(void*)0);
	}
	void HideSpectatorObjectivePanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSpectatorObjectivePanel, cast(void*)0, cast(void*)0);
	}
	void ShowSpectatorFloatCameraPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowSpectatorFloatCameraPanel, cast(void*)0, cast(void*)0);
	}
	void HideSpectatorFloatCameraPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideSpectatorFloatCameraPanel, cast(void*)0, cast(void*)0);
	}
	void AddFlyingIcon(int iconNumber, ScriptString Description, ScriptString Points, int bIsBadge)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = iconNumber;
		*cast(ScriptString*)&params[4] = Description;
		*cast(ScriptString*)&params[16] = Points;
		*cast(int*)&params[28] = bIsBadge;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFlyingIcon, params.ptr, cast(void*)0);
	}
}
