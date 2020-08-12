class RenX_Epic_Units_GFxPurchaseMenu extends Rx_GFxPurchaseMenu;

function TickHUD() 
{
	local Rx_Controller PC;

	if(PC != None)
    {
		foreach `WorldInfoObject.AllControllers(class'Rx_Controller', PC)
		{
			if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_GDI_Armoured_Sydney'
			|| Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_Dummy_Armoured_Sydney')
			{
				ItemMenuButton[3].SetBool("enabled", true);
			}
			else if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_Nod_Raveshaw_Mutant'
			|| Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_Dummy_Mutant_Raveshaw')
			{
				ItemMenuButton[3].SetBool("enabled", true);
			}
		}
	}
	super.TickHUD();
}

DefaultProperties
{
}
