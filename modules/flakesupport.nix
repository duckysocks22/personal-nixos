{ config, pkgs,... }:

{
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
