{ ... }:

{
  config = {
    disko.devices = {
      disk.ssd-1 = {
        type = "disk";
        device = "/dev/disk/by-id/ata-ST1000LM035-1RK172_ZDE4ER9L";
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
    };
  };
}
