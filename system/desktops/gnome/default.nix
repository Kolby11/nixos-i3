{ config, lib, pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./programs.nix
    ./services.nix
  ];
}

