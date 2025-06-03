{ ... }:

{
  imports = [
    ./settings.nix
    ./logos
  ];

  config = {
    programs.fastfetch = {
      enable = true;
    };
  };
}
