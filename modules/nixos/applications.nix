{ pkgs, ... }:

{
  config = {
    services.tailscale.enable = true;
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
    };

    virtualisation.docker.enable = true;
    virtualisation.virtualbox.host.enable = true;
    virtualisation.virtualbox.guest.enable = true;
	
	programs.neovim = {
	  enable = true;
	  defaultEditor = true;
	};
  };
}
