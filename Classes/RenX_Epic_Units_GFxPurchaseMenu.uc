class RenX_Epic_Units_GFxPurchaseMenu extends Rx_GFxPurchaseMenu;

function TickHUD() 
{
	local Rx_Pawn Pawn;
	local bool foundSydney;
	local bool foundRaveshaw;
	super.TickHUD();
	
	if(TeamID == TEAM_GDI)
	{
		if(RenX_Epic_Units_PurchaseSystem(rxPurchaseSystem).CheckGDIEpicUnitDisable() == true)
			ItemMenuButton[3].SetBool("enabled", false);
			return;
	}
	else if(TeamID == TEAM_NOD)
	{
		if(RenX_Epic_Units_PurchaseSystem(rxPurchaseSystem).CheckNodEpicUnitDisable() == true)
			ItemMenuButton[3].SetBool("enabled", false);
			return;
	}

	foreach `WorldInfoObject.AllPawns(class'Rx_Pawn', Pawn)
	{
		if(Pawn.GetRxFamilyInfo() == class'RenX_Epic_Units_GDI_Armoured_Sydney'
		|| Pawn.GetRxFamilyInfo() == class'RenX_Epic_Units_Dummy_Armoured_Sydney')
		{
			foundSydney = true;
		}
		else if(Pawn.GetRxFamilyInfo() == class'RenX_Epic_Units_Nod_Raveshaw_Mutant'
		|| Pawn.GetRxFamilyInfo() == class'RenX_Epic_Units_Dummy_Mutant_Raveshaw')
		{
			foundRaveshaw = false;
		}
	}
	if(foundSydney == false && TeamId == TEAM_GDI)
		ItemMenuButton[3].SetBool("enabled", true);
	else if(foundSydney == true && TeamId == TEAM_GDI)
		ItemMenuButton[3].SetBool("enabled", false);
	if(foundRaveshaw == false && TeamId == TEAM_NOD)
		ItemMenuButton[3].SetBool("enabled", true);
	else if(foundRaveshaw == true && TeamId == TEAM_NOD)
		ItemMenuButton[3].SetBool("enabled", false);
}

DefaultProperties
{
}
