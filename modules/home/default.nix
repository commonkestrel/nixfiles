{ ... }:

{
  imports = [
    ./applications.nix
	./shell.nix
	./development.nix
	./editor.nix
  ];
  config = { home.stateVersion = "24.05"; };
}
