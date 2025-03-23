{ pkgs, ... }:

{
  config = {
    # Enable drivers for Xbox One controllers.
    #hardware.xone.enable = true;

    programs.steam = {
      enable = true;

      # Opens firewall ports to allow Steam Remote Play services.
      remotePlay.openFirewall = true;

      #gamescopeSession.enable = true;
      
      # These packages are added to the Steam compatibility tools.
      extraCompatPackages = with pkgs; [
        # Glorious Eggroll Proton fork.
        proton-ge-bin
      ];
    };
  };
}
