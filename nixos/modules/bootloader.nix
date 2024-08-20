{
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
      };
    };

    plymouth = {
      enable = true;
      theme = "bgrt";
    };

    initrd.verbose = false;
    consoleLogLevel = 0;
    kernelParams = ["quiet" "udev.log_level=0"];
  };
}
