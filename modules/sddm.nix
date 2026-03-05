{
  den.aspects.sddm = {
    nixos = {
      services.displayManager.sddm = {
        enable = true;
        wayland.enable = true;
      };
      services.displayManager.autoLogin = {
        enable = true;
        user = "aaron";
      };
    };
  };
}
