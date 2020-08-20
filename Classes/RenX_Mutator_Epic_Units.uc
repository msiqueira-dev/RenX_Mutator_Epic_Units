class RenX_Mutator_Epic_Units extends Rx_Mutator;
/*
*
    Author: Merak_Hagen
    Description: Main Class the starts the Mutator.
        - Changes the PurchaseSystem for a custom one, contaning a modified version of 
          Armored Sydney for GDI and Mutant Raveshaw for NOD.
*
*/

function bool CheckReplacement(Actor Other) 
{
    `Log("Starting Epic Units");
    
    if (InStr(WorldInfo.GetMapName(true), "BH-") == -1)
    {
        Rx_Game(WorldInfo.Game).DefaultPawnClass = class'RenX_Epic_Units_Pawn';
        Rx_Game(WorldInfo.Game).HudClass = class'RenX_Epic_Units_HUD';
        if(Other.IsA('Rx_TeamInfo')) 
            Rx_Game(WorldInfo.Game).PurchaseSystemClass = class'RenX_Epic_Units_PurchaseSystem';
    }
    return true;
}

function OnPlayerKill(Controller Killer, Controller Victim, Pawn KilledPawn, class<DamageType> damageType)
{
    super.OnPlayerKill(Killer, Victim, KilledPawn, damageType);
	if(UTPawn(KilledPawn).GetFamilyInfo() == class'RenX_Epic_Units_GDI_Armored_Sydney')
    {
        Rx_Game(WorldInfo.Game).CTextBroadCast(3, "Armored Sydney  Killed by" @ Killer.GetHumanReadableName(),'Red', 60.0, 3.0);
    }
    if(UTPawn(KilledPawn).GetFamilyInfo() == class'RenX_Epic_Units_NOD_Raveshaw_Mutant')
    {
        Rx_Game(WorldInfo.Game).CTextBroadCast(3, "Mutant Raveshaw  Killed by" @ Killer.GetHumanReadableName(),'Yellow', 60.0, 3.0);
    }
}

defaultproperties
{
   Name="RenX_Mutator_Epic_Units"
   ObjectArchetype=UTMutator'utgame.Default__UTMutator'
}
