{ ... }:

{
  imports = [
    ./logos
    ./settings.nix
  ];

  config = {
    programs.fastfetch = {
      enable = true;
    };
  };
}
