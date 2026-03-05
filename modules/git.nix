{
  den.aspects.git = {
    nixos = {
      programs.git.enable = true;
    };

    homeManager = {
      programs.git = {
        enable = true;
        settings.user = {
          name = "Aaron Davis";
          email = "aaron.m.davis@comcast.net";
        };
      };
    };
  };
}
