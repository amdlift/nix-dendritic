{
  den.aspects.ssh = {
    includes = [

    ];

    nixos = {
      services.openssh = {
        enable = true;
        openFirewall = true;
        settings = {
          PasswordAuthentication = true;
          PermitRootLogin = "no";
        };
      };
    };

    homeManager = {

    };
  };
}
