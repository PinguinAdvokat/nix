{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # desktop
    nemo
    nautilus
    telegram-desktop
    #yandex-music
    spotify
    zed-editor
    libreoffice
    obs-studio
    v2rayn  

    # CLI
    cava
    btop

    # coding stuff

    # WM stuff
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    grim
    slurp
    swappy
  ];
}
