{
  den.aspects.tailscale = {
    includes = [

    ];

    nixos = {
      services.tailscale.enable = true;
    };

    homeManager = {

    };
  };
}
