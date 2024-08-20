{pkgs, ...}: {
  home.packages = with pkgs; [
    firefox
    mattermost-desktop
    vscode
    keepassxc
    thunderbird
    redshift
  ];
}
