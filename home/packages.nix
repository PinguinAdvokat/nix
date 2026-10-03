{ pkgs, ... }: {
  home.packages = with pkgs; [
    # desktop
    docker-compose
    postman
    wlvncc
    claude-code
    ffmpeg
    quickshell
    spotify
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
    mpv
    qbittorrent
    discord
    firefox
    kdePackages.dolphin
    nemo-with-extensions
    file-roller

    # CLI
    cava
    btop

    # coding stuff
    vscodium
    protobuf
    protoc-gen-go
    protoc-gen-go-grpc

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
