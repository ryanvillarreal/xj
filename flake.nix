{
  description = "xj";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeManagerModules.default =
        { ... }:
        {
          imports = [ ./home.nix ];
          home.username = "xj";
          home.stateVersion = "25.11";
          home.homeDirectory = "/home/xj";
        };

      # Combine 'sys' and 'default' into ONE attribute set for the system
      packages.${system} = {
        sys =
          (home-manager.lib.homeManagerConfiguration {
            inherit pkgs;
            modules = [ self.homeManagerModules.default ];
          }).activationPackage;

        default = self.packages.${system}.sys;
      };
    };
}
