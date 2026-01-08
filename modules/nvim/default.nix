{ pkgs, lib, ... }:
let
  nixvim = import (builtins.fetchGit { url = "https://github.com/nix-community/nixvim"; });
in
{
  imports = [
    # For home-manager
    nixvim.homeModules.nixvim

    # ./options.nix
    # ./plugins
    # ./keys.nix
  ];

  # wow.... this is much easier lol
  # i lied to myself
  programs.nixvim = {
    # settings
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    #for lua lazy loading
    luaLoader.enable = true;

    # hi, i'm clippy it looks like you are using nixos!
    clipboard = {
      # Use system clipboard
      register = "unnamedplus";
      providers = { };
    };

    # Disables the mouse from messing with cursor
    extraConfigLua = ''
      vim.opt.mouse=""
    '';

    # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=globals#globals
    globals = {
      # Set <space> as the leader key
      # See `:help mapleader`
      mapleader = " ";
      maplocalleader = " ";

      # Set to true if you have a Nerd Font installed and selected in the terminal
      have_nerd_font = true;
    };

    performance = {
      byteCompileLua.enable = true;
      combinePlugins.enable = true;
    };
  };
}
