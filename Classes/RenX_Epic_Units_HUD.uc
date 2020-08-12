class RenX_Epic_Units_HUD extends Rx_HUD;

simulated function PostBeginPlay()
{
    super.PostBeginPlay();
    Rx_Controller(PlayerOwner).PTMenuClass = class'RenX_Epic_Units_GFxPurchaseMenu';
}
