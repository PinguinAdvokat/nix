{ config, pkgs, ... }: {
	home = {
		username = "pinguin";
		homeDirectory = "/home/pinguin";
		stateVersion = "25.05";
	};
	
	imports = [
		./modules/bundle.nix
		./home-packages.nix
	];
}
