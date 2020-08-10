class RenX_SpecialUnit_PurchaseSystem extends Rx_PurchaseSystem;

function PurchaseCharacter(Rx_Controller Buyer, int TeamID, class<Rx_FamilyInfo> CharacterClass)
{
    local Rx_Controller PC;
	
	if(CharacterClass==class'RenX_Epic_Unit_GDI_Armoured_Sydney' 
	|| CharacterClass==class'RenX_Epic_Unit_Nod_Raveshaw_Mutant')
    {
        foreach `WorldInfoObject.AllControllers(class'Rx_Controller', PC)
        {
            if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Unit_GDI_Armoured_Sydney'
			   && CharacterClass==class'RenX_Epic_Unit_GDI_Armoured_Sydney')
                return;
			if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Unit_Nod_Raveshaw_Mutant'
			   && CharacterClass==class'RenX_Epic_Unit_Nod_Raveshaw_Mutant')
                return;
        }
		if(CharacterClass==class'RenX_Epic_Unit_GDI_Armoured_Sydney')
		{
			foreach `WorldInfoObject.AllControllers(class'Rx_Controller', PC)
			{
				if(TeamID == TEAM_GDI)
					PC.ClientPlaySound(SoundCue'RX_WP_IonCannon.Sounds.SC_StrikImminent_Siren');
			}
			Rx_Game(WorldInfo.Game).CTextBroadCast(TeamID, "Armoured Sydney bought by" @ Buyer.GetHumanReadableName(),
			                                       'Yellow', 60.0, 3.0);
		}
		else if(CharacterClass==class'RenX_Epic_Unit_Nod_Raveshaw_Mutant')
		{
			foreach `WorldInfoObject.AllControllers(class'Rx_Controller', PC)
			{
				if(TeamID == TEAM_NOD)
					PC.ClientPlaySound(SoundCue'RX_WP_IonCannon.Sounds.SC_StrikImminent_Siren');
			}
			Rx_Game(WorldInfo.Game).CTextBroadCast(TeamID, "Mutant Raveshaw bought by" @ Buyer.GetHumanReadableName(),
			                                       'Red', 60.0, 3.0);
		}
    }
	super.PurchaseCharacter(Buyer, TeamID, CharacterClass);
}

simulated function UpdateMapSpecificInfantryClasses()
{
    super.UpdateMapSpecificInfantryClasses();
    GDIInfantryClasses[12] = class'RenX_Epic_Unit_GDI_Armoured_Sydney';
    NODInfantryClasses[12] = class'RenX_Epic_Unit_Nod_Raveshaw_Mutant';
}

DefaultProperties
{
    
}
