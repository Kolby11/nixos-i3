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
      windowManager.i3.enable = true;
      xkb = {
        layout = "us,sk";
        options = "grp:alt_shift_toggle";
      };
      # videoDrivers = [ "amdgpu" "virtualbox" ];
    };
  };
}