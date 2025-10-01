{ config, pkgs, ... }: 

{
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      kdePackages.xdg-desktop-portal-kde
    ];
  };

  programs = {
    i3lock.enable = true;
	};
}
