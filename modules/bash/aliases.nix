{ ... }:

{
  programs.bash.shellAliases = {
    # nav
    # nav
    life = "cd $HOME/life/";
    home = "cd $HOME/life/";
    notes = "nvim $HOME/life/notes/readme.md";
    customers = "cd $HOME/life/work/customers";
    projects = "cd $HOME/life/dev/projects";
    dl = "cd $HOME/life/media/downloads";
    dev = "cd $HOME/life/dev/";

    aliases = "cd $HOME/life/haus/users/null/modules/bash/";
    mods = "cd $HOME/life/haus/users/null/modules/";
    hms = "home-manager switch";

    # quick rerun previous command
    jj = "fc -s";

    # gitstuff
    gs = "git status";
    gp = "git pull --recurse-submodules";

    # grep
    grep = "grep --color=auto";
    fgrep = "fgrep --color=auto";
    egrep = "egrep --color=auto";

    # enable sudo for aliases
    sudo = "sudo ";
    src = "source $HOME/.profile";
    socks = "ssh -fqND $1 $2";

    localip = "ipconfig getifaddr en0";

    # sort the env vars
    env = "env | grep '^_' | grep -v '_=' | sort";

  };
}
