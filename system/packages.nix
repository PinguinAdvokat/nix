{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    file
    musl
    dig
    net-tools
    adwaita-qt6
    gcc
    vim
    wget
    git
    fastfetch
    pfetch
    pavucontrol
    hyprpolkitagent
    wireplumber
    go
    wl-clipboard
    wl-clip-persist
    python3
    bluez
    easyeffects
   ];
}
