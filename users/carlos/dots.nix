{ inputs, lib, config, pkgs,  ... }:
{
    nixpkgs = {
        overlays = [];
        config = {
            allowUnfree = true;
            allowUnfreePredicate = (_: true);
        };
    };

    imports = [
        ../../dots/kitty/default.nix
    ];

    programs.nix-index = {
        enable = true;
        enableZshIntegration = true;
        enableFishIntegration = true;
    };

    programs.home-manager.enable = true;

    systemd.user.startServices = "sd-switch";
}
