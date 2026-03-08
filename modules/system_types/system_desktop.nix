{ den, ... }:
{
  den.aspects.system_desktop = {
    includes = [
      den.aspects.system_minimal

      den.aspects.audio
      den.aspects.bluetooth
      den.aspects.printing
      den.aspects.usb
    ];

    nixos =
      { pkgs, ... }:
      {
        environment.systemPackages = with pkgs; [
          networkmanagerapplet
          blueman
        ];
      };
  };
}
