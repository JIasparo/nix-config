{ pkgs, ... }:

{
  config = {
    stylix = {
      polarity = "dark"; # choose one: "dark" "light" "either"

      image = ./../../../wallpapers/pexels-serinus-5602124.jpg;

      base16Scheme = {
        base00 = "141414"; # Default Background
        base01 = "1f1f1f"; # Lighter Background (Used for status bars, line number and folding marks)
        base02 = "313131"; # Selection Background
        base03 = "4c4c4c"; # Comments, Invisibles, Line Highlighting
        base04 = "777777"; # Dark Foreground (Used for status bars)
        base05 = "c2c2c2"; # Default Foreground, Caret, Delimiters, Operators
        base06 = "d6d6d6"; # Light Foreground (Not often used)
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
        package = pkgs.papirus-icon-theme;
        light = "Papirus-Light";
        dark = "Papirus-Dark";
      };

      fonts = {
        serif = {
          package = pkgs.maple-mono.NF-unhinted;
          name = "MapleMono-NF-Regular"; # MapleMono-NF-Thin
        };

        sansSerif = {
          package = pkgs.dejavu_fonts;
          name = "DejaVuSans";
        };

        monospace = {
          package = pkgs.maple-mono.NF-unhinted;
          name = "MapleMono-NF-Regular"; # MapleMono-NF-Thin
        };

        emoji = {
          package = pkgs.noto-fonts-emoji;
          name = "Noto Color Emoji";
        };
      };

      cursor = {
        package = pkgs.volantes-cursors;
        name = "volantes_light_cursors"; # volantes_cursors for light theme | volantes_light_cursors for dark theme
        size = 24;
      };
    };
  };
}
