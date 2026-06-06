{
  preservation = {
    enable = true;

    preserveAt."/persistent" = {
      directories = [
        #
      ];

      files = [
        #
      ];

      users.alice = {
        directories = [
          "nix-config"
        ];

        files = [
          #
        ];
      };
    };
  };
}
