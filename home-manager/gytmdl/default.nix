{ pkgs, ... }:

{
  config = {
    nixpkgs.config.packageOverrides = pkgs: {
      gytmdl = pkgs.callPackage ./../../pkgs/gytmdl/package.nix { };
    };

    home = {
      packages = with pkgs; [
        gytmdl
      ];

      file = {
        ".gytmdl/config.json".source = ./config.json;
      };
    };
  };
}
