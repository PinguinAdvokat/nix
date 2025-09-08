{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    kitty
    firefox
    home-manager
    chromium
    neofetch
    pfetch
    pavucontrol
    hyprpolkitagent
    discord
    wireplumber
    go
    waypaper
    swww
    wl-clipboard
    wl-clip-persist
    python3
    pipx
    kdiskmark
   ];
}
