class RenX_Epic_Units_GDI_Armoured_Sydney extends Rx_FamilyInfo_GDI_Sydney_Suit;

DefaultProperties
{
	MaxHealth               = 100
	MaxArmor               	= 600
	SpeedMultiplier			= 0.95
	FallspeedModifier       = 2.0
	
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

	InvManagerClass = class'RenX_Epic_Units_InventoryManager_GDI_Armoured_Sydney'
	
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
	PassiveAbilities(0)=class'RenX_Epic_Units_PassiveAbility_ArmourRegen'
}
