{ ... }:

{
  config = {
    # Select a Discord app, e.g., Stock Discord, Dorion, Equibop, Legcord, and Vesktop.
    programs.nixcord = {
      dorion.enable = false;
      equibop.enable = false;
      legcord.enable = false;
      vesktop.enable = false;
    };

    # Select a Discord client mod, e.g., Vencord and Equicord.
    programs.nixcord.discord = {
      equicord.enable = true;
      vencord.enable = false;
    };

    # Settings for all Discord apps, e.g., Stock Discord, Legcord, and Vesktop.
    programs.nixcord.discord = {
      autoscroll.enable = true;
      branch = "stable"; # "stable", "canary", "ptb", "development".
      krisp.enable = false;
      openASAR.enable = true;

      # Settings to be placed in Discord's settings.json.
      settings = {
        "MINIMIZE_TO_TRAY" = false;
        "OPEN_ON_STARTUP" = false;
        "SKIP_HOST_UPDATE" = true;
        #"DANGEROUS_ENABLE_DEVTOOLS_ONLY_ENABLE_IF_YOU_KNOW_WHAT_YOURE_DOING" = true;

        "openasar" = {
          "setup" = true;
          "cmdPreset" = "perf"; # "perf", "battery", "balanced"
          "noTrack" = true;
          "noTyping" = false;
          "themeSync" = true;
          "quickstart" = false;
          "multiInstance" = true;
        };
      };
    };

    # Settings for all Discord client mods, e.g., Vencord and Equicord.
    programs.nixcord.config = {
      autoUpdate = false;
      autoUpdateNotification = false;
      disableMinSize = true;
      frameless = true;
      notifyAboutUpdates = false;
      useQuickCss = true;
    };
  };
}
