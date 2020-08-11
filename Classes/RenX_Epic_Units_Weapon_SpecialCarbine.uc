class RenX_Epic_Units_Weapon_SpecialCarbine extends Rx_Weapon_Carbine;

defaultproperties
{	
	CustomWeaponName = "Special Carbine";
	WeaponRange=3800.0
	ClipSize = 42
	InstantHitDamage(0)=20
	InstantHitDamage(1)=20 

	/*******************/
	/*Veterancy*/
	/******************/
	
	Vet_DamageModifier(0)=1  //Applied to instant-hits only
	Vet_DamageModifier(1)=1.20 
	Vet_DamageModifier(2)=1.30 
	Vet_DamageModifier(3)=1.40 
	
	Vet_ROFModifier(0) = 1
	Vet_ROFModifier(1) = 0.90 
	Vet_ROFModifier(2) = 0.85
	Vet_ROFModifier(3) = 0.80 
	
	Vet_ClipSizeModifier(0)=0 //Normal (should be 1)	
	Vet_ClipSizeModifier(1)=5 //Veteran 
	Vet_ClipSizeModifier(2)=10 //Elite
	Vet_ClipSizeModifier(3)=15 //Heroic

	Vet_ReloadSpeedModifier(0)=1 //Normal (should be 1)
	Vet_ReloadSpeedModifier(1)=0.9 //Veteran 
	Vet_ReloadSpeedModifier(2)=0.85 //Elite
	Vet_ReloadSpeedModifier(3)=0.80 //Heroic
	/**********************/
}
