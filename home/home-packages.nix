{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # desktop
    nautilus
    telegram-desktop
    spotify
    onlyoffice-desktopeditors
    obs-studio

    # CLI
    cava
    btop

    # coding stuff
    zed-editor

    # WM stuff
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    grim
    slurp
    swappy
  ];
}
