{ ... }:

{
  imports = [
    ./frc.nix
	./user.nix
	./nix.nix
	./applications.nix
	./fonts.nix
  ];
  config = { system.stateVersion = "24.05"; };
}
