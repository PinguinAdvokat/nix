{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # desktop
    mission-center
    nmap
    unrar
    packwiz
    shotcut
    prismlauncher
    openvpn
    telegram-desktop
    unzip
    spotify
    libreoffice
    obs-studio
    steam
    mpv
    postman
    qbittorrent

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
    blueman
  ];
}
