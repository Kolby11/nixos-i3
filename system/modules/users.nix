{ config, pkgs, ... }:

{
  users.users.mato = {
    isNormalUser = true;
    extraGroups = [ 
    "wheel" 
    "networkmanager"
    ]; 
  };
}
