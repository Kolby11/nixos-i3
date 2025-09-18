{ config, pkgs, ... }:

{
  stylix = {
    enable = true;
    # image = ./home/themes/space_panels.png;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-mirage.yaml";

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
  };
}