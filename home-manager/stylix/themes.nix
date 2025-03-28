{ username, ... }:

{
  config = {
    stylix = {
      #polarity = "either"; # choose one: "dark" "light" "either"
      
      #image = ./wallpaper.png;

      base16Scheme = {
        base00 = "0c0e0f"; # Default Background
        base01 = "202324"; # Lighter Background (Used for status bars, line number and folding marks)
        base02 = "313244"; # Selection Background
        base03 = "45475a"; # Comments, Invisibles, Line Highlighting
        base04 = "585b70"; # Dark Foreground (Used for status bars)
        base05 = "cdd6f4"; # Default Foreground, Caret, Delimiters, Operators
        base06 = "f5e0dc"; # Light Foreground (Not often used)
        base07 = "b4befe"; # Light Background (Not often used)
        base08 = "f38ba8"; # Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
        base09 = "fab387"; # Integers, Boolean, Constants, XML Attributes, Markup Link Url
        base0A = "f9e2af"; # Classes, Markup Bold, Search Text Background
        base0B = "a6e3a1"; # Strings, Inherited Class, Markup Code, Diff Inserted
        base0C = "94e2d5"; # Support, Regular Expressions, Escape Characters, Markup Quotes
        base0D = "89b4fa"; # Functions, Methods, Attribute IDs, Headings, Accent color
        base0E = "cba6f7"; # Keywords, Storage, Selector, Markup Italic, Diff Changed
        base0F = "f2cdcd"; # Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
      };

/*
      iconTheme = {
        enable = true;
        package = pkgs.test;
        light = "";
        dark = "";
      };
      */

      /*
        fonts = {
          serif = {
            package = pkgs.dejavu_fonts;
            name = "DejaVu Serif";
          };

          sansSerif = {
            package = pkgs.dejavu_fonts;
            name = "DejaVu Sans";
          };

          monospace = {
            package = pkgs.dejavu_fonts;
            name = "DejaVu Sans Mono";
          };

          emoji = {
            package = pkgs.noto-fonts-emoji;
            name = "Noto Color Emoji";
          };
        };
      */

      /*
      cursor = {
        name = "";
        package = pkgs.test;
        size = 12;
      };
      */

      targets.vscode.profileNames = [ "default" ];
      targets.librewolf.profileNames = [
        "default"
        "${username}"
      ];
    };
  };
}
