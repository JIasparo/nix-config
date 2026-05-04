{ ... }:

{
  config = {
    # Settings for Equicord plugins.
    programs.equibop.equicord.settings.plugins = {

      AccountPanelServerProfile = {
        enabled = true;
        prioritizeServerProfile = true; # Prioritize Server Profile when left clicking your account panel.
      };

      AlwaysExpandRoles = {
        enabled = true;
        hideArrow = true;
      };

      BetterActivities = {
        enabled = true;
        memberList = true; # Show activity icons in the member list.
        iconSize = 15.0; # Size of the activity icons.
        specialFirst = true; # Show special activities first, e.g., Spotify and Twitch.
        renderGifs = true; # Allow rendering GIFs.
        removeGameActivityStatus = false; # Remove game activity icon and status.
        userPopout = true; # Show all activities in the profile popout/sidebar
        hideTooltip = true; # Hides activities in various places.
        allActivitiesStyle = "carousel"; # Style for showing all activities ("carousel", "list").
      };

      BetterFolders = {
        enabled = true;
        sidebar = true; # Display servers from folder on dedicated sidebar.
        sidebarAnim = false; # Animate opening the folder sidebar.
        closeAllFolders = true; # Close all folders when selecting a server not in a folder.
        closeAllHomeButton = true; # Close all folders when clicking on the home button.
        closeOthers = true; # Close other folders when opening a folder.
        closeServerFolder = true; # Close folder when selecting a server in that folder.
        forceOpen = false; # Force a folder to open when switching to a server of that folder.
        enableNestedFolders = false;
        nestedFolders = {};
        keepIcons = false; # Keep showing guild icons in the primary guild bar folder when it's open in the BetterFolders sidebar.
        showFolderIcon = 0; # Show the folder icon above the folder guilds in the BetterFolders sidebar (0: Never, 1: Always, 2: When more than one folder is expanded).
      };

      BetterInvites = {
        enabled = true;
      };

      BetterSettings = {
        enabled = true;
        disableFade = true; # Disable the crossfade animation.
        organizeMenu = true; # Organizes the settings cog context menu into categories.
        eagerLoad = true; # Removes the loading delay when opening the menu for the first time.
      };

      BiggerStreamPreview = {
        enabled = true;
      };

      BlockKrisp = {
        enabled = true;
      };

      CallTimer = {
        enabled = true;
        format = "stopwatch"; # Compact or human readable format ("stopwatch", "human").
        allCallTimers = false; # Add call timer to all users in a server voice channel.
        showWithoutHover = true; # Always show the timer without needing to hover.
        showRoleColor = true; # Show the user's role color.
        trackSelf = true;
        showSeconds = true; # Show seconds in the timer.
        watchLargeGuilds = true; # Track users in large guilds. This may cause lag.
      };

      ClearURLs = {
        enabled = true;
      };

      ClickableRoles = {
        enabled = true;
      };

      CrashHandler = {
        enabled = true;
        attemptToPreventCrashes = true; # Whether to attempt to prevent Discord crashes.
        attemptToNavigateToHome = false; # Whether to attempt to navigate to the home when preventing Discord crashes.
      };

      CustomSounds = {
        enabled = true;
        call_ringing = {
          enabled = true;
          selectedSound = "call_ringing_beat"; # ("default", "halloween_call_ringing", "winter_call_ringing", "call_ringing_beat", "call_ringing_snow_halation", "call_ringing_snowsgiving").
          volume = 50.0; # Sound volume (Float: 0.0-100.0).
          useFile = false; # Whether to use a custom sound file.
        };
      };

      Declutter = {
        enabled = true;
        removeAvatarDecoration = false; # Remove avatar decorations.
        removeNameplate = false; # Remove nameplates.
        removeProfileEffect = false; # Remove profile animation effects on open.
        removeClanTag = false; # Remove clan tags.
        alwaysShowUsername = false; # Always show username instead of status.
        removeShopAboveDM = false; # Remove shops above DMs list.
        removeQuestsAboveDM = false; # Remove quests above DMs list.
        removeServerBoostInfo = true; # Remove server boost info above channel list.
        removeBillingSettings = false; # Remove billing settings.
        removeGiftButton = true; # Removes the gift button in the chat bar.
        removeUnavailableEmojiPicker = false; # Remove unavailable categories from the emoji picker.
        removeAudioMenus = true; # Removes the arrows next to the mute and deafen buttons.
        removeButtonTooltips = false; # Remove button tooltips.
      };

      EquibopStreamFixes = {
        enabled = true;
        unlockQualityOptions = true; # Unlock stream quality options regardless of Nitro status.
        removeResolutionCap = true; # Allow resolutions above 720p at 60fps.
        forceEncoderSettings = true; # Force encoder to use configured resolution/fps.
        preventDownscale = true; # Prevent Discord from downscaling stream resolution.
        keyframeInterval = 5000; # Keyframe interval in ms (0 = encoder default, 5000 = every 5s).
        minBitrate = 500; # Minimum encoder bitrate in kbps.
        raiseBitrateCaps = true; # Raise default desktop bitrate caps (600kbps target -> 10Mbps, 3.5Mbps max -> 40Mbps).
        preventFramerateReduction = true; # Prevent Discord from reducing stream framerate when not speaking.
        bitsPerPixelPct = 8; # Bits per pixel percentage for target bitrate (8 = 0.08bpp, 12 = 0.12bpp).
      };

      FakeNitro = {
        enabled = false;
        enableEmojiBypass = false; # Allows sending fake emojis.
        emojiSize = 48; # Size of the emojis when sending (32, 48, 56, 64, 96, 128, 160, 256, 512).
        transformEmojis = true; # Convert fake emojis into real ones.
        enableStickerBypass = false; # Allows sending fake stickers.
        stickerSize = 160; # Size of the stickers when sending (32, 64, 128, 160, 256, 512).
        transformStickers = true; # Convert fake stickers into real ones.
        transformCompoundSentence = false; # Transform fake stickers and emojis in compound sentences (sentences with more content than just the fake emoji or sticker link).
        enableStreamQualityBypass = true; # Allow streaming in nitro quality.
        useStickerHyperLinks = true; # Whether to use hyperlinks when sending fake stickers.
        useEmojiHyperLinks = true; # Whether to use hyperlinks when sending fake emojis.
        hyperLinkText = "{{NAME}}"; # What text the hyperlink should use.
        disableEmbedPermissionCheck = false; # Whether to disable the embed permission check when sending fake emojis and stickers.
      };

      FakeProfileThemes = {
        enabled = true;
        nitroFirst = true; # Whether nitro profiles should show over the fake profile theme.
      };

      FixYoutubeEmbeds = {
        enabled = true;
        youtubeDescription = true; # Adds descriptions to youtube video embeds.
      };

      ForceOwnerCrown = {
        enabled = true;
      };

      FullSearchContext = {
        enabled = true;
      };

      FullVCPFP = {
        enabled = true;
      };

      GameActivityToggle = {
        enabled = true;
        oldIcon = false; # Use the old icon style before Discord icon redesign.
      };

      GifPaste = {
        enabled = true;
      };

      LoadingQuotes = {
        enabled = true;
        replaceEvents = true; # Should this plugin apply during events with special event theme quotes?
        enablePluginPresetQuotes = false; # Add preset quotes unique to this plugin.
        enableDiscordPresetQuotes = false; # Add Discord's preset quotes.
        additionalQuotes = ''
          Good girl :3
          |You're such a good girl
          |Mrrp mreow meow :3 :3 :3
          |Mreep mreeow :3
          |Mrrp nya~
          |Trans rights are human rights 🏳️‍⚧️
          |Be gay, do crime
          |Reminder to stay hydrated! <3
        '';
        additionalQuotesDelimiter = "|";
      };

      MentionAvatars = {
        enabled = true;
        showAtSymbol = false; # Whether the @ symbol should be displayed on user mentions.
      };

      MessageLinkEmbeds = {
        enabled = true;
        messageBackgroundColor = false; # Background color for messages in rich embeds.
        automodEmbeds = "prefer"; # Use automod embeds instead of rich embeds ("always", "prefer", "never").
        listMode = "blacklist"; # ("blacklist", "whitelist").
        idList = ""; # Guild/channel/user IDs to blacklist or whitelist ("ID-1,ID-2,ID-3").
      };

      MessageLogger = {
        enabled = true;
        deleteStyle = "overlay"; # ("text", "overlay").
        logDeletes = true; # Whether to log deleted messages.
        collapseDeleted = false; # Whether to collapse deleted messages, similar to blocked messages.
        logEdits = true; # whether to log editied messages.
        inlineEdits = true; # Whether to display edit history as part of message content.
        ignoreBots = true; # Whether to ignore messages by bots.
        ignoreSelf = false; # Whether to ignore messages by yourself.
        ignoreSelfEdits = false; # Whether to ignore edits by yourself.
        ignoreUsers = ""; # Comma-separated list of user IDs to ignore ("ID-1,ID-2,ID-3").
        ignoreChannels = ""; # Comma-separated list of channel IDs to ignore ("ID-1,ID-2,ID-3").
        ignoreGuilds = ""; # Comma-separated list of guild IDs to ignore ("ID-1,ID-2,ID-3").
        showEditDiffs = true; # Show visual differences between edited message versions.
        separatedDiffs = true; # Separate addition and removals in diffs for a more readable differential.
      };

      MutualGroupDMs = {
        enabled = true;
      };

      NewGuildSettings = {
        enabled = true;
        guild = true; # Mute guilds automatically.
        messages = 1; # Server notification settings (0: All messages, 1: Only @mentions, 2: Nothing, 3: Server default).
        everyone = false; # Suppress @everyone and @here.
        role = false; # Suppress all role @mentions.
        highlights = true; # Suppress highlights automatically.
        events = true; # Mute new events automatically.
        showAllChannels = true; # Show all channels automatically.
        mobilePush = false; # Mute mobile push notifications automatically.
        voiceChannels = false; # Hide names in voice channels automatically.
      };

      NewPluginsManager = {
        enabled = true;
      };

      NoNitroUpsell = {
        enabled = true;
      };

      NoPendingCount = {
        enabled = true;
        hideFriendRequestsCount = false; # Hide incoming friend requests count.
        hideMessageRequestsCount = false; # Hide message requests count.
        hidePremiumOffersCount = true; # Hide nitro offers count.
      };

      NoTypingAnimation = {
        enabled = true;
      };

      PermissionsViewer = {
        enabled = true;
        permissionsSortOrder = 0; # The sort method used for defining which role grants a user a certain permission (0: Highest Role, 1: Lowest Role).
      };

      RelationshipNotifier = {
        enabled = true;
        notices = true; # Show a notice at the top of your screen when removed.
        offlineRemovals = true; # Notify you when starting Discord if you were removed while offline.
        friends = true; # Notify when a friend removes you.
        friendRequestCancels = true; # Notify when a friend request is cancelled.
        servers = true; # Notify when removed from a server.
        groups = true; # Notify when removed from a group chat.
      };

      ReplyTimestamp = {
        enabled = true;
      };

      RoleColorEverywhere = {
        enabled = true;
        chatMentions = true; # Show role colors in chat mentions (including in the message box).
        memberList = true; # Show role colors in member list role headers.
        voiceUsers = true; # Show role colors in the voice chat user list.
        reactorsList = true; # Show role colors in the reactors list.
        pollResults = true; # Show role colors in the poll results.
        colorChatMessages = true; # Color chat messages based on the author's role color.
        messageSaturation = 40; # Intensity of message coloring (0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100).
      };

      ServerInfo = {
        enabled = true;
        sorting = "displayname"; # Username or applicable display name ("username", "displayname", "none").
      };

      ShowHiddenChannels = {
        enabled = true;
        channelStyle = 0; # The style used to display hidden channels (0: Classic, 1: Muted, 2: Show Unreads, 3: Muted and Show Unreads).
        showMode = 0; # The mode used to display hidden channels (0: Lock Icon replacing channel icon, 2: Eye icon on the right, 1: Lock icon on the right).
        defaultAllowedUsersAndRolesDropdownState = true; # Whether the allowed users and roles dropdown on hidden channels should be open by default.
      };

      ShowHiddenThings = {
        enabled = true;
        showTimeouts = true; # Show member timeout icons in chat.
        showInvitesPaused = true; # Show the invites paused tooltip in the server list.
        showModView = true; # Show the member mod view context menu item in all servers.
      };

      SilentMessageToggle = {
        enabled = true;
        persistState = "channels"; # How to persist the silent message toggle state ("none": Don't persist (reset on channel change), "channels": Persist between channels, "restarts": Persist between channels and restarts).
        autoDisable = false; # automatically disable the silent message toggle again after sending one.
      };

      SilentTyping = {
        enabled = true;
        enabledGlobally = true; # Toggle functionality of your own typing indicator globally.
        hideChatBoxTypingIndicators = false; # Hide other users' typing indicators from above the chat bar.
        hideMembersListTypingIndicators = false; # Hide other users' typing indicators from the members list.
        chatIcon = true; # Show an icon in the chat bar for modifying the plugin on the go.
        chatIconLeftClickAction = "global"; # What to do when left clicking the chat icon ("global": Toggle typing globally, "channel": Toggle typing in channel, "guild": Toggle typing in guild, "settings": Open plugin settings).
        chatIconMiddleClickAction = "global"; # What to do when middle clicking the chat icon ("global": Toggle typing globally, "channel": Toggle typing in channel, "guild": Toggle typing in guild, "settings": Open plugin settings).
        chatIconRightClickAction = "settings"; # What to do when right clicking the chat icon ("global": Toggle typing globally, "channel": Toggle typing in channel, "guild": Toggle typing in guild, "settings": Open plugin settings).
        chatContextMenu = true; # Show a dropdown in the chat context menu to modify plugin settings on the go.
        defaultHidden = true; # If enabled, the plugin will hide your typing from others in any DMs/channels/guilds/ not listed in "Disabled Locations" below. If disabled, the plugin will show your typing to others for any DMs/channels/guilds/ not listed in "Enabled Locations" below.
        enabledLocations = ""; # Enable functionality for these IDs. Accepts a comma separated list. Only used if "Default Hidden" is disabled ("ID-1,ID-2,ID-3").
        disabledLocations = ""; # Disable functionality for these IDs. Accepts a comma separated list. Only used if "Default Hidden" is enabled ("ID-1,ID-2,ID-3").
      };

      StickerPaste = {
        enabled = true;
      };

      TypingIndicator = {
        enabled = true;
        includeCurrentChannel = true; # Whether to show the typing indicator for the currently selected channel.
        includeMutedChannels = true; # Whether to show the typing indicator for muted channels.
        includeIgnoredUsers = true; # Whether to show the typing indicator for ignored users.
        includeBlockedUsers = true; # Whether to show the typing indicator for blocked users.
        indicatorMode = 3; # How should the indicator be displayed? (3: Avatars and animated dots, 1: Animated dots, 2: Avatars).
      };

      TypingTweaks = {
        enabled = true;
        showAvatars = true; # Show avatars in the typing indicator.
        showRoleColors = true; # Show role colors in the typing indicator.
        alternativeFormatting = true; # Show a more useful message when several users are typing.
        amITyping = true; # Shows you if other people can see you typing.
      };

      UserMessagesPronouns = {
        enabled = true;
        pronounsFormat = "LOWERCASE"; # The format for pronouns to appear in chat (“LOWERCASE”, “CAPITALIZED”).
        showSelf = true; # Whether to show pronouns for yourself.
      };

      UserVoiceShow = {
        enabled = true;
        showInUserProfileModal = false; # Show a user's Voice Channel indicator in their profile next to the name.
        showInMemberList = true; # Show a user's Voice Channel indicator in the member and DMs list.
        showInMessages = false; # Show a user's Voice Channel indicator in messages.
      };

      ValidReply = {
        enabled = true;
      };

      VoiceMessages = {
        enabled = true;
        noiseSuppression = false; # Whether to use noise suppression in voice messages.
        echoCancellation = false; # Whether to use echo cancellation in voice messages.
      };

      VolumeBooster = {
        enabled = true;
        multiplier = 2.0; # Volume multiplier (1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5).
      };

      WebKeybinds = {
        enabled = true;
      };

      WebScreenShareFixes = {
        enabled = true;
      };

      WhosWatching = {
        enabled = true;
        showPanel = true; # Show spectators under screenshare panel.
      };

      YoutubeAdblock = {
        enabled = true;
      };

      # Required Plugins
      EquicordHelper = {
        noMirroredCamera = false; # Prevents the camera from being mirrored on your screen.
        removeActivitySection = true; # Removes the activity section above member list.
        showYourOwnActivityButtons = false; # Shows your own activity buttons.
        refreshSlashCommands = false; # Refreshes Slash Commands to show newly added commands without restarting the client.
        forceRoleIcon = false; # Forces role icons to display next to messages in compact mode.
        accountStandingButton = false; # Show an account standing button in the header bar.
        restoreFileDownloadButton = false; # Adds back the Download button at the top right corner of files.
        noBulletPoints = false; # Stops you from typing markdown bullet points.
        noModalAnimation = false; # Remove the 300ms long animation when opening or closing modals.
        disableAdoptTagPrompt = false; # Disable the prompt to adopt tags.
        jsonGateway = false; # Forces JSON on gateway reconnect.
      };

      NoTrack = {
        disableAnalytics = true; # Disable Discord's tracking, i.e., analytics and 'science.'
      };

      Settings = {
        settingsLocation = "aboveNitro"; # Where to put the Equicord settings section ("top", "aboveNitro", "belowNitro", "aboveActivity", "belowActivity", "bottom").
      };
    };
  };
}
