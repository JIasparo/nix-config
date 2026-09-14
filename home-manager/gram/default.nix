{ ... }:

{
  imports = [
    ./LSPs
    ./settings.nix
  ];

  config = {
    programs.gram = {
      enable = true;
    };
  };
}
