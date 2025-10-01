{ config, pkgs, lib, ... }:

{
  boot.loader = {
    timeout = 5;

    efi = {
      efiSysMountPoint = "/boot";
    };

    grub = {
      enable = true;
      useOSProber = true;
      copyKernels = true;
      efiInstallAsRemovable = true;
      efiSupport = true;
      fsIdentifier = "label";
      devices = [ "nodev" ];
      extraEntries = "
          menuentry 'Reboot' {
            reboot
          }
          menuentry 'Poweroff' {
            halt
          }
      ";
    };
  };

  boot.tmp.cleanOnBoot = true;
  boot.supportedFilesystems = [ "ntfs" ];

  environment.systemPackages = with pkgs; [
    # sbctl is optional with plain systemd-boot, remove if not using Secure Boot
  ];
}
