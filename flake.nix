{
  description = "home-manager stuff";

  outputs =
    { self, ... }:
    {
      # This is the magic handle that your fleet flake will grab
      homeManagerModules.default =
        { pkgs, ... }:
        {
          imports = [ ./home.nix ];
          home.username = "xj";
          home.stateVersion = "25.11";
        };
    };
}
