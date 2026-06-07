{
  preservation = {
    enable = true;

    preserveAt."/persistent" = {
      directories = [
        "/etc/NetworkManager/system-connections"
        "/var/db/sudo/lectured"
      ];

      files = [
        #
      ];

      users.alice = {
        directories = [
          "nix-config"
        ];

        files = [
          ".bash_history"
        ];
      };
    };
  };
}
