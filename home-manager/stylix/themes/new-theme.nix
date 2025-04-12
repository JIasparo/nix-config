{ pkgs, ... }:

{
  config = {
    stylix = {
      polarity = "dark"; # choose one: "dark" "light" "either"

      image = ./../../../wallpapers/pexels-serinus-5602124.png;

      base16Scheme = {
        base00 = "141414"; # Default Background
        base01 = "1f1f1f"; # Lighter Background (Used for status bars, line number and folding marks)
        base02 = "313131"; # Selection Background
        base03 = "4c4c4c"; # Comments, Invisibles, Line Highlighting
        base04 = "777777"; # Dark Foreground (Used for status bars)
        base05 = "959595"; # Default Foreground, Caret, Delimiters, Operators
        base06 = "bababa"; # Light Foreground (Not often used)
        base07 = "e9e9e9"; # Light Background (Not often used)
        base08 = "b32834"; # Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
        base09 = "c5693e"; # Integers, Boolean, Constants, XML Attributes, Markup Link Url
        base0A = "d7aa48"; # Classes, Markup Bold, Search Text Background
        base0B = "8ea27b"; # Strings, Inherited Class, Markup Code, Diff Inserted
        base0C = "9376a1"; # Support, Regular Expressions, Escape Characters, Markup Quotes
        base0D = "709d99"; # Functions, Methods, Attribute IDs, Headings, Accent color
        base0E = "bd843b"; # Keywords, Storage, Selector, Markup Italic, Diff Changed
        base0F = "597479"; # Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>

        #base0C = "709d99"; # Support, Regular Expressions, Escape Characters, Markup Quotes
        #base0D = "9376a1"; # Functions, Methods, Attribute IDs, Headings, Accent color
      };

        iconTheme = {
          enable = true;
          #package = pkgs.dracula-icon-theme;
          #light = "Dracula";
          #dark = "Dracula";
          package = pkgs.papirus-icon-theme;
          light = "Papirus-Light";
          dark = "Papirus-Dark";
        };

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
          package = pkgs.source-code-pro;
          name = "SourceCodePro-Light";
        };

        emoji = {
          package = pkgs.noto-fonts-emoji;
          name = "Noto Color Emoji";
        };
      };

      cursor = {
        name = "volantes_light_cursors"; # volantes_cursors for light theme | volantes_light_cursors for dark theme
        package = pkgs.volantes-cursors;
        size = 24;
      };
    };
  };
}
