{
  den.aspects.dolphin = {
    includes = [

    ];

    nixos = { pkgs, ... }: {
      environment.systemPackages = with pkgs; [ kdePackages.qtsvg kdePackages.dolphin ];
    };

    homeManager = {

    };
  };
}
