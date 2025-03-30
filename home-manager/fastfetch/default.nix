{ ... }:

{
  imports = [
    ./settings.nix
  ];

  config = {
    programs.fastfetch = {
      enable = true;
    };
  };
}
