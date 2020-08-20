class RenX_Epic_Units_PassiveAbility_HealthRegen extends Rx_PassiveAbility;

var int TickArmorHealAmount;
var float TickInterval;

//Initialize and return an ID to replicate
simulated function Init(Pawn InitiatingPawn, byte SlotNum)
{
    super.Init(InitiatingPawn, SlotNum);

    SetTimer(TickInterval, true, nameof(HealArmor));
} 

function HealArmor()
{
    local Rx_Pawn P;

    P = Rx_Pawn(UsingPawn);

    if (P != None)
    {
        if (P.Health + TickArmorHealAmount >= P.HealthMax)
            P.Health = P.HealthMax;
        else
            P.Health += TickArmorHealAmount;
    }
}

DefaultProperties
{
    TickArmorHealAmount=6
    TickInterval=2.0f
}
