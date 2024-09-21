{ config, pkgs, ...}:
{
# Aliases
	environment.shellAliases=
	{
	rebuild = "sudo nixos-rebuild switch --flake ~/personal-nixos/";
	nixconf = "sudo nano ~/personal-nixos/hosts/vm/configuration.nix";
	nixhwconf = "sudo nano ~/personal-nixos/hosts/vm/hardware-configuration.nix";
	syspkgs = "sudo nano ~/personal-nixos/modules/systempkgs.nix";
	flakeconf = "sudo nano ~/personal-nixos/etc/nixos/flake.nix";
	techniclauncher = "java -jar ~/personal-nixos/executables/TechnicLauncher.jar";
	};
}
