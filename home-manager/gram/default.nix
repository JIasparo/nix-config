{ ... }:

{
  imports = [
    ./LSPs
    ./settings.nix
  ];

  config = {
    programs.gram = {
      enable = true;
      #settings = {tacos = {tuesdays = {};};};
    };
  };
}
