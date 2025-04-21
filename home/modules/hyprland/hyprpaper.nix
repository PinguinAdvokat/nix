{
  # Wallpaper is configured in ../stylix.nix
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "/home/pinguin/wallpapers/1.jpg" ];
      wallpaper = [ "eDP-1,/home/pinguin/wallpapers/1.jpg" ];
    };
  };
}
