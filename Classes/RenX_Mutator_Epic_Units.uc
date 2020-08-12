class RenX_Mutator_Epic_Units extends Rx_Mutator;
/*
*
    Author: Merak_Hagen
    Description: Main Class the starts the Mutator.
        - Changes the PurchaseSystem for a custom one, contaning a modified version of 
          Armoured Sydney for GDI and Mutant Raveshaw for NOD.
        - Changes the guns used both by modified Armoured Sydney and Mutant Raveshaw to custom made version of
          Personal Ion Cannon and RailGun, add an extra weapon to each character, Armoured Sydney gets an
          Improved Carbine and Raveshaw get an Improved HeavyPistol
*
*/

function bool CheckReplacement(Actor Other) 
{
    Rx_Game(WorldInfo.Game).DefaultPawnClass = class'RenX_Epic_Units_Pawn';
    Rx_Game(WorldInfo.Game).HudClass = class'RenX_Epic_Units_HUD';

    if(Other.IsA('Rx_TeamInfo')) 
        Rx_Game(WorldInfo.Game).PurchaseSystemClass = class'RenX_Epic_Units_PurchaseSystem';
    return true;
}

defaultproperties
{
   Name="RenX_Mutator_Epic_Units"
   ObjectArchetype=UTMutator'utgame.Default__UTMutator'
}
