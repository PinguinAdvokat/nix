{

	description = "im too stuiped for it";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
		nur.url = "github:nix-community/NUR";
		home-manager = {
			url = "github:nix-community/home-manager/release-26.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    chillpill-shell = {
      url = "github:LUCKYS1NGHH/chillpill-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
		stylix.url = "github:nix-community/stylix/release-26.05";
    comfyui-nix.url = "github:utensils/comfyui-nix";
	};


	outputs = { self, nixpkgs, ... }@inputs:
		let
			system = "x86_64-linux";
			username = "pinguin";
		in {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;
			specialArgs = { inherit inputs username system; };
			modules = [
				./configuration.nix
				inputs.home-manager.nixosModules.default
				inputs.stylix.nixosModules.stylix
			];
		};
	};
}
