class RenX_SpecialUnit_Weapon_RailGun extends Rx_Weapon_Railgun;

DefaultProperties
{
	CustomWeaponName = "Improved Railgun";
	TimeBetweenBursts = 0.05
	RecoilDelay = 0.06
    FireInterval(0)=+0.6
    FireInterval(1)=+0.6
    ReloadTime(0) = 2.4
    ReloadTime(1) = 2.4
    WeaponRange=6200.0
    ClipSize = 4
    InitalNumClips = 14
    MaxClips = 14
	FireDelayTime = 0.20
	
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
	Vet_ClipSizeModifier(1)=1 //Veteran 
	Vet_ClipSizeModifier(2)=2 //Elite
	Vet_ClipSizeModifier(3)=3 //Heroic

	Vet_ReloadSpeedModifier(0)=1 //Normal (should be 1)
	Vet_ReloadSpeedModifier(1)=0.90 //Veteran 
	Vet_ReloadSpeedModifier(2)=0.80 //Elite
	Vet_ReloadSpeedModifier(3)=0.70 //Heroic
	/**********************/
}
