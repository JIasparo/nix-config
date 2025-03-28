{ ... }:

{
  config = {
    programs.vscode.profiles = {
      default = {
        userSettings = {
          "telemetry.telemetryLevel" = "off";
          "editor.selectionClipboard" = false; # Turns off middle mouse paste
        };
      };
    };
  };
}
