{
  den.aspects.usb = {
    includes = [

    ];

    nixos = {
      services.udisks2.enable = true;
    };

    homeManager = {

    };
  };
}
