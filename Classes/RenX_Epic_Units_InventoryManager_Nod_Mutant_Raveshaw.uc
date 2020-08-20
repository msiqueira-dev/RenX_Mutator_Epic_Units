class RenX_Epic_Units_InventoryManager_Nod_Mutant_Raveshaw extends Rx_InventoryManager_NOD_Raveshaw_Mutant;

DefaultProperties
{
	PrimaryWeapons[0] = class'RenX_Epic_Units_Weapon_Improved_Railgun'
    PrimaryWeapons[1] = class'RenX_Epic_Units_Weapon_SpecialHeavyPistol';
	PrimaryWeapons[2] = class'Rx_Weapon_ATMine'
	SidearmWeapons[0] =  class'RenX_Epic_Units_Weapon_Improved_TiberiumAutoRifle'
	ExplosiveWeapons[0] = class'Rx_Weapon_TimedC4'
	AvailableSidearmWeapons(0) = class'RenX_Epic_Units_Weapon_Improved_TiberiumAutoRifle'
	AvailableAbilityWeapons(0) = class'Rx_WeaponAbility_EMPGrenade' 
}
