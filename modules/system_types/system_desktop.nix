{ den, ... }:
{
  den.aspects.system_desktop = {
    includes = [
      den.aspects.system_minimal

      den.aspects.audio
      den.aspects.bluetooth
      den.aspects.printing
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
