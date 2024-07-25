{ ... }:

{
  imports = [
    ./applications.nix
	./shell.nix
	./development.nix
  ];
  config = { home.stateVersion = "24.05"; };
}
