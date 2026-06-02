{ pkgs, ... }: {
    users.defaultUserShell = pkgs.zsh;
    users.users.pinguin = {
        isNormalUser = true;
        extraGroups = [ "wheel" "networkmanager" ];
        packages = with pkgs; [
            tree
        ];
    };
}