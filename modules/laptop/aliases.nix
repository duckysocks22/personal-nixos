{ config, pkgs, ...}:
{
# Aliases
	environment.shellAliases=
	{
	rebuild = "sudo nixos-rebuild switch --flake ~/personal-nixos/";
	nixconf = "sudo nano ~/personal-nixos/hosts/laptop/configuration.nix";
	nixhwconf = "sudo nano ~/personal-nixos/hosts/laptop/hardware-configuration.nix";
	syspkgs = "sudo nano ~/personal-nixos/modules/systempkgs.nix";
	flakeconf = "sudo nano ~/personal-nixos/flake.nix";
	};
}
