{ inputs, pkgs, ... }: {
    programs.zsh.enable = true;
    programs.throne = {
        enable = true;
        tunMode.enable = true;
        tunMode.setuid = true;
    };
    programs.nix-ld.enable = true;
    programs.hyprland = {
        enable = true;
        package = inputs.hyprland.packages.${pkgs.system}.hyprland;
        xwayland.enable = true;
    };
}
