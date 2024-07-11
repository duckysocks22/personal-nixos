{ pkgs, inputs, home-manager, stylix, ...}:

{

    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
    stylix.image = ../images/grace_background.jpg;
    
    home-manager.sharedModules = [{
    
    stylix.autoEnable = false;  

    stylix.targets.firefox.enable = true;
    stylix.targets.kitty.enable = true;
    stylix.targets.kde.enable = true;
    stylix.targets.vesktop.enable = true;
    stylix.targets.vscode.enable = true;
    stylix.opacity.applications = 0.2;
    stylix.opacity.desktop = 0.2;
    stylix.targets.gtk.enable = true;

    stylix.cursor = {
        package = pkgs.gnome.adwaita-icon-theme;
        name = "Adwaita";
        size = 32;
    };

    stylix.fonts = {
        monospace = {
            package = pkgs.cantarell-fonts;
            name = "Cantarell 10";
        };
        sansSerif = {
            package = pkgs.cantarell-fonts;
            name = "Cantarell 10";
        };
        serif = {
            package = pkgs.cantarell-fonts;
            name = "Cantarell 10";
        };
    };   
}]; 
}