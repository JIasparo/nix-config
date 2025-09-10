{ ... }:

{
  imports = [
    #./opacity.nix
    ./targets.nix
    ./themes
  ];

  config = {
    stylix = {
      enable = true;
    };
  };
}
