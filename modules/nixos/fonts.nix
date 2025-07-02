{ pkgs, ... }:

{
  config = {
    fonts.packages = with pkgs; [
	  fira-code
      noto-fonts
	  jost
	  nerd-fonts._0xproto
	  nerd-fonts.fira-code
	];
  };
}
