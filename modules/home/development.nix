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
	  virtualbox
      rustup 
	  cargo-valgrind
	  cargo-tauri
	  cargo-binutils
	  trunk
	  go
	  gleam
	  erlang
	  rebar3
	  jdk17
	  gradle
	  nodejs_22
	  typescript
	  nodePackages.webpack
	  nodePackages.webpack-cli
	  nixfmt-classic
	  python312
	  python312Packages.pip
	  gcc
	  typst
	  typst-lsp
	  avrdude
	  avrdudess
	  ravedude
	  arduino
	  zig
	  valgrind
	  verilog
	  asciinema
	  nss
	  qemu
	  dosbox
	  nasm
	  gnumake
	  wireshark
	];
  };
}
