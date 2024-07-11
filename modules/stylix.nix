{ pkgs, inputs, home-manager, stylix, ...}:

{

    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
    stylix.image = ../images/grace_background.jpg;
    
    home-manager.sharedModules = [{
    
    stylix.autoEnable = false;  

    stylix.targets.firefox.enable = true;
    stylix.targets.kitty.enable = true;
    stylix.targets.gnome.enable = true;
    stylix.targets.vesktop.enable = false;
    stylix.targets.vscode.enable = true;
    stylix.targets.gtk.enable = true;

    stylix.opacity = {
        desktop = 0.5;
        terminal = 0.8;
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