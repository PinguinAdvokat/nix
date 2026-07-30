{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      flake = "sudo nixos-rebuild switch --flake ~/nix/";
      ai = "llama-server --models-dir models --api-key Skyler1626 --port 8080 --host 0.0.0.0";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "arrow";
    };
    
    initExtra = ''
      export LD_LIBRARY_PATH=${pkgs.libGL}/lib/
    '';
  };
}
