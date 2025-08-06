{ config, pkgs, pkgs-unstable, lib, inputs, ... }:

{
  imports = [
    ./user
  ];
  
  home.username = "mato";
  home.homeDirectory = "/home/mato";
  home.stateVersion = "25.05";
}

