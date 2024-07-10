{ pkgs, inputs,  ...}:

{
    stylix.autoEnable = false;  

    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
    stylix.image = ../images/grace_background.jpg;
   
    home-manager.sharedModules = [{

    stylix.targets.firefox.enable = true;
    stylix.targets.alacritty.enable = true;

    stylix.cursor = {
        package = pkgs.gnome.adwaita-icon-theme;
        name = "Adwaita";
        size = 24;
    };

    #stylix.fonts = {
    #    monospace = {
    #        package = pkgs.cantarell-fonts;
    #        name = "Cantarell 10";
    #    };
    #    sansSerif = {
    #        package = pkgs.cantarell-fonts;
    #        name = "Cantarell 10";
    #    };
    #    serif = {
    #        package = pkgs.cantarell-fonts;
    #        name = "Cantarell 10";
    #    };
    #};   
}]; 
}