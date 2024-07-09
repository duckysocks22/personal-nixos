# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "thunderbolt" "vmd" "nvme" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/813e3018-7982-4173-b3a1-7347a71a8d16";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."luks-798b3c61-dfc7-453b-9cfe-8be94caa066d".device = "/dev/disk/by-uuid/798b3c61-dfc7-453b-9cfe-8be94caa066d";
  boot.initrd.luks.devices."c85e0d2c-4b27-4d73-a92b-9f77598ebc2a".device = "/dev/disk/by-uuid/c85e0d2c-4b27-4d73-a92b-9f77598ebc2a";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/685E-1A81";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/8bbcaf8b-6887-4d6f-9e7d-4ae8c8135a19"; }
    ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp44s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlo1.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
