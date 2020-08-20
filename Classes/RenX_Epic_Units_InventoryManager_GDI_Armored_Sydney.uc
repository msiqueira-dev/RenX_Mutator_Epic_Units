class RenX_Epic_Units_InventoryManager_GDI_Armored_Sydney extends Rx_InventoryManager_GDI_Sydney_Suit;

DefaultProperties
{
	PrimaryWeapons[0] = class'RenX_Epic_Units_Weapon_Improved_PersonalIonCannon'
    PrimaryWeapons[1] = class'RenX_Epic_Units_Weapon_SpecialCarbine';
	PrimaryWeapons[2] = class'Rx_Weapon_ATMine'
	SidearmWeapons[0] = class'Rx_Weapon_TiberiumAutoRifle'
	ExplosiveWeapons[0] = class'Rx_Weapon_TimedC4_Multiple';
	AvailableSidearmWeapons(0) = class'Rx_Weapon_TiberiumAutoRifle'
	AvailableAbilityWeapons(0) = class'RenX_Epic_Units_WeaponAbility_EMPGrenade' 
}

