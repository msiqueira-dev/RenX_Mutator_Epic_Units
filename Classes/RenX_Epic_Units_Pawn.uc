
class RenX_Epic_Units_Pawn extends Rx_Pawn;

var const float MaxStaminaMutantRaveshaw;

event TakeDamage(int Damage, Controller EventInstigator, vector HitLocation, vector Momentum, class<DamageType> DamageType, optional TraceHitInfo HitInfo, optional Actor DamageCauser)
{    
    super.takeDamage(damage, EventInstigator,HitLocation,Momentum,DamageType,HitInfo,DamageCauser);
}

simulated function Tick(float DeltaTime)
{	
    local PlayerController PC;
    PC = PlayerController(Controller);
    if(PC != None)
    {
        
        if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_Nod_Raveshaw_Mutant')
        {
            StaminaRegenRate=25.0f;
            SprintSpeed=460.0;
        }
        else if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() == class'RenX_Epic_Units_GDI_Armored_Sydney')
        {
            StaminaRegenRate=6.0f;
            SprintSpeed=400.0;
        }
    }
	super.Tick(DeltaTime);
}

DefaultProperties
{
}
