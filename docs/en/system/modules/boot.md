# Boot

## Grub

[Available grub options](https://search.nixos.org/options?channel=25.05&query=boot.loader.grub)
```nix
boot.loader.grub = {
    enable = true;
    useOSProber = true;
    copyKernels = true;
    efiInstallAsRemovable = true;
    efiSupport = true;
    fsIdentifier = "label";
    devices = [ "nodev" ];
    gfxmodeEfi = "1920x1080";
    gfxpayloadBios = "keep";
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
```
## Plymouth

To enable plymout
```nix
boot.plymouth = {
      enable = true;
};
```
