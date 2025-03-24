{ ... }:

{
  imports = [
    ./themes.nix
  ];

  config = {
    stylix = {
      enable = true;
    };
  };
}
