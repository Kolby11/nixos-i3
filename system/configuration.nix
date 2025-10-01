{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules
    ./desktops
  ];

  system.stateVersion = "25.05"; 
}

