{ lib, ... }:

{
  imports = [
    #./nf-symbols.nix
    ./no-symbols.nix
  ];

  config = {
    programs.starship.settings = {
      add_newline = true;
      format = lib.concatStrings [
        "[](red)"
        "$os"
        "$username"
        "[](bg:orange fg:red)"
        "$directory"
        "[](bg:yellow fg:orange)"
        "$git_branch"
        "$git_status"
        "[](fg:yellow bg:green)"
        "$c"
        "$rust"
        "$golang"
        "$nodejs"
        "$php"
        "$java"
        "$kotlin"
        "$haskell"
        "$python"
        "[](fg:green bg:blue)"
        "$conda"
        "[](fg:blue bg:purple)"
        "$time"
        "[ ](fg:purple)"
        "$cmd_duration"
        "$character"
      ];

      os = {
        disabled = false;
        style = "bg:red bold fg:black";
      };

      username = {
        show_always = true;
        style_user = "bg:red bold fg:black";
        style_root = "bg:red bold underline fg:black";
        format = "[ $user ]($style)";
      };

      directory = {
        style = "bg:orange bold fg:black";
        format = "[ $path ]($style)";
        truncation_length = 3;
        truncation_symbol = "…/";
      };

      git_branch = {
        style = "bg:yellow";
        format = "[[ $symbol $branch ](bold fg:black bg:yellow)]($style)";
      };

      git_status = {
        style = "bg:yellow";
        format = "[[($all_status$ahead_behind )](bold fg:black bg:yellow)]($style)";
      };

      nodejs = {
        style = "bg:green";
        format = "[[ $symbol( $version) ](bold fg:black bg:green)]($style)";
      };

      c = {
        style = "bg:green";
        format = "[[ $symbol( $version) ](bold fg:black bg:green)]($style)";
      };

      rust = {
        style = "bg:green";
        format = "[[ $symbol( $version) ](bold fg:black bg:green)]($style)";
      };

      golang = {
        style = "bg:green";
        format = "[[ $symbol( $version) ](bold fg:black bg:green)]($style)";
      };

      php = {
        style = "bg:green";
        format = "[[ $symbol( $version) ](bold fg:black bg:green)]($style)";
      };

      java = {
        style = "bg:green";
        format = "[[ $symbol( $version) ](bold fg:black bg:green)]($style)";
      };

      kotlin = {
        style = "bg:green";
        format = "[[ $symbol( $version) ](bold fg:black bg:green)]($style)";
      };

      haskell = {
        style = "bg:green";
        format = "[[ $symbol( $version) ](bold fg:black bg:green)]($style)";
      };

      python = {
        style = "bg:green";
        format = "[[ $symbol( $version)(\\(#$virtualenv\\)) ](bold fg:black bg:green)]($style)";
      };

      docker_context = {
        style = "bg:blue";
        format = "[[ $symbol( $context) ](bold fg:black bg:blue)]($style)";
      };

      conda = {
        style = "bold fg:black bg:blue";
        format = "[$symbol$environment ]($style)";
        ignore_base = false;
      };

      time = {
        disabled = false;
        time_format = "%R";
        style = "bg:purple";
        format = "[[ $time ](bold fg:black bg:purple)]($style)";
      };

      character = {
        disabled = false;
        format = "$symbol ";
      };

      cmd_duration = {
        show_milliseconds = false;
        format = "in $duration ";
        style = "bg:purple";
        disabled = true;
        show_notifications = true;
        min_time_to_notify = 45000;
      };
    };
  };
}
