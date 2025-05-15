{ ... }:

{
  config = {
    disko.devices = {
      disk.ssd-1 = {
        type = "disk";
        device = "/dev/disk/by-id/ata-Crucial_CT275MX300SSD1_16441481DBAB";
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

      disk.ssd-2 = {
        type = "disk";
        device = "/dev/disk/by-id/ata-WDC_WDS100T2B0A-00SM50_20377E804273";
        content = {
          type = "gpt";
          partitions = {
            main = {
              size = "100%";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/mnt/ssd-2";
              };
            };
          };
        };
      };

      disk.hdd-1 = {
        type = "disk";
        device = "/dev/disk/by-id/ata-WDC_WD10EZEX-75M2NA0_WD-WCC3FCZT12NA";
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
