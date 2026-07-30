{ ... }:

{
  config = {
    programs.vscodium.profiles = {
      "default" = {
        userSettings = {
          "breadcrumbs.enabled" = false;
          "chat.disableAIFeatures" = true;
          "editor.selectionClipboard" = false; # Turns off middle-mouse paste
          "editor.wordWrap" = "on";
          "extensions.autoCheckUpdates" = false;
          "extensions.autoUpdate" = "off";
          "telemetry.telemetryLevel" = "off";
          "update.mode" = "none";
          "workbench.activityBar.location" = "top";
          "workbench.settings.showAISearchToggle" = false;
          "workbench.tree.indent" = 15;
        };
      };
    };
  };
}
