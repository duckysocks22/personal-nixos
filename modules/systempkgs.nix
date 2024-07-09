{ config, pkgs, inputs, ... }:
{
	environment.systemPackages = with pkgs; [
		lf
		libvirt
		qemu_kvm
		virt-manager
		syncthing
		wezterm
		gamemode
		zram-generator
		goverlay
		mangohud
		gparted
		ntfs3g
		vscode
	];

}
