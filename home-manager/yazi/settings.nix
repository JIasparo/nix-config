{ ... }:

{
  config = {
    programs.yazi.settings = {
      mgr = {
        ratio = [1 4 3];
      };

      preview = {
        wrap = "no";
        max_width = 1200;
        max_height = 1800;
      };

      opener = {};

      open = {};

      tasks = {};
      
      input = {
        cursor_blink = false;
      };
    };
  };
}
