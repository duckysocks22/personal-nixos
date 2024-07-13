{ config, pkgs, inputs, home-manager, ... }:
{
    environment.systemPackages = with pkgs; [
        gnomeExtensions.blur-my-shell
        gnomeExtensions.dash-to-dock
        gnome.sushi
    ];
}