{ ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {
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
        "special:special, on-created-empty:$passManager"
      ];

      windowrule = [
        # Assign tags for windows
        # Browser tags
        "tag +browser, match:class ^([Ll]ibrewolf)$"
        "tag +browser, match:class ^([Gg]oogle-chrome(-beta|-dev|-unstable)?)$"
        "tag +browser, match:class ^(chrome-.+-Default)$" # Chrome PWAs
        "tag +browser, match:class ^([Cc]hromium)$"
        "tag +browser, match:class ^(Brave-browser(-beta|-dev|-unstable)?)$"
        "tag +browser, match:class ^([Tt]horium-browser|[Cc]achy-browser)$"
        "tag +browser, match:class ^(zen-alpha|zen)$"

        # Notification tags
        "tag +notif, match:class ^(swaync-control-center|swaync-notification-window|swaync-client|class)$"

        # Terminal tags
        "tag +terminal, match:class ^(Alacritty|kitty|kitty-dropterm)$"

        # Editor tags
        "tag +text-editor, match:class ^(codium|codium-url-handler|VSCodium)$"
        #"tag +video-editor, match:class ^()$"

        # Recording tags
        "tag +recording, match:class ^(com.obsproject.Studio)$"

        # Instant Messenger tags
        "tag +im, match:class ^([Dd]iscord|[Ww]ebCord|[Vv]esktop)$"

        # Game tags
        "tag +games, match:class ^(gamescope)$"
        "tag +games, match:class ^(steam_app_\\d+)$"
        "tag +games, match:title ^([Bb]attlefield 4)$"
        "tag +games, match:title ^([Tt]itanfall 2)$"
        "tag +games, match:class ^(Slay the Spire)$"
        "tag +games, match:class ^(.*)(.x86_64)$"
        "tag +games, match:initial_title ^([Gg]odot)$"

        # Game launcher tags
        "tag +game-launcher, match:class ^([Ss]team)$"
        "tag +game-launcher, match:title ^([Ll]utris)$"
        "tag +game-launcher, match:title ^(EA)$"
        "tag +game-launcher, match:class ^([Hh]eroic)$"
        "tag +game-launcher, match:class ^(org.prismlauncher.PrismLauncher)$"

        # File-manager tags
        "tag +file-manager, match:class ^([Tt]hunar)$"
        "tag +file-manager, match:title ^([Yy]azi|[Yy]azi.*)$"

        # Multimedia tags
        "tag +multimedia, match:class ^([Mm]pv|vlc)$"

        # Sensitive tags
        "tag +sensitive, match:class ^([Bb]itwarden)$"
        "tag +sensitive, match:tag browser, match:title ^(.*)([Tt][Dd] [Bb]ank)(.*)$"
        "tag +sensitive, match:tag browser, match:title ^(.*)(Discover)(.*)$"

        # Pop-up tags
        "tag +pop-up, match:title ^(Open File)(.*)$"
        "tag +pop-up, match:title ^(Select a File)(.*)$"
        "tag +pop-up, match:title ^(Open Folder)(.*)$"
        "tag +pop-up, match:title ^(Save As)(.*)$"
        "tag +pop-up, match:title ^(Save Workspace)(.*)$"
        "tag +pop-up, match:title ^(Library)(.*)$"
        "tag +pop-up, match:title ^(File Upload)(.*)$"
        "tag +pop-up, match:title ^(.*)(wants to save)$"
        "tag +pop-up, match:title ^(.*)(wants to open)$"
        "tag +pop-up, match:title ^(Log out)(.*)$"
        "tag +pop-up, match:title ^(Save Image)(.*)$"
        "tag +pop-up, match:title ^(File Operation Progress)$"
        "tag +pop-up, match:title ^(Select Install Path)$"
        "tag +pop-up, match:title ^(Select what to share)$"
        "tag +pop-up, match:class ^(Zenity)$" # GTK+ dialog boxes
        "tag +pop-up, match:title ^(Chatterino Settings)$"

        # Assign window rules
        # Float, center, and resize pop-ups and dialogue boxes
        "match:tag pop-up*, float on, center on, size 40% 40%"

        # Make multimedia windows opaque
        "match:tag multimedia*, no_blur on, opaque on"

        # Make games float and center
        "match:tag games*, float on, center on"

        # Disable eye candy for games
        "match:tag games*, decorate off, no_blur on, no_anim on, no_shadow on, opaque on"

        # Prevent idling while playing games
        "match:tag games*, idle_inhibit always"

        # Prevent idling while playing videos
        "match:tag multimedia*, idle_inhibit focus"
        "match:title ^(.*YouTube.*)$, idle_inhibit fullscreen"

        # Prevent sensitive windows from showing in a screenshare
        "match:tag sensitive*, no_screen_share on"

        # Workspace specific rules
        # Make game-launchers spawn on workspace 5
        "match:tag game-launcher*, workspace 5"

        # Make games spawn on workspace 6
        "match:tag games*, workspace 6"

        # Make instant messengers open on workspace 9
        "match:tag im*, workspace 9"

        # Make recording software open on workspace 10
        "match:tag recording*, workspace 10"
      ];

      layerrule = [
        #
      ];
    };
  };
}
