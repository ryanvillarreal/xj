{ pkgs, ... }:
{
  home.packages = with pkgs; [
    neovim
    starship
  ];

  programs.bash.enable = true;
}
