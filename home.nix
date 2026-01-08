{ pkgs, ... }:

{
  home.packages = with pkgs; [
    colmena # to test out fleet management
    nixos-anywhere

    # sorta system stuff
    nerd-fonts.jetbrains-mono
    catppuccin

    kdePackages.fcitx5-with-addons
    # system administration apps
    unzip
    openssl
    usbutils
    btop
    htop
    #
    go
  ];

  programs = {
    bash.enable = true;
    home-manager.enable = true;
  };

  # mods
  imports = [
    ./modules/bat # better cat
    # ./modules/bash # bash ofc
    # ./modules/eza # better ls
    # ./modules/fonts # fonts manager
    # ./modules/firefox # firefox
    # ./modules/git # git
    # ./modules/nh # nix handler
    # ./modules/nvim # editor=nvim
    # ./modules/ssh # ssh configs
    # ./modules/starship # cmdline setup
    # ./modules/wezterm # best term
  ];

}
