{
  den.aspects.prism-launcher = {
    includes = [

    ];

    nixos =
      { pkgs, ... }:
      {
        environment.systemPackages = with pkgs; [ prismlauncher ];
      };

    homeManager = {

    };
  };
}
