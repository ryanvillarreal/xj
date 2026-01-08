# user:xj

personal environment modules managed via home-manager. used as a flake input for the [\_glitch](https://github.com/ryanvillarreal/_glitch) .

## structure

- flake.nix: defines the module and buildable outputs
- home.nix: main config file that pulls in sub-modules
- modules/: individual tool configs

## setup

nix only sees files tracked by git. stage new files to make them visible.

```bash
git add .
```

## local build check

run this to verify code and check for errors without changing your system.

```bash
nix build .#sys
```

## run vm with user profile and bypass doing flake updates every second

```bash

nix run .#nixosConfigurations.mini.config.system.build.vm \
 --override-input xj ../xj -- -nographic
```

## adding a tool

```bash
touch ./modules/<tool_name>.nix
```

    add the file path to the imports list in home.nix.

    stage the change with git add.

## outputs
