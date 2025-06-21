{ lib, ... }:

{
  imports = [
    #./nf-symbols.nix
    ./no-symbols.nix
  ];

  config = {
    programs.starship.settings = {
      format = lib.concatStrings [
        "$os"
        "$username"
        "$all"
        "$time"
        "$character"
      ];

      os = {
        disabled = false;
      };

      time = {
        disabled = false;
        format = "[$time]($style)";
        time_format = "%R";
      };
    };
  };
}
