{
  den.aspects.nerd-jetbrains-mono = {
    nixos = {
      fonts.packages = with pkgs; [
        nerd-fonts.jetbrains-mono
      ];
    };

    homeManager = {
      
    };
  };
}