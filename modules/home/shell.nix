{ pkgs, ... }:

{
  config = {
    programs.starship.enable = true;
    home.file.".config/starship.toml".source = ./starship/starship.toml;

	programs.carapace.enable = true;
	programs.carapace.enableNushellIntegration = true;

	programs.nushell = {
      enable = true;
	  configFile.source = ./nushell/config.nu;
	};
    programs.fish.enable = true;
    programs.fish.interactiveShellInit = ''
      fastfetch
	'';

	programs.fish.shellAliases = {
	  # Git alias for tracking the NixOS configuration
      gix = "git --git-dir=$HOME/nixfiles/ --work-tree=/etc/nixos/";
	};

	programs.zoxide.enable = true;
	programs.zoxide.enableNushellIntegration = true;
	programs.fastfetch.enable = true;
  };
}
