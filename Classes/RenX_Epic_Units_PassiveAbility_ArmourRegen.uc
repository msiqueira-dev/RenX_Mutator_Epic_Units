class RenX_Epic_Units_PassiveAbility_ArmourRegen extends Rx_PassiveAbility;

var int TickHealthHealAmount;
var float TickInterval;

simulated function Init(Pawn InitiatingPawn, byte SlotNum)
{
    super.Init(InitiatingPawn, SlotNum);

    SetTimer(TickInterval, true, nameof(HealHealth));
} 

function HealHealth()
{
    local Rx_Pawn P;

    P = Rx_Pawn(UsingPawn);

    if (P != None)
    {
        if (P.Armor + TickHealthHealAmount >= P.ArmorMax)
            P.Armor = P.ArmorMax;
        else
            P.Armor += TickHealthHealAmount;
    }
}

DefaultProperties
{
    TickHealthHealAmount=5
    TickInterval=2.0f
}
