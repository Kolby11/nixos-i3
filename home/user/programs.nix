{ inputs, ... }:

{
  programs = {
    home-manager.enable = true;

    kitty = {
      enable = true;
    };

    firefox = {
      enable = true;
      # profiles.mato = {
      #   extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
      #   ];
      # };
    };

    vscode = {
      enable = true;
      # extensions = with pkgs.vscode-extensions; [
      # ];
    };
  };
}