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
    libreoffice
    obs-studio
    steam
    mpv
    qbittorrent

    # CLI
    cava
    btop

    # coding stuff
    vscode

    # WM stuff
    xdg-desktop-portal-gtk
    grim
    slurp
    swappy
    hyprsome
    blueman
  ];
}
