{ inputs, pkgs, ... }: {
    programs.niri.enable = true;
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

    programs.steam = {
      enable = true;
      # Фикс черного экрана: принудительно добавляем флаг совместимости
      package = pkgs.steam.override {
        extraArgs = "-system-composer";
      };
    };

    environment.sessionVariables = {
      QT_QPA_PLATFORM = "wayland;xcb";
    };
}
