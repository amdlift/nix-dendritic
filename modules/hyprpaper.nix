{
  den.aspects.hyprpaper = {
    nixos = {

    };

    homeManager = {
      services.hyprpaper = {
        enable = true;
        settings = {
          splash = false;
          wallpaper = {
            monitor = "";
            path = "~/Pictures/wallpapers/mountain1_wallhaven.png";
          };
        };
      };
    };
  };
}