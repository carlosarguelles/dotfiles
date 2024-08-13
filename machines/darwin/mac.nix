{ inputs, pkgs, lib, ... }:
{
    nixpkgs = {
        config = {
            allowUnfree = true;
            allowUnfreePredicate = (_: true);
        };
    };
    imports = [ <home-manager/nix-darwin> ];
    home-manager = {
        useGlobalPkgs = false; # makes hm use nixos's pkgs value
        extraSpecialArgs = { inherit inputs; }; # allows access to flake inputs in hm modules
        users.carlos = { config, pkgs, ... }: {
            home.homeDirectory = lib.mkForce "/Users/carlos";
            imports = [
                inputs.nix-index-database.hmModules.nix-index
                ../../users/carlos/dots.nix
            ];
        };
        backupFileExtension = "bak";
        useUserPackages = true;
    };
    nix.settings.max-jobs = "auto";
}
