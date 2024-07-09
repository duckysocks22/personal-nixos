{ config, pkgs,... }:

{
imports = [
	# Include the results of the hardware scan.
	../hardware-configuration.nix
];

# ......

# Enable the Flakes feature and the accompanying new nix command-line too
nix.settings.experimental-features = [ "nix-command" "flakes" ];
environment.systemPackages = with pkgs; [
	git
	vim
	wget
	curl
];
environment.variables.EDITOR = "nano";

}
