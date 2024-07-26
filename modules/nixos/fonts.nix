{ pkgs, ... }:

{
  config = {
    fonts.packages = with pkgs; [
      noto-fonts
	  jost
	  (nerdfonts.override { fonts = [ "FiraCode" ]; })
	];
  };
}
