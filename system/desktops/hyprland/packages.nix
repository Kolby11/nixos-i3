{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    polybar
    libnotify
    mako
    rofi
    swayidle
    swaylock-effects
    wlogout
    wl-clipboard
    lxqt.pcmanfm-qt
  ];
}
