{ config, pkgs, ... }: {
	home = {
		username = "pinguin";
		homeDirectory = "/home/pinguin";
		stateVersion = "26.05";
	};

	imports = [
		./packages.nix
		./modules
	];
}
