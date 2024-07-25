{ pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.obs-studio.enable = true;

  home.packages = with pkgs; [
    slack
	discord
	prismlauncher
	spotify
	gimp
	vlc
    gparted
	pdfsam-basic
	libreoffice-qt
	hunspell
	hunspellDicts.en_US 
  ];
}
