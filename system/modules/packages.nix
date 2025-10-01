
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    home-manager
    btop
    git
    killall
    vim
    neovim
    openssl
    openssl.dev
    pkg-config
    wget
  ];
}

