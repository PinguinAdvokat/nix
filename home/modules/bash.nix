{
	programs.bash = {
		enable = true;
		shellAliases = {
			test = "ls";
			flake = "sudo nixos-rebuild switch --flake ~/nix/";
			home-flake = "home-manager switch --flake ~/nix/";
		};
	};
}
