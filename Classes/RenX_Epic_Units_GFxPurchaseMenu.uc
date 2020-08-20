class RenX_Epic_Units_GFxPurchaseMenu extends Rx_GFxPurchaseMenu;

var int MinimumPlayersForEpicUnits;

function TickHUD() 
{
	local Rx_Pawn Pawn;
	local bool foundSydney;
	local bool foundRaveshaw;
	local int numPlayers;

	super.TickHUD();
	numPlayers = 0;
	if(TeamID == TEAM_GDI)
	{
		if(RenX_Epic_Units_PurchaseSystem(rxPurchaseSystem).CheckGDIEpicUnitDisable() == true)
		{
			ItemMenuButton[3].SetBool("enabled", false);
			return;
		}
	}
	else if(TeamID == TEAM_NOD)
	{
		if(RenX_Epic_Units_PurchaseSystem(rxPurchaseSystem).CheckNodEpicUnitDisable() == true)
		{
			ItemMenuButton[3].SetBool("enabled", false);
			return;
		}
	}

	foreach `WorldInfoObject.AllPawns(class'Rx_Pawn', Pawn)
	{
		if(Pawn.GetRxFamilyInfo() == class'RenX_Epic_Units_GDI_Armored_Sydney'
		|| Pawn.GetRxFamilyInfo() == class'RenX_Epic_Units_Dummy_Armored_Sydney')
		{
			foundSydney = true;
		}
		else if(Pawn.GetRxFamilyInfo() == class'RenX_Epic_Units_Nod_Raveshaw_Mutant'
		|| Pawn.GetRxFamilyInfo() == class'RenX_Epic_Units_Dummy_Mutant_Raveshaw')
		{
			foundRaveshaw = false;
		}
		numPlayers = numPlayers +1;
	}
	`Log(numPlayers);
	`Log(MinimumPlayersForEpicUnits);
	if(numPlayers < MinimumPlayersForEpicUnits+1)
	{
		ItemMenuButton[3].SetString("sublabel", MinimumPlayersForEpicUnits $ " Players needed for Epic Unit to be available");
		ItemMenuButton[3].SetBool("enabled", false);
	}
	else 
	{
		if(foundSydney == false && TeamId == TEAM_GDI)
			ItemMenuButton[3].SetBool("enabled", true);
		else if(foundSydney == true && TeamId == TEAM_GDI)
			ItemMenuButton[3].SetBool("enabled", false);
		if(foundRaveshaw == false && TeamId == TEAM_NOD)
			ItemMenuButton[3].SetBool("enabled", true);
		else if(foundRaveshaw == true && TeamId == TEAM_NOD)
			ItemMenuButton[3].SetBool("enabled", false);
	}
}

DefaultProperties
{
	MinimumPlayersForEpicUnits = 10
	GDIMainMenuData(8) 				= (BlockType=EPBT_MENU,  id=-1, PTIconTexture=Texture2D'RenXPurchaseMenu.T_Icon_ItemsGDI', iconID=03, hotkey="Q", title="ITEM",		desc="\n\nSuperweapons\nEquipment\nEpic Char",														cost="MENU", type=1)
	NodMainMenuData(8) 				= (BlockType=EPBT_MENU,  id=-1, PTIconTexture=Texture2D'RenXPurchaseMenu.T_Icon_ItemsNod', iconID=04, hotkey="Q", title="ITEM",		 desc="\n\nSuperweapons\nEquipment\nEpic Char",														cost="MENU", type=1 )
}
