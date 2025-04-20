{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      flake = "sudo nixos-rebuild switch --flake ~/nix/";
      home-flake = "home-manager switch --flake ~/nix/";
    };
 
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "arrow";
    };
  };
}
