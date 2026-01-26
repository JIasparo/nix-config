{ ... }:

{
  config = {
    programs.nixcord.config.plugins = {
      accountPanelServerProfile = {
        enable = true;
        prioritizeServerProfile = true;
      };

      alwaysExpandRoles = {
        enable = true;
        hideArrow = true;
      };

      betterFolders = {
        enable = true;
        sidebar = true;
        sidebarAnim = false;
        closeAllFolders = true;
        closeAllHomeButton = false;
        closeOthers = true;
        closeServerFolder = true;
        forceOpen = false;
        keepIcons = false;
        showFolderIcon = 0; # 0 = Never, 1 = Always, 2 = When more than one folder is expanded
      };

      betterSettings = {
        enable = true;
        disableFade = true;
        organizeMenu = true;
        eagerLoad = true;
      };

      biggerStreamPreview.enable = true;

      callTimer = {
        enable = true;
        format = "stopwatch"; # "stopwatch", "human"
      };

      ClearURLs.enable = true;

      dontRoundMyTimestamps.enable = true;

      fakeNitro = {
        enable = true;
        enableEmojiBypass = false;
        emojiSize = 48.0;
        transformEmojis = true;
        useEmojiHyperLinks = true;
        enableStickerBypass = false;
        stickerSize = 160.0;
        transformStickers = true;
        useStickerHyperLinks = true;
        transformCompoundSentence = false;
        enableStreamQualityBypass = true;
        hyperLinkText = "{{NAME}}";
        disableEmbedPermissionCheck = false;
      };

      fakeProfileThemes = {
        enable = true;
        nitroFirst = true;
      };

      fixYoutubeEmbeds.enable = true;

      forceOwnerCrown.enable = true;

      fullSearchContext.enable = true;

      gameActivityToggle = {
        enable = true;
        oldIcon = true;
        #location = "PANEL"; # "PANEL", "TOOLBOX"
      };

      gifPaste.enable = true;

      loadingQuotes = {
        enable = true;
        replaceEvents = true;
        enablePluginPresetQuotes = false;
        enableDiscordPresetQuotes = false;
        additionalQuotes = ''
          Good girl :3
          |You're such a good girl
          |Mrrp mreow meow :3 :3 :3 
          |Mreep mreeow :3 
          |Trans rights are human rights 🏳️‍⚧️
          |Be gay, do crime
          |Reminder to stay hydrated! <3
        '';
        additionalQuotesDelimiter = "|";
      };

      mentionAvatars = {
        enable = true;
        showAtSymbol = false;
      };

      messageLinkEmbeds = {
        enable = true;
        messageBackgroundColor = false;
        automodEmbeds = "prefer"; # "always", "prefer", "never"
        listMode = "blacklist"; # "blacklist", "whitelist"
        #idList = ""; # "ID-1,ID-2,ID-3"
        #clearMessageCache = {};
      };

      messageLogger = {
        enable = true;
        deleteStyle = "overlay"; # "text", "overlay"
        logDeletes = true;
        collapseDeleted = false;
        logEdits = true;
        inlineEdits = true;
        ignoreBots = true;
        ignoreSelf = false;
        #ignoreUsers = ""; "ID-1,ID-2,ID-3"
        #ignoreChannels = ""; # "ID-1,ID-2,ID-3"
        #ignoreGuilds = ""; # "ID-1,ID-2,ID-3"
        separatedDiffs = true;
        showEditDiffs = true;
      };

      MutualGroupDMs.enable = true;

      newGuildSettings = {
        enable = true;
        guild = true;
        messages = 1; # 0 = All messages, 1 = Only @mentions, 2 = Nothing, 3 = Server default
        everyone = false;
        role = false;
        highlights = true;
        events = true;
        showAllChannels = true;
        mobilePush = false;
        voiceChannels = false;
      };

      noPendingCount = {
        enable = true;
        hideFriendRequestsCount = false;
        hideMessageRequestsCount = false;
        hidePremiumOffersCount = true;
      };

      notificationVolume = {
        enable = true;
        notificationVolume = 75.0;
      };

      noTypingAnimation.enable = true;

      permissionsViewer = {
        enable = true;
        permissionsSortOrder = 0; # 0 = Highest Role, 1 = Lowest Role
      };

      relationshipNotifier = {
        enable = true;
        notices = true;
        offlineRemovals = true;
        friends = true;
        friendRequestCancels = true;
        servers = true;
        groups = true;
      };

      replyTimestamp.enable = true;

      roleColorEverywhere = {
        enable = true;
        chatMentions = true;
        memberList = true;
        voiceUsers = true;
        reactorsList = true;
        colorChatMessages = true;
        messageSaturation = 40.0;
        pollResults = true;
      };

      secretRingToneEnabler = {
        enable = true;
        #onlySnow = true;
      };

      serverInfo = {
        enable = true;
        sorting = "displayname"; # "username", "displayname", "none"
      };

      showHiddenChannels = {
        enable = true;
        channelStyle = 0; # 0 = Classic, 1 = Muted, 2 = Show Unreads, 3 = Muted and Show Unreads
        defaultAllowedUsersAndRolesDropdownState = true;
        showMode = 0; # 0 = Lock Icon replacing channel icon, 2 = Eye icon on the right, 1 = Lock icon on the right
      };

      showHiddenThings = {
        enable = true;
      };

      silentMessageToggle = {
        enable = true;
        persistState = "restarts"; # "none", "channels", "restarts"
        autoDisable = false;
      };

      silentTyping = {
        enable = true;
        chatIcon = true;
        chatContextMenu = true;
        enabledGlobally = true;
      };

      stickerPaste.enable = true;

      typingIndicator = {
        enable = true;
        includeCurrentChannel = true;
        includeMutedChannels = true;
        includeBlockedUsers = true;
        includeIgnoredUsers = true;
        indicatorMode = 1; # 1 = Animated dots, 2 = Avatars
      };

      typingTweaks = {
        enable = true;
        showAvatars = true;
        showRoleColors = true;
        alternativeFormatting = true;
      };

      userMessagesPronouns = {
        enable = true;
        pronounsFormat = "LOWERCASE"; # “LOWERCASE”, “CAPITALIZED”
        showSelf = true;
      };

      userVoiceShow = {
        enable = true;
        showInMemberList = true;
        showInMessages = false;
        showInUserProfileModal = false;
      };

      validReply.enable = true;

      voiceMessages = {
        enable = true;
        noiseSuppression = true;
        echoCancellation = true;
      };

      volumeBooster = {
        enable = true;
        multiplier = 2.0;
      };

      youtubeAdblock.enable = true;
    };
  };
}
