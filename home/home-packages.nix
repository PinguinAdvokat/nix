{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # desktop
    nemo
    telegram-desktop

    # CLI
    cava
    btop

    # coding stuff

    # WM stuff
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
  ];
}
