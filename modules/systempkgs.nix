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
		unetbootin
		protonvpn-gui
		cantarell-fonts
	];

}
