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
    base.enable = true;
    home-manager.enable = true;
  };

  # mods
  imports = [
    ./modules/bat.nix
    ./modules/eza.nix
  ];
}
