{ inputs, pkgs, ... }: {
    programs.zsh.enable = true;
    programs.throne = {
        enable = true;
        tunMode.enable = true;
        tunMode.setuid = true;
    };
    programs.nix-ld.enable = true;
    programs.nix-ld. libraries = with pkgs; [
    stdenv.cc.cc.lib
    zlib
    libGL
    glib
    zstd
    fuse3
    icu
    nss
    openssl
    curl
    expat
    ];
    programs.hyprland.enable = true;

    programs.winbox = {
    	enable = true;
      openFirewall = true;
    };
    environment.sessionVariables = {
      QT_QPA_PLATFORM = "wayland;xcb";
    };
}
