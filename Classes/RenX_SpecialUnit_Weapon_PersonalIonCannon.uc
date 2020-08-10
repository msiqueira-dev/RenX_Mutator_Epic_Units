class RenX_SpecialUnit_Weapon_PersonalIonCannon extends Rx_Weapon_PersonalIonCannon;

DefaultProperties
{		
	CustomWeaponName = "Improved Personal Ion Cannon";
	RecoilDelay = 0.06
    WeaponRange=6200.0
	ClipSize = 1
    InitalNumClips = 51
    MaxClips = 51
	BoltReloadTime(0) = 2.0f
	BoltReloadTime(1) = 2.0f
	FireDelayTime = 0.20
	MaximumPiercingAbility  =  5
	CurrentPiercingPower	=  5
	Ammo_Increment = 4
	/*******************/
	/*Veterancy*/
	/******************/
	
	Vet_DamageModifier(0)=1  //Applied to instant-hits only
	Vet_DamageModifier(1)=1.15 //1.10 
	Vet_DamageModifier(2)=1.25 
	Vet_DamageModifier(3)=1.50 
	
	Vet_ROFModifier(0) = 1.0
	Vet_ROFModifier(1) = 1.0
	Vet_ROFModifier(2) = 1.0 
	Vet_ROFModifier(3) = 1.0 
	
	Vet_ClipSizeModifier(0)=0 //Normal (should be 1)	
	Vet_ClipSizeModifier(1)=1.1 //Veteran 
	Vet_ClipSizeModifier(2)=1.2 //Elite
	Vet_ClipSizeModifier(3)=1.3 //Heroic

	Vet_ReloadSpeedModifier(0)=1 //Normal (should be 1)
	Vet_ReloadSpeedModifier(1)=0.90 //Veteran 
	Vet_ReloadSpeedModifier(2)=0.80 //Elite
	Vet_ReloadSpeedModifier(3)=0.70 //Heroic
	/**********************/
}
