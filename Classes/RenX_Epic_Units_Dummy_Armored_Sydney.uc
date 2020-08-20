class RenX_Epic_Units_Dummy_Armored_Sydney extends Rx_Weapon_RepairTool;

simulated static function bool IsBuyable(Rx_Controller C)
{
    foreach `WorldInfoObject.AllControllers(class'Rx_Controller', C)
    {
        if(Rx_Pawn(C.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_GDI_Armored_Sydney' ||
          Rx_Pawn(C.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_Dummy_Armored_Sydney')
        {
            return false;
        }
    }
    return true;
}

simulated static function int GetPrice(byte TeamID)
{
    return default.Price;
}

simulated static function string GetPurchaseTitle()
{
    return Caps("Armored Sydney");
}

simulated static function string GetPurchaseDescription()
{
    return "Armor: Flak\nSpeed: 95\nTiberium A.Rifle, Special Carbine\nImp. EMP Grenade\nDouble C4\nAnti-Tank Mines\n+Anti-Armor";
}

DefaultProperties
{
    CustomWeaponName = "Armored Sydney";
    Price = 2400;
    PTIconTexture = Texture2D'RenXPurchaseMenu.T_Icon_Weapon_PIC';
}
