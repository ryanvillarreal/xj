{ pkgs, ... }:

{
  # first always
  home.stateVersion = "26.05";

  # personal preference
  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = true;
  };

  home.username = "xj";
  home.homeDirectory = "/home/xj";

  # programs installed here
  # but modified in ./modules/
  home.packages = with pkgs; [
    # sorta system stuff
    nerd-fonts.jetbrains-mono
    catppuccin

    kdePackages.fcitx5-with-addons
    # system administration apps
    docker-compose
    screen
    unzip
    openssl
    usbutils
    btop
    htop

    # programming
    go
    wezterm
    wofi
    alacritty
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

}
