{ ... }:

{
  imports = [
    ./targets.nix
    ./themes
  ];

  config = {
    stylix = {
      enable = true;
    };
  };
}
