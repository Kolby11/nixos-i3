{ config, pkgs, ... }:

{
  networking = {
		hostName = "nixos";
		# wireless.enable = true;
		networkmanager.enable = true;
		enableIPv6 = false;
  };
}
