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

function OnPlayerKill(Controller Killer, Controller Victim, Pawn KilledPawn, class<DamageType> damageType)
{
	local Rx_Mutator Rx_Mut;

	Rx_Mut = GetNextRxMutator();
	if (Rx_Mut != None)
	{
    if(UTPawn(KilledPawn) != None)
    {
        if(UTPawn(KilledPawn).GetFamilyInfo() == class'RenX_Epic_Units_GDI_Armoured_Sydney')
        {
            Rx_Game(WorldInfo.Game).CTextBroadCast(3, ":" @ UTPawn(KilledPawn).GetFamilyInfo() @ "  Killed by " @ Killer.GetHumanReadableName(),'Red', 60.0, 3.0);
        }
        else if(UTPawn(KilledPawn).GetFamilyInfo() == class'RenX_Epic_Units_NOD_Raveshaw_Mutant')
        {
            Rx_Game(WorldInfo.Game).CTextBroadCast(3, ":" @ UTPawn(KilledPawn).GetFamilyInfo() @ "  Killed by " @ Killer.GetHumanReadableName(),'Yellow', 60.0, 3.0);
        }
    }
		Rx_Mut.OnPlayerKill(Killer, Victim, KilledPawn, damageType);
	}
}

defaultproperties
{
   Name="RenX_Mutator_Epic_Units"
   ObjectArchetype=UTMutator'utgame.Default__UTMutator'
}
