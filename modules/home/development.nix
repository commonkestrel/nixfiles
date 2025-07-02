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

	home.sessionVariables.LD_LIBRARY_PATH = "${pkgs.libGL}/lib:${pkgs.gtk3}/lib:${pkgs.glib.out}/lib:${pkgs.xorg.libXtst}/lib";

	home.packages = with pkgs; [
	  nixd
      rustup 
	  cargo-valgrind
	  cargo-tauri
	  cargo-binutils
	  cargo-cross
	  trunk
	  go
	  ruby
	  rubyfmt
	  ruby-lsp
	  libyaml
	  gleam
	  erlang
	  rebar3
	  (jdk23.override { enableJavaFX = true; })
	  libGL
	  gtk3
	  glib
      xorg.libXtst
	  scenebuilder
	  maven
	  gradle
	  nodejs_22
	  typescript
	  nodePackages.webpack-cli
	  nixfmt-classic
	  python312
	  python312Packages.pip
	  gcc
	  typst
	  tinymist
	  pkgsCross.avr.buildPackages.gcc
	  avrdude
	  avrdudess
	  ravedude
	  micronucleus
	  elf2nucleus
	  arduino
	  zig
	  valgrind
	  verilog
	  logisim-evolution
	  asciinema
	  nss
	  qemu
	  dosbox
	  nasm
	  gnumake
	  wireshark
	  zbar
	  kicad
	];
  };
}
