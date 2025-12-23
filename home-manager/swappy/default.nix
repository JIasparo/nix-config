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

    programs.swappy = {
      enable = true;
    };
  };
}
