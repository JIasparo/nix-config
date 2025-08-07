{ pkgs, ... }:

{
  config = {
    stylix = {
      polarity = "dark"; # choose one: "dark" "light" "either"

      image = ./../../../wallpapers/pexels-francesco-ungaro-27695053.jpg;

      base16Scheme = "${pkgs.base16-schemes}/share/themes/atelier-forest.yaml";
      #base16Scheme = {
      #  base00 = "#1b1918"; # Default Background
      #  base01 = "#2c2421"; # Lighter Background (Used for status bars, line number and folding marks)
      #  base02 = "#68615e"; # Selection Background
      #  base03 = "#766e6b"; # Comments, Invisibles, Line Highlighting
      #  base04 = "#9c9491"; # Dark Foreground (Used for status bars)
      #  base05 = "#a8a19f"; # Default Foreground, Caret, Delimiters, Operators
      #  base06 = "#e6e2e0"; # Light Foreground (Not often used)
      #  base07 = "#f1efee"; # Light Background (Not often used)
      #  base08 = "#f22c40"; # Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
      #  base09 = "#df5320"; # Integers, Boolean, Constants, XML Attributes, Markup Link Url
      #  base0A = "#c38418"; # Classes, Markup Bold, Search Text Background
      #  base0B = "#7b9726"; # Strings, Inherited Class, Markup Code, Diff Inserted
      #  base0C = "#3d97b8"; # Support, Regular Expressions, Escape Characters, Markup Quotes
      #  base0D = "#407ee7"; # Functions, Methods, Attribute IDs, Headings, Accent color
      #  base0E = "#6666ea"; # Keywords, Storage, Selector, Markup Italic, Diff Changed
      #  base0F = "#c33ff3"; # Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
      #};

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
