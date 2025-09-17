{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
    nerd-fonts.ubuntu-mono
  ];

  fonts.fontconfig = {
    enable = true;
    # antialias = true;

    defaultFonts = {
      monospace = [
        "FiraCode Nerd Font Mono"
        "UbuntuMono Nerd Font Mono"
      ];
    };
  };
}


