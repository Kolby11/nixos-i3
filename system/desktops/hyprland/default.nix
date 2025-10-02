{ config, lib, pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./programs.nix
    ./security.nix
    ./services.nix
  ];
}

