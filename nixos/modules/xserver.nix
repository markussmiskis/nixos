{pkgs, ...}: {
  # Gnome
  services = {
    xserver = {
      enable = true;
      desktopManager.gnome.enable = true;
      displayManager.gdm.enable = true;
      excludePackages = with pkgs; [
        xterm
      ];
    };
  };

  environment.gnome.excludePackages =
    (with pkgs; [
      snapshot
      loupe
      gnome-photos
      gnome-tour
      gnome-console
      gnome-connections
    ])
    ++ (with pkgs.gnome; [
      geary
      baobab
      epiphany
      simple-scan
      totem
      yelp
      evince
      file-roller
      gnome-contacts
      gnome-calendar
      gnome-logs
      gnome-maps
      gnome-music
      gnome-screenshot
      gnome-disk-utility
      gnome-system-monitor
      gnome-weather
    ]);
}
