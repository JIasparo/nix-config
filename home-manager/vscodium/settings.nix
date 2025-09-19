{ ... }:

{
  config = {
    programs.vscode.profiles = {
      default = {
        userSettings = {
          "telemetry.telemetryLevel" = "off";
          "editor.selectionClipboard" = false; # Turns off middle-mouse paste
          "editor.wordWrap" = "on";
          "workbench.activityBar.location" = "top";
          "breadcrumbs.enabled" = false;
          "workbench.tree.indent" = 15;
        };
      };
    };
  };
}
