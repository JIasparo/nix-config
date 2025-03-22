{ pkgs, ... }:

{
  config = {
    services.xserver = {
      enable = true;

      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;

      excludePackages = with pkgs; [
        xterm # Terminal emulator
      ];

      # Configure keymap in X11
      xkb = {
        layout = "us";
        variant = "";
      };
    };

    environment.gnome.excludePackages = with pkgs; [
      baobab # Disk Usage analyzer
      epiphany # Web browser
      evince # Document viewer
      file-roller # Archiver
      geary # E-mail client
      gnome-calendar # Calendar app
      gnome-characters # Character map app (emojis and special characters)
      gnome-clocks # Stopwatch / timer app
      gnome-connections # Remote Desktop app
      gnome-console # Terminal emulator
      gnome-contacts # Contacts / address book app
      gnome-disk-utility # Disk management (udisks front-end)
      gnome-font-viewer # Font viewer
      gnome-logs # Log viewer
      gnome-maps # Openmaps app
      gnome-music # Music player
      gnome-text-editor # Text editor
      gnome-tour # Guided greeter and tour
      gnome-weather # Weather app
      loupe # Image viewer
      seahorse # Password manager
      simple-scan # Document scanner
      snapshot # Picture app
      totem # Videos movie player
      yelp # Help viewer
    ];
  };
}
