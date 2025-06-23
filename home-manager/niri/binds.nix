{ config, ... }:

{
  config = {
    programs.niri.settings.binds = with config.lib.niri.actions; {
      "Mod+Return".action = spawn "kitty";
      "Mod+E".action = spawn "codium";
      "Mod+F".action = spawn "kitty yazi";
      "Mod+W".action = spawn "librewolf";
      "Mod+Q".action = close-window;
    };
  };
}
