{
    description = "My dotfiles";
    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        nix-darwin = {
            url = "github:LnL7/nix-darwin";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };
    outputs = { nix-darwin, home-manager, ... }@inputs : {
        darwinConfigurations = {
            "mac" = nix-darwin.lib.darwinSystem {
                system = "aarch64-darwin";
                specialArgs = {
                    inherit inputs;
                };
                modules = [
                    ./machines/darwin/mac.nix
                ];
            }
        }
    };
}
