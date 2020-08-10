class RenX_SpecialUnit_Mutator extends Rx_Mutator;
/*
*
    Author: Merak_Hagen
    Description: Main Class the starts the Mutator.
        - Changes the PurchaseSystem for a custom one, contaning a modified version of 
          Armoured Sydney for GDI and Mutant Raveshaw for NOD.
        - Changes the guns used both by modified Armoured Sydney and Mutant Raveshaw to custom made version of
          Personal Ion Cannon and RailGun, add an extra weapon to each character, Armoured Sydney gets an
          Improved Carbine and Raveshaw get an Improved HeavyPistol

    Run And Test: 
    open CNC-Walls?mutator=RenX_SpecialUnit_Package.RenX_SpecialUnit_Mutator
    UDK.exe CNC-Walls?mutator=RenX_SpecialUnit_Package.RenX_SpecialUnit_Mutator

    Server:
    E:/Games/Renegade_X_SDK-7634M/Development/Src/RenX_SpecialUnit_Package/Classes/RenX_SpecialUnit_Server_Test
*
*/

function bool CheckReplacement(Actor Other) 
{
    if(Other.IsA('Rx_TeamInfo')) 
    {  
        Rx_Game(WorldInfo.Game).PurchaseSystemClass = class'RenX_SpecialUnit_PurchaseSystem';
    }
    if (Other.IsA('Rx_InventoryManager_GDI_Sydney_Suit'))
    {
        Rx_InventoryManager_GDI_Sydney_Suit(Other).PrimaryWeapons[0] = class'RenX_SpecialUnit_Weapon_PersonalIonCannon';
        Rx_InventoryManager_GDI_Sydney_Suit(Other).PrimaryWeapons[1] = class'RenX_SpecialUnit_Weapon_SpecialCarbine';
    }
     if (Other.IsA('Rx_InventoryManager_Nod_Raveshaw_Mutant'))
    {
        Rx_InventoryManager_Nod_Raveshaw_Mutant(Other).PrimaryWeapons[0] = class'RenX_SpecialUnit_Weapon_RailGun';
        Rx_InventoryManager_Nod_Raveshaw_Mutant(Other).PrimaryWeapons[1] = class'RenX_SpecialUnit_Weapon_SpecialHeavyPistol';
    }
    return true;
}

defaultproperties
{
   Name="RenX_SpecialUnit_Mutator"
   ObjectArchetype=UTMutator'utgame.Default__UTMutator'
}
