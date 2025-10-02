{ config, pkgs, ... }:

{
  environment = {
    gnome.excludePackages = with pkgs; [ 
      gnome-tour
      gnome-user-docs 
    ];

    systemPackages = with pkgs; [
    ];
  };
}
