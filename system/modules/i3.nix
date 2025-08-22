{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    polybar
    libnotify
    mako
    kitty
    swayidle
    swaylock-effects
    wlogout
    wl-clipboard
    rofi
    lxqt.pcmanfm-qt
  ];
}
