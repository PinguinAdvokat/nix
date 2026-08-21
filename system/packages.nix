{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    openrgb
    llama-cpp-rocm
    lmstudio
    google-chrome
    uv
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

    libxcb-cursor
    xorg.libxcb
   ];
}
