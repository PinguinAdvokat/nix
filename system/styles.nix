{ pkgs, ... }: {
    fonts.packages = with pkgs; [ 
        font-awesome
        jetbrains-mono
        inter
        nerd-fonts.droid-sans-mono
    ];

    qt.enable = true;
    qt.platformTheme = "kde";
    qt.style = "adwaita";
}