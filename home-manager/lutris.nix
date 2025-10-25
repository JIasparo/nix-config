{ config, pkgs, ... }:

{
  config = {
    programs.lutris = {
      enable = true;
      #steamPackage = config.programs.steam.package;
      # Must also be set under protonPackages or winePackages
      defaultWinePackage = pkgs.proton-ge-bin;
      
      protonPackages = with pkgs; [ proton-ge-bin ];
      
      winePackages = with pkgs; [];
      
      extraPackages = with pkgs; [ umu-launcher];
    };
  };
}
