{ config, pkgs, ... }:

{
  stylix = {
    enable = true;
    image = ./config/themes/space_panels.png;
    polarity = "dark";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-mirage.yaml";
    base16Scheme = {
      base00 = "#0c0c1c"; #06060e
      base01 = "#111021"; #0d0c1b
      base02 = "#19172c"; #131229
      base03 = "#9796a4";
      base04 = "#a1a1ad";
      base05 = "#8380c6";
      base06 = "#d7d7ed";
      base07 = "#f2f2f9";
      base08 = "#b6605d";
      base09 = "#b68d5d";
      base0A = "#5db3b6";
      base0B = "#87b65d";
      base0C = "#b3b65d";
      base0D = "#8380c6";
      base0E = "#605db6"; #b0aedb
      base0F = "#5d87b6";
    };

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 20;
    };

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.fira-code;
        name = "FiraCode Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };
      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };
    };

    opacity = {
      terminal = 0.9;
      popups = 0.8;
    };
  };
}