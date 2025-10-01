{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      windowManager.i3 = {
        enable = true;
        package = pkgs.i3-gaps;
        extraPackages = with pkgs; [
          i3status
          i3lock
          i3blocks
        ];
      };
      xkb = {
        layout = "us,sk";
        options = "grp:alt_shift_toggle";
      };
    };

    picom = {
      enable = true;
      settings = {
        corner-radius = 14;
      };
    };
  };
}