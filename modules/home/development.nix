{ pkgs, ... }:

{
  config = {
    programs.git = {
	  enable = true;

	  userEmail = "jettb6@gmail.com";
	  userName = "commonkestrel";
    };
	programs.gh.enable = true;

	programs.direnv.enable = true;

	home.packages = with pkgs; [
      rustc
	  cargo
	  rustfmt
	  clippy
	  go
	  jdk
	  nodejs_22
	  typescript
	  nodePackages.webpack
	  nodePackages.webpack-cli
	  nixfmt-classic
	  python3
	  gcc
	  avrdude
	  avrdudess
	  ravedude
	  arduino
	  arduino-ide
	  zig
	  verilog
	  logisim-evolution
	];
  };
}
