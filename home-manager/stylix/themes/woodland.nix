{ pkgs, ... }:

{
  config = {
    stylix = {
      polarity = "dark"; # choose one: "dark" "light" "either"

      image = ./../../../wallpapers/pexels-pexels-user-3832621-5681307.jpg;

      base16Scheme = "${pkgs.base16-schemes}/share/themes/woodland.yaml";
      #base16Scheme = {
      #  base00 = "231e18"; # Default Background
      #  base01 = "302b25"; # Lighter Background (Used for status bars, line number and folding marks)
      #  base02 = "48413a"; # Selection Background
      #  base03 = "9d8b70"; # Comments, Invisibles, Line Highlighting
      #  base04 = "b4a490"; # Dark Foreground (Used for status bars)
      #  base05 = "cabcb1"; # Default Foreground, Caret, Delimiters, Operators
      #  base06 = "d7c8bc"; # Light Foreground (Not often used)
      #  base07 = "e4d4c8"; # Light Background (Not often used)
      #  base08 = "d35c5c"; # Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
      #  base09 = "ca7f32"; # Integers, Boolean, Constants, XML Attributes, Markup Link Url
      #  base0A = "e0ac16"; # Classes, Markup Bold, Search Text Background
      #  base0B = "b7ba53"; # Strings, Inherited Class, Markup Code, Diff Inserted
      #  base0C = "6eb958"; # Support, Regular Expressions, Escape Characters, Markup Quotes
      #  base0D = "88a4d3"; # Functions, Methods, Attribute IDs, Headings, Accent color
      #  base0E = "bb90e2"; # Keywords, Storage, Selector, Markup Italic, Diff Changed
      #  base0F = "b49368"; # Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
      #};

      icons = {
        enable = true;
        package = pkgs.papirus-icon-theme;
        light = "Papirus-Light";
        dark = "Papirus-Dark";
      };

      fonts = {
        serif = {
          #package = pkgs.maple-mono.NF-unhinted;
          #name = "MapleMono-NF-Regular";
        };

        sansSerif = {
          #package = pkgs.maple-mono.NF-unhinted;
          #name = "MapleMono-NF-Regular";
        };

        monospace = {
          #package = pkgs.maple-mono.NF-unhinted;
          #name = "MapleMono-NF-Regular";
        };

        emoji = {
          package = pkgs.noto-fonts-color-emoji;
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
