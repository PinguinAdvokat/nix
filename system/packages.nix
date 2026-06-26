{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
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

    rocmPackages.rocminfo
    rocmPackages.rocm-smi
    rocmPackages.clr
    rocmPackages.hipblas
    rocmPackages.rocblas
    rocmPackages.miopen
    
    libxcb-cursor
    xorg.libxcb
   ];
}
