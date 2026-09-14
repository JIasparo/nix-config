{ pkgs, ... }:

{
  config = {
    home.packages = with pkgs; [
      # Add font packages here:
      nerd-fonts.symbols-only
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
