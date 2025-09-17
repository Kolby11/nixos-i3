{ config, pkgs, ... }:

{
  services = {
    dbus.enable = true;
    openssh.enable = true;

    displayManager = {
      sddm = {
        enable = true;
        theme = "catppuccin-mocha";
        package = pkgs.kdePackages.sddm;
      };
      defaultSession = "none+i3";
    };

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
      # videoDrivers = [ "amdgpu" "virtualbox" ];
    };

    picom.enable = true;
  };
}