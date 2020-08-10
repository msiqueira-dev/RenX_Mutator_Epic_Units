class RenX_SpecialUnit_GDI_Armoured_Sydney extends Rx_FamilyInfo_GDI_Sydney_Suit;

DefaultProperties
{
	HealPointsMultiplier    = 0.031428f
	PointsForKill           = 43.75f
	MaxHealth               = 100
	MaxArmor               	= 600
	Armor_Type 				= A_FLAK
	SpeedMultiplier			= 0.98
	bFemale					= true;
	FallspeedModifier       = 1.0
	
	/*PT Block Info*/
	/*------------*/
	BasePurchaseCost		= 2500
	bHighTier				= true
	PT_Damage			= 6
	PT_Range			= 5
	PT_RateOfFire		= 2
	PT_MagazineCapacity = 2
	/*---------------*/
	ImmuneTo[0] = class'Rx_DmgType_Tiberium'
	ImmuneTo[1] = class'Rx_DmgType_TiberiumBleed'
	ImmuneTo[2] = class'Rx_DmgType_ChemicalThrower'
	ImmuneTo[3]	= class'Rx_DmgType_Tiberium_Blue'
	ImmuneTo[4]	= class'Rx_DmgType_TiberiumAutoRifle'
	
	/***********/
	/*Veterancy*/
	/***********/
	
	VPCost(0) = 25
	VPCost(1) = 50
	VPCost(2) = 110
	
	VPReward(0)=8
	VPReward(1)=10
	VPReward(2)=12
	VPReward(3)=14
	
	//+X
	Vet_HealthMod(0)=0
	Vet_HealthMod(1)=100
	Vet_HealthMod(2)=200
	Vet_HealthMod(3)=300
	
	//+X
	Vet_SprintSpeedMod(0)=0
	Vet_SprintSpeedMod(1)=0.025
	Vet_SprintSpeedMod(2)=0.05
	Vet_SprintSpeedMod(3)=0.075
	
	/******************/
	PTString="Buy Commando Armoured Sydney"
	PassiveAbilities(0)=class'RenX_SpecialUnit_PassiveAbility_ArmourRegen'
}
