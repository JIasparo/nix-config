{ ... }:

{
  imports = [
    ./plugins.nix
    ./settings.nix
  ];

  config = {
    programs.obsidian = {
      enable = true;
    };
  };
}
