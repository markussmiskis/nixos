{pkgs, ...}: {
  services.xserver = {
    enable = true;
    windowManager.i3.enable = true;
    displayManager.lightdm.enable = true;
    excludePackages = with pkgs; [
      xterm
    ];
  };
}
