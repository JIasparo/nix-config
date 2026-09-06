{ ... }:

{
  config = {
    disko.devices = {
      disk.ssd-1 = {
        type = "disk";
        device = "/dev/disk/by-id/ata-WDC_WDS240G2G0A-00JH30_191391455401";
        content = {
          type = "gpt";
          partitions = {
            EFI = {
              size = "500M";
              type = "EF00";
              priority = 1;
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "umask=0077" ];
              };
            };

            root = {
              size = "100%";
              priority = 2;
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/";
              };
            };
          };
        };
      };

      disk.hdd-1 = {
        type = "disk";
        device = "/dev/disk/by-id/ata-WDC_WD10EZEX-08WN4A0_WD-WCC6Y6EAYFNH";
        content = {
          type = "gpt";
          partitions = {
            main = {
              size = "100%";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/mnt/hdd-1";
              };
            };
          };
        };
      };
    };
  };
}
