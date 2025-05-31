{ ... }:

{
  config = {
    programs.nixcord = {
      discord = {
        settings = {
          "MINIMIZE_TO_TRAY" = false;
          "OPEN_ON_STARTUP" = false;
          "SKIP_HOST_UPDATE" = true;
          "DANGEROUS_ENABLE_DEVTOOLS_ONLY_ENABLE_IF_YOU_KNOW_WHAT_YOURE_DOING" = true;
          "openasar" = {
            "setup" = true;
          };
        };
      };

      config = {
        plugins = {
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

          clearURLs.enable = true;

          dontRoundMyTimestamps.enable = true;

          fakeNitro = {
            enable = true;
            enableEmojiBypass = true;
            emojiSize = 48;
            transformEmojis = true;
            enableStickerBypass = true;
            stickerSize = 160;
            transformStickers = true;
            transformCompoundSentence = false;
            enableStreamQualityBypass = true;
            useHyperLinks = true;
            hyperLinkText = "{{NAME}}";
            disableEmbedPermissionCheck = false;
          };

          fakeProfileThemes = {
            enable = true;
            nitroFirst = true;
          };

          fixYoutubeEmbeds.enable = true;

          forceOwnerCrown.enable = true;

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

          previewMessage.enable = true;

          replyTimestamp.enable = true;

          roleColorEverywhere = {
            enable = true;
            chatMentions = true;
            memberList = true;
            voiceUsers = true;
            reactorsList = true;
            colorChatMessages = true;
            messageSaturation = 30;
          };

          showHiddenChannels = {
            enable = true;
            hideUnreads = true;
            showMode = "muted";
            showHiddenChannels = true;
          };

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

          voiceMessages = {
            enable = true;
            noiseSuppression = true;
            echoCancellation = true;
          };

          youtubeAdblock.enable = true;
        };
      };
    };
  };
}
