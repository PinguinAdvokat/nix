{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # desktop
    nemo
    nautilus
    telegram-desktop
    #yandex-music
    spotify
    libreoffice
    obs-studio
    steam

    # CLI
    cava
    btop

    # coding stuff
    vscode

    # WM stuff
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    grim
    slurp
    swappy
    hyprsome
  ];
}
