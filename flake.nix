{

	description = "im too stuiped for it";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
		nur.url = "github:nix-community/NUR";
		home-manager = {
			url = "github:nix-community/home-manager/release-25.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		hardened-firefox = {
			url = "github:arkenfox/user.js";
			flake = false;
		};
	};

	outputs = { nixpkgs, home-manager, ... }:
		let
			system = "x86_64-linux";
		in {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;
			modules = [ ./configuration.nix ]; 
		};
		
		homeConfigurations.pinguin = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ ./home/home.nix ];
		};
	};

}
