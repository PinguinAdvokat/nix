{

	description = "im too stuiped for it";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
		nur.url = "github:nix-community/NUR";
		home-manager = {
			url = "github:nix-community/home-manager/release-26.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		hyprland.url = "github:hyprwm/Hyprland/v0.55.0";
	};

	outputs = { self, nixpkgs, home-manager, ... }@inputs:
		let
			system = "x86_64-linux";
			username = "pinguin";
		in {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;
			specialArgs = { inherit inputs username system; };
			modules = [ ./configuration.nix ]; 
		};
		
		homeConfigurations.${username	} = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			extraSpecialArgs = { inherit inputs username; };
			modules = [ ./home/home.nix ];
		};
	};

}
