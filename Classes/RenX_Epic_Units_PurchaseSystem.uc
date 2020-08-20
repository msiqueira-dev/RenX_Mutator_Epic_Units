class RenX_Epic_Units_PurchaseSystem extends Rx_PurchaseSystem;

simulated function bool CheckGDIEpicUnitDisable()
{
	return AreHighTierPayClassesDisabled(TEAM_GDI);
}

simulated function bool CheckNodEpicUnitDisable()
{
	return AreHighTierPayClassesDisabled(TEAM_NOD);
}

function PurchaseCharacter(Rx_Controller Buyer, int TeamID, class<Rx_FamilyInfo> CharacterClass)
{
    local Rx_Controller PC;
	
	if(CharacterClass==class'RenX_Epic_Units_GDI_Armored_Sydney' 
	|| CharacterClass==class'RenX_Epic_Units_Nod_Raveshaw_Mutant')
    {
        foreach `WorldInfoObject.AllControllers(class'Rx_Controller', PC)
        {
            if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_GDI_Armored_Sydney'
			   && CharacterClass==class'RenX_Epic_Units_GDI_Armored_Sydney')
                return;
			if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_Nod_Raveshaw_Mutant'
			   && CharacterClass==class'RenX_Epic_Units_Nod_Raveshaw_Mutant')
                return;
        }
		if(CharacterClass==class'RenX_Epic_Units_GDI_Armored_Sydney')
		{
			foreach `WorldInfoObject.AllControllers(class'Rx_Controller', PC)
			{
				if(PC.GetTeamNum() == TEAM_GDI)
					PC.ClientPlaySound(SoundCue'RX_WP_IonCannon.Sounds.SC_StrikImminent_Siren');
			}
			Rx_Game(WorldInfo.Game).CTextBroadCast(TeamID, "Armored Sydney bought by" @ Buyer.GetHumanReadableName(),
			                                       'Yellow', 60.0, 3.0);
		}
		else if(CharacterClass==class'RenX_Epic_Units_Nod_Raveshaw_Mutant')
		{
			foreach `WorldInfoObject.AllControllers(class'Rx_Controller', PC)
			{
				if(PC.GetTeamNum() == TEAM_NOD)
					PC.ClientPlaySound(SoundCue'RX_WP_IonCannon.Sounds.SC_StrikImminent_Siren');
			}
			Rx_Game(WorldInfo.Game).CTextBroadCast(TeamID, "Mutant Raveshaw bought by" @ Buyer.GetHumanReadableName(),
			                                       'Red', 60.0, 3.0);
		}
    }
	super.PurchaseCharacter(Buyer, TeamID, CharacterClass);
}

function PurchaseItem(Controller Buyer, int TeamID, int ItemID)
{
	if(ItemID == 3)
	{
		if (TeamID == Team_GDI)
			PurchaseCharacter(Rx_Controller(Buyer), TeamID, class'RenX_Epic_Units_GDI_Armored_Sydney');
		else if(TeamID == TEAM_NOD)
			PurchaseCharacter(Rx_Controller(Buyer), TeamID, class'RenX_Epic_Units_Nod_Raveshaw_Mutant');
	}
	else super.PurchaseItem(Buyer, TeamID, ItemID);
}

simulated function UpdateMapSpecificInfantryClasses()
{
    super.UpdateMapSpecificInfantryClasses();
}

DefaultProperties
{
	GDIItemClasses[3]  = class'RenX_Epic_Units_Dummy_Armored_Sydney'
	NODItemClasses[3]  = class'RenX_Epic_Units_Dummy_Mutant_Raveshaw'
}
