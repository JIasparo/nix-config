{ pkgs, ... }:

{
  config = {
    home.packages = with pkgs; [
      # Add font packages here:
    ];

    fonts.fontconfig = {
      enable = true;

      defaultFonts = {
        serif = [
          #""
        ];

        sansSerif = [
          #""
        ];

        monospace = [
          #""
        ];

        emoji = [
          #""
        ];
      };
    };
  };
}
