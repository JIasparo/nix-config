{ ... }:

{
  config = {
    programs.nixcord.config.plugins = {
      accountPanelServerProfile = {
        enable = true;
        prioritizeServerProfile = true;
      };

      alwaysExpandRoles.enable = true;

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
        format = "stopwatch";
      };

      clearUrLs.enable = true;

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

      gifPaste.enable = true;

      mentionAvatars = {
        enable = true;
        showAtSymbol = false;
      };

      messageLinkEmbeds = {
        enable = true;
        messageBackgroundColor = false;
        automodEmbeds = "prefer";
      };

      messageLogger = {
        enable = true;
        deleteStyle = "overlay";
        logDeletes = true;
        collapseDeleted = false;
        logEdits = true;
        inlineEdits = true;
        ignoreBots = true;
        ignoreSelf = false;
        #ignoreUsers = "";
        #ignoreChannels = "";
        #ignoreGuilds = "";
      };

      mutualGroupDMs.enable = true;

      newGuildSettings = {
        enable = true;
        guild = true;
        messages = 3; # 0 = All messages, 1 = Only @mentions, 2 = Nothing, 3 = Server default
        everyone = false;
        role = false;
        highlights = true;
        events = true;
        showAllChannels = true;
        mobilePush = false;
        voiceChannels = false;
      };

      noTypingAnimation.enable = true;

      permissionsViewer = {
        enable = true;
        permissionsSortOrder = 0; # 0 = Highest Role, 1 = Lowest Role
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

      serverInfo.enable = true;

      #settings = {
      #  enable = true;
      #  settingsLocation = "belowNitro";
      #};

      showHiddenChannels = {
        enable = true;
        channelStyle = 0;
        defaultAllowedUsersAndRolesDropdownState = true;
        showMode = 0; # 0 = Lock Icon replacing channel icon, 2 = Eye icon on the right, 1 = Lock icon on the right
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
        pronounsFormat = "LOWERCASE";
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
