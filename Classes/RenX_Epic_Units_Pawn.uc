
class RenX_Epic_Units_Pawn extends Rx_Pawn;

var const float MaxStaminaMutantRaveshaw;

simulated function bool TakeHeadShot(const out ImpactInfo Impact, class<DamageType> HeadShotDamageType, int HeadDamage, float AdditionalScale, controller InstigatingController, bool bRocketDamage, optional Weapon ProjectileWeapon)
{
    local PlayerController PC;
    PC = PlayerController(Controller);
    if(PC != None)
    {
        if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() != class'RenX_Epic_Units_GDI_Armoured_Sydney' &&
        Rx_Pawn(PC.Pawn).GetRxFamilyInfo() != class'RenX_Epic_Units_Nod_Raveshaw_Mutant')
            return super.TakeHeadShot(Impact, HeadShotDamageType, HeadDamage,AdditionalScale,InstigatingController, bRocketDamage, ProjectileWeapon);
        else return false;
    }
    else return false;
}

simulated function Tick(float DeltaTime)
{	
    local PlayerController PC;
    PC = PlayerController(Controller);
    if(PC != None)
    {
        if(Rx_Pawn(PC.Pawn).GetRxFamilyInfo() != class'RenX_Epic_Units_Nod_Raveshaw_Mutant')
        {
            StaminaRegenRate=25.0f;
            SprintSpeed=460.0;
        }
    }
	super.Tick(DeltaTime);
}

DefaultProperties
{
}
