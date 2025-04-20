{ config, pkgs, ... }: {
	home = {
		username = "pinguin";
		homeDirectory = "/home/pinguin";
		stateVersion = "24.11";
	};
	
	imports = [
		./modules/bundle.nix
		./home-packages.nix
	];
}
