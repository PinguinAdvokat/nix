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
    p7zip
    onlyoffice-desktopeditors
    obs-studio
    steam
    mpv
    qbittorrent
    kdiskmark
    discord
    firefox
    kitty
    kdePackages.dolphin
    nemo-with-extensions
    file-roller

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
    dconf
  ];
}
