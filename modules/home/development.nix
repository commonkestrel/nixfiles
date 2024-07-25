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

    programs.vscode.enable = true;

	home.packages = with pkgs; [
      rustc
	  cargo
	  go
	  jdk
	  rustfmt
	  clippy
	  nixfmt
	  python3
	  gcc
	];
  };
}
