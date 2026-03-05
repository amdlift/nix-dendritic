{
  den.aspects.hyprland = {
    nixos = {
      programs.hyprland.enable = true;
    };

    homeManager = {
      wayland.windowManager.hyprland = {
        enable = true;
        settings = {
          monitor = ",preferred, auto, auto";
          env = [
            "LIBVA_DRIVER_NAME,nvidia"
            "__GLX_VENDOR_LIBRARY_NAME,nvidia"
          ];
          bind = [
            "SUPER, Q, exec, ghostty"
          ];
        };
      };
    };
  };
}
