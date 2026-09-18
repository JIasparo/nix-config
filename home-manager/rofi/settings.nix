{ ... }:

{
  config = {
    programs.rofi.settings = {
      modes = [
        "drun"
        "calc"
      ];
      show-icons = true;

      # drun settings
      display-drun = "apps";
      drun-display-format = "{name}";
    };
  };
}
