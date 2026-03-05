{ den, ... }:
{
  # host aspect
  den.aspects.legion5 = {
    # host NixOS configuration
    includes = [
      den.aspects.bluetooth
      den.aspects.audio
      den.aspects.systemd
      den.aspects.network-manager
      den.aspects.nvidia
      den.aspects.hyprland
      den.aspects.waybar
      den.aspects.sddm
      den.aspects.vscode
      den.aspects.bibata-cursor
      den.aspects.nerd-jetbrains-mono
    ];

    nixos =
      { pkgs, lib, config, ... }:
      {
        environment.systemPackages = [
          pkgs.hello
          pkgs.git
          pkgs.brightnessctl
          pkgs.kitty
          pkgs.firefox
          ];

        # Timezone
        time.timeZone = "America/Chicago";

        # Hostname
        networking.hostName = "legion5";

        # Allow unfree
        nixpkgs.config.allowUnfree = true;
        hardware.enableRedistributableFirmware = true;

        # Hardware
        boot.initrd.availableKernelModules = [ "xhci_pci" "nvme" "ahci" "usb_storage" "usbhid" "sd_mod" ];
        boot.initrd.kernelModules = [ ];
        boot.kernelModules = [ "kvm-amd" ];
        boot.extraModulePackages = [ ];

        fileSystems."/" =
          { device = "/dev/disk/by-uuid/c1a50ef4-9c21-4fa6-9bb2-0448b8dcf2d7";
            fsType = "ext4";
          };

        fileSystems."/boot" =
          { device = "/dev/disk/by-uuid/502C-D86F";
            fsType = "vfat";
            options = [ "fmask=0077" "dmask=0077" ];
          };

        swapDevices =
          [ { device = "/dev/disk/by-uuid/d039add8-809f-4801-a8a4-0fcbff91c6b8"; }
          ];
        
        hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

        # Flakes and nix-command
        nix.settings.experimental-features = [ "nix-command" "flakes" ];
      };

    # host provides default home environment for its users
    homeManager =
      { pkgs, ... }:
      {
        home.packages = [
          pkgs.vim
          pkgs.ghostty
          ];

	nixpkgs.config.allowUnfree = true;
      };
  };
}
