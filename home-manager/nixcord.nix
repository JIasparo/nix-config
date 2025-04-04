{ ... }:

{
  imports = [
    #inputs.nixcord.homeManagerModules.nixcord
  ];

  config = {
    programs.nixcord = {
      enable = true;
    };
  };
}
