{ pkgs, ... }:

{
  config = {
    # Enable drivers for Xbox One controllers.
    hardware.xone.enable = true;

    programs = {
      steam = {
        enable = true;

        # Opens firewall ports to allow Steam Remote Play services.
        remotePlay.openFirewall = true;

        gamescopeSession.enable = true;

        # These packages are added to the Steam compatibility tools.
        extraCompatPackages = with pkgs; [
          proton-ge-bin # Glorious Eggroll Proton fork
          #steamtinkerlaunch
        ];
      };

      gamemode.enable = true; # GameMode allows games to request a set of Linux specific optimisations. Steam launch option: `gamemoderun %command%`.

      gamescope = {
        enable = true;
        capSysNice = true;
        args = [
          "--expose-wayland"
        ];
      };
    };
  };
}
