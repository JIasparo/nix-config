{ ... }:

{
  config = {
    programs.starship.settings = {
      add_newline = true;
      format = ''
        [┌─\($time\)─\[$directory\]](bold white)
        [└> ](bold white)
      '';

      directory = {
        format = "[$path]($style)[$read_only]($read_only_style)";
        truncation_length = 3;
        truncation_symbol = "…/";
        #home_symbol = "/home";
      };

      time = {
        disabled = false;
        time_format = "%R";
        format = "[$time]($style)";
      };
    };
  };
}
