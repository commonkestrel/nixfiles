{ pkgs, ... }:

{
  programs.obs-studio.enable = true;

  home.packages = with pkgs; [
    firefox
    ungoogled-chromium
	slack
	discord
	prismlauncher
	spotify
	gimp
	krita
	kdePackages.kdenlive
	vlc
	obsidian
    gparted
	pdfsam-basic
	libreoffice-qt
	notepad-next
	teams-for-linux
	thunderbird
	signal-desktop
	zoom-us
	audacity
    blender
	webcamoid
	kdePackages.kdeplasma-addons
	pinta
	libresprite
	pulseview
	sigrok-firmware-fx2lafw
	hunspell
	hunspellDicts.en_US 
  ];
}
