{ ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {
      exec-once = [
        "[workspace special silent] $passManager"
      ];

      workspace = [
        "1, monitor:DP-2, default:true"
        "2, monitor:DP-2"
        "3, monitor:DP-2"
        "4, monitor:DP-2"
        "5, monitor:DP-2"
        "6, monitor:DP-2"
        "7, monitor:DP-2"
        "8, monitor:DP-1, default:true"
        "9, monitor:DP-1"
        "10, monitor:DP-1"
      ];

      windowrulev2 = [
        # Assign tags for windows
        # Browser tags
        "tag +browser, class:^([Ll]ibrewolf)$"
        "tag +browser, class:^([Gg]oogle-chrome(-beta|-dev|-unstable)?)$"
        "tag +browser, class:^(chrome-.+-Default)$" # Chrome PWAs
        "tag +browser, class:^([Cc]hromium)$"
        "tag +browser, class:^(Brave-browser(-beta|-dev|-unstable)?)$"
        "tag +browser, class:^([Tt]horium-browser|[Cc]achy-browser)$"
        "tag +browser, class:^(zen-alpha|zen)$"

        # Notification tags
        "tag +notif, class:^(swaync-control-center|swaync-notification-window|swaync-client|class)$"

        # Terminal tags
        "tag +terminal, class:^(Alacritty|kitty|kitty-dropterm)$"

        # Editor tags
        "tag +editor, class:^(codium|codium-url-handler|VSCodium)$"

        # Recording tags
        "tag +recording, class:^(com.obsproject.Studio)$"

        # Instant Messenger tags
        "tag +im, class:^([Dd]iscord|[Ww]ebCord|[Vv]esktop)$"

        # Game tags
        "tag +games, class:^(gamescope)$"
        "tag +games, class:^(steam_app_\\d+)$"
        "tag +games, title:^([Bb]attlefield 4)$"
        "tag +games, title:^([Tt]itanfall 2)$"
        "tag +games, class:^(.*)(.x86_64)$"

        # Game launcher tags
        "tag +game-launcher, class:^([Ss]team)$"
        "tag +game-launcher, title:^([Ll]utris)$"
        "tag +game-launcher, title:^(EA)$"
        "tag +game-launcher, class:^(com.heroicgameslauncher.hgl)$"
        "tag +game-launcher, class:^(org.prismlauncher.PrismLauncher)$"

        # File-manager tags
        "tag +file-manager, class:^([Tt]hunar)$"
        "tag +file-manager, title:^([Yy]azi|[Yy]azi.*)$"

        # Multimedia-video tags
        "tag +multimedia-video, class:^([Mm]pv|vlc)$"

        # Sensitive tags
        "tag +sensitive, class:^([Bb]itwarden)$"

        # Pop-up tags
        "tag +pop-up, title:^(Open File)(.*)$"
        "tag +pop-up, title:^(Select a File)(.*)$"
        "tag +pop-up, title:^(Open Folder)(.*)$"
        "tag +pop-up, title:^(Save As)(.*)$"
        "tag +pop-up, title:^(Save Workspace)(.*)$"
        "tag +pop-up, title:^(Library)(.*)$"
        "tag +pop-up, title:^(File Upload)(.*)$"
        "tag +pop-up, title:^(.*)(wants to save)$"
        "tag +pop-up, title:^(.*)(wants to open)$"
        "tag +pop-up, title:^(Log out)(.*)$"

        # Assign window rules
        # Float, center, and resize pop-ups and dialogue boxes
        "float, center, size 40% 40%, tag:pop-up*"

        # Make multimedia-video windows opaque
        "noblur, opaque, tag:multimedia-video*"

        # Make games float and center
        "float, center, tag:games*"

        # Disable eye candy for games
        "decorate 0, tag:games*"

        # Prevent sensitive windows from showing in a screenshare
        "noscreenshare, tag:sensitive*"

        # Prevent idling while playing games
        "idleinhibit always, tag:games*"

        # Prevent idling while playing videos
        "idleinhibit focus, tag:multimedia-video*"
        "idleinhibit fullscreen, title:^(.*YouTube.*)$"

        # Workspace specific rules
        # Make game-launchers spawn on workspace 5
        "workspace 5, tag:game-launcher*"

        # Make games spawn on workspace 6
        "workspace 6, tag:games*"

        # Make instant messengers open on workspace 9
        "workspace 9, tag:im*"

        # Make recording software open on workspace 10
        "workspace 10, tag:recording*"
      ];

      layerrule = [
        #
      ];
    };
  };
}
