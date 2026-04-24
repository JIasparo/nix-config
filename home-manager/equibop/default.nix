{ ... }:

{
  imports = [
    ./plugins.nix
    ./settings.nix
  ];

  config = {
    programs.equibop = {
      enable = true;
    };
  };
}
