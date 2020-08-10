class RenX_SpecialUnit_PurchaseSystem extends Rx_PurchaseSystem;

// simulated function UpdateMapSpecificVehicleClasses() 
// { 
//   super.UpdateMapSpecificVehicleClasses(); 
//   GDIVehicleClasses[12] = class'RenX_Mutator_GDI_Orca_PTInfo';
  
// }

function PurchaseCharacter(Rx_Controller Buyer, int TeamID, class<Rx_FamilyInfo> CharacterClass)
{
    local Rx_Controller PC;
	
	if(CharacterClass==class'RenX_SpecialUnit_GDI_Armoured_Sydney' 
	|| CharacterClass==class'RenX_SpecialUnit_Nod_Raveshaw_Mutant')
    {
        foreach `WorldInfoObject.AllControllers(class'Rx_Controller', PC)
        {
            if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_SpecialUnit_GDI_Armoured_Sydney'
			   && CharacterClass==class'RenX_SpecialUnit_GDI_Armoured_Sydney')
                return;
			if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_SpecialUnit_Nod_Raveshaw_Mutant'
			   && CharacterClass==class'RenX_SpecialUnit_Nod_Raveshaw_Mutant')
                return;
        }
		if(CharacterClass==class'RenX_SpecialUnit_GDI_Armoured_Sydney')
		{
			Rx_Game(WorldInfo.Game).CTextBroadCast(TeamID, "Armoured Sydney bought by" @ Buyer.GetHumanReadableName(),'Yellow');
			PC.ClientPlaySound(SoundCue'RX_WP_IonCannon.Sounds.SC_StrikImminent_Siren');
		}
		else if(CharacterClass==class'RenX_SpecialUnit_Nod_Raveshaw_Mutant')
		{
			Rx_Game(WorldInfo.Game).CTextBroadCast(TeamID, "Mutant Raveshaw bought by" @ Buyer.GetHumanReadableName(),'Red');
			PC.ClientPlaySound(SoundCue'RX_WP_IonCannon.Sounds.SC_StrikImminent_Siren');
		}
    }
	super.PurchaseCharacter(Buyer, TeamID, CharacterClass);
}

simulated function UpdateMapSpecificInfantryClasses()
{
    super.UpdateMapSpecificInfantryClasses();
    GDIInfantryClasses[12] = class'RenX_SpecialUnit_GDI_Armoured_Sydney';
    NODInfantryClasses[12] = class'RenX_SpecialUnit_Nod_Raveshaw_Mutant';
}

DefaultProperties
{
    
}
