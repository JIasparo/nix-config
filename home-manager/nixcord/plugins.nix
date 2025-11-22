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
        forceOpen = false;
        keepIcons = false;
        showFolderIcon = "never";
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

      clearURLs.enable = true;

      dontRoundMyTimestamps.enable = true;

      fakeNitro = {
        enable = true;
        enableEmojiBypass = false;
        emojiSize = 48;
        transformEmojis = true;
        useEmojiHyprLinks = true;
        enableStickerBypass = false;
        stickerSize = 160;
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
        messages = "serverDefault";
        everyone = false;
        role = false;
        highlights = true;
        events = true;
        showAllChannels = true;
      };

      noTypingAnimation.enable = true;

      permissionsViewer = {
        enable = true;
        permissionsSortOrder = "highestRole";
      };

      replyTimestamp.enable = true;

      roleColorEverywhere = {
        enable = true;
        chatMentions = true;
        memberList = true;
        voiceUsers = true;
        reactorsList = true;
        colorChatMessages = true;
        messageSaturation = 40;
      };

      serverInfo.enable = true;

      settings = {
        enable = true;
        settingsLocation = "belowNitro";
      };

      showHiddenChannels = {
        enable = true;
        hideUnreads = true;
        showMode = "muted";
        showHiddenChannels = true;
      };

      stickerPaste.enable = true;

      typingIndicator = {
        enable = true;
        includeCurrentChannel = true;
        includeMutedChannels = true;
        includeBlockedUsers = true;
        indicatorMode = "both";
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
        showVoiceChannelSectionHeader = true;
      };

      validReply.enable = true;

      voiceMessages = {
        enable = true;
        noiseSuppression = true;
        echoCancellation = true;
      };

      volumeBooster = {
        enable = true;
        multiplier = 2;
      };

      youtubeAdblock.enable = true;
    };
  };
}
