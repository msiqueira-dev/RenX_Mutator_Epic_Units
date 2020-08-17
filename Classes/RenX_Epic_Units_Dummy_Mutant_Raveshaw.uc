class RenX_Epic_Units_Dummy_Mutant_Raveshaw extends Rx_Weapon_RepairTool;

simulated static function bool IsBuyable(Rx_Controller C)
{
    foreach `WorldInfoObject.AllControllers(class'Rx_Controller', C)
    {
        if(Rx_Pawn(C.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_Nod_Raveshaw_Mutant' ||
           Rx_Pawn(C.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_Dummy_Mutant_Raveshaw')
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
    return Caps("Mutant Raveshaw");
}

simulated static function string GetPurchaseDescription()
{
    return "Armour: Flak\nSpeed: 110\nTiberium A.Rifle, Special H.Pistol\nEMP Grenade\nAnti-Tank Mines\n+Anti-Armour";
}

DefaultProperties
{
    CustomWeaponName = "Mutant Raveshaw";
    Price = 2400;
    PTIconTexture = Texture2D'RenXPurchaseMenu.T_Icon_Weapon_Railgun';
}
