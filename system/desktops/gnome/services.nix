{ config, pkgs, ... }:

{
  services = {
    xserver.desktopManager.gnome.enable = true;

    # Disable installing GNOME's suite of applications
    # and only be left with GNOME shell.
    gnome = {
      core-apps.enable = false;
      core-developer-tools.enable = false;
      games.enable = false;
    };
  };
}