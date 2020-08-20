class RenX_Epic_Units_Weapon_Improved_TiberiumAutoRifle extends Rx_Weapon_TiberiumAutoRifle;


defaultproperties
{
	CustomWeaponName = "Raveshaw's Tiberium Rifle";
	ReloadTime(0) = 2.5
	ReloadTime(1) = 2.5	
	EquipTime=0.3
	
	/*******************/
	/*Veterancy*/
	/******************/
	
	Vet_DamageModifier(0)=1  //Applied to instant-hits only
	Vet_DamageModifier(1)=1.12 
	Vet_DamageModifier(2)=1.26 
	Vet_DamageModifier(3)=1.54 
	
	Vet_ROFModifier(0) = 1
	Vet_ROFModifier(1) = 1 
	Vet_ROFModifier(2) = 1  
	Vet_ROFModifier(3) = 1  
	
	Vet_ClipSizeModifier(0)=0 //Normal (should be 1)	
	Vet_ClipSizeModifier(1)=5 //Veteran 
	Vet_ClipSizeModifier(2)=10 //Elite
	Vet_ClipSizeModifier(3)=20 //Heroic

	Vet_ReloadSpeedModifier(0)=0.8 //Normal (should be 1)
	Vet_ReloadSpeedModifier(1)=0.75 //Veteran 
	Vet_ReloadSpeedModifier(2)=0.70 //Elite
	Vet_ReloadSpeedModifier(3)=0.65 //Heroic
	/**********************/
}
