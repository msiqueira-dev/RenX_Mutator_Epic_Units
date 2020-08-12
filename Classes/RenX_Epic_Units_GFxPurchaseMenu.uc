class RenX_Epic_Units_GFxPurchaseMenu extends Rx_GFxPurchaseMenu;

function TickHUD() 
{
	local Rx_Controller PC;

	super.TickHUD();
	foreach `WorldInfoObject.AllControllers(class'Rx_Controller', PC)
	{
		if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_GDI_Armoured_Sydney')
		{
			GDIClassMenuData[7].bEnable = False;
		}
		else if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_Nod_Raveshaw_Mutant')
		{
			NodClassMenuData[7].bEnable = False;
		}
	}
}

DefaultProperties
{
	GDIItemMenuData(3) = (BlockType=EPBT_ITEM, id=3, PTIconTexture=Texture2D'RenXPurchaseMenu.T_Icon_Weapon_PIC', iconID=44, hotkey="4", title="Armoured Sydney", desc="Armour: Flak\nSpeed: 98\nSide: Tiberium AutoRifle and Special Carbine\nEMP Grenade\nAnti-Tank Mines\n+Anti-Armour", cost="2200",type=2,damage=6,range=5,rateOfFire=2,magCap=2, bEnable = true);
	NODItemMenuData(3) = (BlockType=EPBT_ITEM, id=3, PTIconTexture=Texture2D'RenXPurchaseMenu.T_Icon_Weapon_Railgun', iconID=44, hotkey="4", title="Mutant Raveshaw", desc="Armour: Flak\nSpeed: 110\nSide: Tiberium AutoRifle and Special Heavy Pistol\nEMP Grenade\nAnti-Tank Mines\n+Anti-Armour", cost="2200",type=2,damage=6,range=5,rateOfFire=2,magCap=2, bEnable = true);
}
