{ den, ... }:
{
  # user aspect
  den.aspects.aaron = {
    includes = [
      den.provides.primary-user
      (den.provides.user-shell "bash")
      den.aspects.git
    ];

    homeManager =
      { pkgs, ... }:
      {
        home.packages = [ pkgs.htop ];
      };

    # user can provide NixOS configurations
    # to any host it is included on
    # nixos = { pkgs, ... }: { };
  };
}
