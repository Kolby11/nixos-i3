{ config, pkgs, lib, ... }:

let
  configDir = ../config;
in
{
  home.file = {
    ".config/kitty".source = "${configDir}/kitty";
    # Hyprland — symlink only the files that will not be modified by user
    ".config/hypr" = {
      source = "${configDir}/hypr";
      recursive = true;
    };
    ".config/swayidle".source = "${configDir}/swayidle";
    ".config/swaylock".source = "${configDir}/swaylock";
    ".config/wlogout".source = "${configDir}/wlogout";
    ".config/waybar".source = "${configDir}/waybar";
    ".config/btop".source = "${configDir}/btop";
    ".config/wofi".source = "${configDir}/wofi";
    ".config/mako".source = "${configDir}/mako";
  };
}

