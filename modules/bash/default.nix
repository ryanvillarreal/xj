{ ... }:
{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    historyControl = [ "erasedups" ];
    historySize = 100000;
    historyIgnore = [
      "ls"
      "l"
      "ls"
      "la"
      "cd"
      "exit"
      "--help"
    ];
    initExtra = ''
      shopt -s autocd
    '';
  };
  imports = [
    ./exports.nix
    ./aliases.nix
  ];
}
