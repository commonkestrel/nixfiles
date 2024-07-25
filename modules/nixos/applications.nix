{ pkgs, ... }:

{
  config = {
    programs.steam = {
      enable = true;
	  remotePlay.openFirewall = true;
    };

    virtualisation.docker.enable = true;
    
	programs.neovim = {
	  enable = true;
	  defaultEditor = true;
	};
  };
}
