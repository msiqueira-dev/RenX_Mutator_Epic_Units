class RenX_SpecialUnit_PassiveAbility_HealthRegen extends Rx_PassiveAbility;

var int TickArmourHealAmount;
var float TickInterval;

//Initialize and return an ID to replicate
simulated function Init(Pawn InitiatingPawn, byte SlotNum)
{
    super.Init(InitiatingPawn, SlotNum);

    SetTimer(TickInterval, true, nameof(HealArmour));
} 

function HealArmour()
{
    local Rx_Pawn P;

    P = Rx_Pawn(UsingPawn);

    if (P != None)
    {
        if (P.Health + TickArmourHealAmount >= P.HealthMax)
            P.Health = P.HealthMax;
        else
            P.Health += TickArmourHealAmount;
    }
}

DefaultProperties
{
    TickArmourHealAmount=5
    TickInterval=2.0f
}
