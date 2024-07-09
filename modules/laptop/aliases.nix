{ config, pkgs, ...}:
{
# Aliases
	environment.shellAliases=
	{
	rebuild = "sudo nixos-rebuild switch --flake ~/nixos/";
	nixconf = "sudo nano ~/nixos/hosts/laptop/configuration.nix";
	nixhwconf = "sudo nano ~/nixos/hosts/laptop/hardware-configuration.nix";
	syspkgs = "sudo nano ~/nixos/modules/systempkgs.nix";
	flakeconf = "sudo nano ~/nixos/flake.nix";
	};
}
