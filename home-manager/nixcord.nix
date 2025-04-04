{ ... }:

{
  config = {
    programs.nixcord = {
      enable = true;

      discord = {
        vencord.unstable = true;

        autoscroll.enable = true;
        settings = {
          "OPEN_ON_STARTUP" = false;
          "MINIMIZE_TO_TRAY" = false;
        };
      };
    };
  };
}
