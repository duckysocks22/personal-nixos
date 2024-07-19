{ config, pkgs, inputs, ... }:
{
	environment.systemPackages = with pkgs; [
		lf
		libvirt
		qemu_kvm
		virt-manager
		syncthing
		gamemode
		zram-generator
		goverlay
		mangohud
		gparted
		ntfs3g
		vscode
		base16-schemes
		bibata-cursors
		protonvpn-gui
		gnome-multi-writer
		cantarell-fonts
		gnome.adwaita-icon-theme
		alacritty
		jre8
		openjdk8-bootstrap
	];

}
