{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    waybar
    swayidle
    swaylock-effects
    wlogout
    wl-clipboard
    lxqt.pcmanfm-qt
  ];
}
