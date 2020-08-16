class RenX_Epic_Units_Nod_Raveshaw_Mutant extends Rx_FamilyInfo_Nod_Raveshaw_Mutant;

DefaultProperties
{
	MaxHealth               = 600
	MaxArmor               	= 100
	SpeedMultiplier			= 1.15
	JumpMultiplier          = 1.5
	FallspeedModifier       = 1.0

	BasePurchaseCost		= 2500
	PT_Damage			= 6
	PT_Range			= 5
	PT_RateOfFire		= 2
	PT_MagazineCapacity = 2
	
	ImmuneTo[0] = class'Rx_DmgType_Tiberium'
	ImmuneTo[1] = class'Rx_DmgType_TiberiumBleed'
	ImmuneTo[2] = class'Rx_DmgType_ChemicalThrower'
	ImmuneTo[3]	= class'Rx_DmgType_Tiberium_Blue'
	ImmuneTo[4]	= class'Rx_DmgType_TiberiumAutoRifle'
	ImmuneTo[5]	= class'Rx_DmgType_RanOver'
	ImmuneTo[6]	= class'Rx_DmgType_Pancake'

	InvManagerClass = class'RenX_Epic_Units_InventoryManager_NOD_Mutant_Raveshaw'
	
	/***********/
	/*Veterancy*/
	/***********/
	VPCost(0) = 25
	VPCost(1) = 50
	VPCost(2) = 110
	
	VPReward(0)=10
	VPReward(1)=12
	VPReward(2)=14
	VPReward(3)=16
	
	//+X
	Vet_HealthMod(0)=0
	Vet_HealthMod(1)=100
	Vet_HealthMod(2)=200
	Vet_HealthMod(3)=300
	
	//+X
	Vet_SprintSpeedMod(0)=0
	Vet_SprintSpeedMod(1)=0.030
	Vet_SprintSpeedMod(2)=0.060
	Vet_SprintSpeedMod(3)=0.085
	
	/******************/
	PTString="Buy Commando Mutant Raveshaw"
	PassiveAbilities(0)=class'RenX_Epic_Units_PassiveAbility_HealthRegen'
}
