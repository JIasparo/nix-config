{ pkgs, ... }:

{
  imports = [
    ./settings.nix
  ];

  config = {
    home.packages = with pkgs; [
      grim
      slurp
    ];

    programs.satty = {
      enable = true;
    };
  };
}
