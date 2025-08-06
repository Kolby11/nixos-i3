{ pkgs, ... }:

{
  fonts.fontconfig.enable = true;
  # fonts.fontconfig.monospace = "Ubuntu Mono";
  home.packages = with pkgs; [
    nerd-fonts.ubuntu-mono
  ];
}


