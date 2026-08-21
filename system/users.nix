{ pkgs, ... }: {
    users.defaultUserShell = pkgs.zsh;
    users.users.pinguin = {
        isNormalUser = true;
        extraGroups = [ "wheel" "networkmanager" "dialout" "uucp" "i2c" "plugdev"];
        packages = with pkgs; [
            tree
        ];
    };
}
