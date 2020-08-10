class RenX_SpecialUnit_Weapon_SpecialHeavyPistol extends Rx_Weapon_HeavyPistol_Crate;

DefaultProperties
{
	CustomWeaponName = "Special Heavy Pistol";
	MaxSpread = 0.2
	CrosshairWidth = 210
	CrosshairHeight = 210
	FireInterval(0)=+0.2
	ReloadTime(0) = 1.0
	ReloadTime(1) = 1.0	
	EquipTime=0.4
	WeaponRange=3000.0
	InstantHitDamage(0)=80
	ClipSize = 8
	InitalNumClips = 10
	MaxClips = 10

	/*******************/
	/*Veterancy*/
	/******************/
	Vet_DamageModifier(0)=1
	Vet_DamageModifier(1)=1.2 
	Vet_DamageModifier(2)=1.3 
	Vet_DamageModifier(3)=1.4 
	
	Vet_ROFModifier(0) = 1
	Vet_ROFModifier(1) = 1.1 
	Vet_ROFModifier(2) = 1.2  
	Vet_ROFModifier(3) = 1.25  
	
	Vet_ClipSizeModifier(0)=0 //Normal (should be 1)	
	Vet_ClipSizeModifier(1)=1 //Veteran 
	Vet_ClipSizeModifier(2)=2 //Elite
	Vet_ClipSizeModifier(3)=3 //Heroic

	Vet_ReloadSpeedModifier(0)=1 //Normal (should be 1)
	Vet_ReloadSpeedModifier(1)=0.9 //Veteran 
	Vet_ReloadSpeedModifier(2)=0.8 //Elite
	Vet_ReloadSpeedModifier(3)=0.7 //Heroic
	/**********************/
}
