{ config, pkgs, inputs, ... }:

{
  home.username = "socks";
  home.homeDirectory = "/home/socks";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    # here is some command line tools I use frequently
    # feel free to add your own or remove some of them

    hyfetch

    # archives
    zip
    xz
    unzip
    p7zip
 
  ];

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "duckysocks22";
    userEmail = "jjones213067@proton.me";
  };

  home.sessionVariables = {
    MOZ_ENABLE_WAYLAND=0;
    
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    # TODO add your custom bashrc here
    bashrcExtra = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    '';

    # set some aliases, feel free to add more or remove some
    shellAliases = {
      
    };
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;


}