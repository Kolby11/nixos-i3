{ config, pkgs, lib, ... }:

{
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    timeout = 5;
  };

  boot.tmp.cleanOnBoot = true;
  boot.supportedFilesystems = [ "ntfs" ];

  environment.systemPackages = with pkgs; [
    # sbctl is optional with plain systemd-boot, remove if not using Secure Boot
  ];
}
