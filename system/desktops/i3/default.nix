{ config, lib, pkgs, ... }:

{
  imports = [
    ./i3.nix
    ./programs.nix
    ./security.nix
    ./services.nix
  ];
}

