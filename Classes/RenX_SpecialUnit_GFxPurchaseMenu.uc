class RenX_SpecialUnit_GFxPurchaseMenu extends Rx_GFxPurchaseMenu;

function TickHUD() 
{
	//local Rx_Controller PC;

	super.TickHUD();
	// foreach `WorldInfoObject.AllControllers(class'Rx_Controller', PC)
	// {
	// 	if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_SpecialUnit_GDI_Armoured_Sydney')
	// 	{
	// 		GDIClassMenuData[7].bEnable = False;
	// 	}
	// 	else if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_SpecialUnit_Nod_Raveshaw_Mutant')
	// 	{
	// 		NodClassMenuData[7].bEnable = False;
	// 	}
	// }
}
