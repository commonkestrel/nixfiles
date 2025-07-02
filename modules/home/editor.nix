{ pkgs, lib, ... }:

{
  config = {
    home.packages = with pkgs; [
      jetbrains.ruby-mine
	];
  programs.vscode = {
    enable = true;

	mutableExtensionsDir = false;

	extensions = with pkgs.vscode-extensions; [
	  # Language extensions
	  attilabuti.brainfuck-syntax
	  golang.go
	  shopify.ruby-lsp

	  ecmel.vscode-html-css
	  wholroyd.jinja
	  ms-toolsai.jupyter
	  mathiasfrohlich.kotlin
	  james-yu.latex-workshop
	  colejcummins.llvm-syntax-highlighting
      ms-vscode.makefile-tools
	  zainchen.json
	  ms-vscode.powershell
	  mechatroner.rainbow-csv
      redhat.vscode-yaml
	  redhat.vscode-xml
      mshr-h.veriloghdl
	  ziglang.vscode-zig
	  gleam.gleam

	  # Nix
	  bbenoist.nix
	  brettm12345.nixfmt-vscode

	  # Rust
	  tamasfe.even-better-toml

	  # C++
	  ms-vscode.cmake-tools
	  ms-vscode.cpptools

      # Python
	  ms-python.python
	  ms-python.debugpy
	  ms-python.vscode-pylance

	  # Javascript
	  mikestead.dotenv
	  dbaeumer.vscode-eslint
	  christian-kohler.npm-intellisense

      # Java
	  redhat.java
	  vscjava.vscode-gradle

	  # Containers
	  ms-azuretools.vscode-docker
	  ms-kubernetes-tools.vscode-kubernetes-tools
	  ms-vscode-remote.remote-containers

      # Git
	  donjayamanne.githistory
	  alefragnani.project-manager
	  eamodio.gitlens
	  codezombiech.gitignore
	  github.vscode-github-actions


      # Viewers
	  grapecity.gc-excelviewer
	  ms-vscode.hexeditor
	  bierner.github-markdown-preview

      # Utilities
	  ms-vsliveshare.vsliveshare
      vadimcn.vscode-lldb
	  christian-kohler.path-intellisense
	  ms-vscode.live-server
      stkb.rewrap
	  ms-vscode-remote.remote-ssh
	  ms-vscode-remote.remote-ssh-edit
      humao.rest-client
	  gruntfuggly.todo-tree
	  tomoki1207.pdf
	  wakatime.vscode-wakatime

	  # Themes
	] ++ [
      pkgs.wpilib.vscode-wpilib
	] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
	    name = "rust-analyzer";
		publisher = "rust-lang";
        version = "0.4.2113";
		hash = "sha256-pnFZpOGEVPys6aIspUgylc7K4eeL1HC8PzyfP222SZQ=";
	  }
	  {
        name = "pinkpanda-dark-theme";
		publisher = "TheHelpfulTipper";
		version = "0.2.1";
		hash = "sha256-vUq1WN8F7WRlrONufzbNrAM38dIxfFpQJvjI/zA/tTs=";
	  }
	  {
        name = "firacode";
		publisher = "SeyyedKhandon";
		version = "2.2.1";
		hash = "sha256-BLaP+dn6p431YuByv727vsEeiNr2Kb4bDum4AFJWuro=";
	  }
	  {
        name = "platformio-ide";
		publisher = "PlatformIO";
		version = "3.3.3";
		hash = "sha256-cVYnFhdeClHhuVaTWRU2IDIA1mFq1iLveZUIhEhMSck=";
	  }
	  {
        name = "nix-env-selector";
		publisher = "arrterian";
		version = "1.0.11";
		hash = "sha256-dK0aIH8tkG/9UGblNO0WwxJABBEEKEy4nSmIwdDpf4Q=";
	  }
	  {
        name = "markdown-table-prettify";
		publisher = "darkriszty";
		version = "3.6.0";
		hash = "sha256-FZTiNGSY+8xk3DJsTKQu4AHy1UFvg0gbrzPpjqRlECI=p";
	  }
	  {
	    name = "vscode-quick-select";
		publisher = "dbankier";
		version = "0.2.9";
		hash = "sha256-XeyjXU+ZdpZ7VOK4oECZp4As3MZxhExq6lXMTMJRAcA=";
	  }
	  {
        name = "sorbet-vscode-extension";
		publisher = "sorbet";
		version = "0.3.41";
		hash = "sha256-L6ARx2srhai8RYPAPuXFMAAzRDo1CvRGY4/TOqmh9WA=";
	  }
	];

	userSettings = {
      "window.titleBarStyle" = "custom";
	  "workbench.colorTheme" = "Pink Panda Theme";
	  "editor.wordWrap" = "off";
	  "diffEditor.wordWrap" = "off";
	  "editor.guides.indentation" = false;
	  "editor.inlineSuggest.enabled" = true;
	  "terminal.integrated.defaultProfile.windows" = "fish";
	  "git.autofetch" = true;
	  "git.openRepositoryInParentFolders" = "never";
	  "git.enableSmartCommit" = true;
	  "git.confirmSync" = false;
	  "editor.fontLigatures" = true;
	  "editor.guides.bracketPairs" = false;
	  "files.refactoring.autoSave" = true;
	  "files.autoSave" = "afterDelay";
	  "explorer.confirmDelete" = false;
	  "explorer.confirmDragAndDrop" = false;
	  "redhat.telemetry.enabled" = false;
	  "python.languageServer" = "Pylance";
	  "css.hover.references" = false;
	  "css.hover.documentation" = false;
	  "terminal.integrated.env.linux" = {
        "VSCODE_INTEGRATED_SHELL" = "true";
	  };
	  "rust-analyzer.server.path" = "/etc/profiles/per-user/kestrel/bin/rust-analyzer";
	  "editor.fontFamily" = "Fira Code";
	};
  };

  programs.zed-editor = {
    enable = true;
	extensions = [
	  "assembly-syntax"
	  "wat"
	  "serendipity"
	  "gleam-theme"
	  "nix"
	  "toml"
	  "make"
	  "gleam"
	  "java"
	  "html"
	  "xml"
	  "zig"
	  "kotlin"
	  "terraform"
	  "erlang"
	  "scss"
	  "typst"
	  "wakatime"
	  "nu"
	  "verilog"
	  "fish"
	];

	userSettings = {
      assistant.enabled = false;

	  node = {
        path = lib.getExe pkgs.nodejs;
		npm_path = lib.getExe' pkgs.nodejs "npm";
	  };

	  hour_format = "hour12";
	  auto_update = false;
	  terminal = {
        alternate_scroll = "off";
		blinking = "off";
		copy_on_select = false;
		dock = "bottom";
		detect_venv = {
          on = {
            directories = [".env" "env" ".venv" "venv"];
			activate_script = "fish";
		  };
		};
		font_family = "FiraCode Nerd Font";
		line_height = "comfortable";
		option_as_meta = false;
		button = true;
		shell = "system";
		toolbar = {
          title = true;
		};
		working_directory = "current_project_directory";
	  };

	  lsp = {
        rust-analyzer = {
          binary = {
            path_lookup = true;
		  };
		};
		nix = {
          binary = {
            path_lookup = true;
		  };
		};
		gleam = {
          binary = {
            path_lookup = true;
		  };
		};
	  };

	  vim_mode = false;
	  load_direnv = "shell_hook";
	  base_keymap = "VSCode";
	  show_whitespaces = "all";
	  theme = {
        mode = "dark";
		dark = "Gleam Dark";
	  };
      ui_font_size = 16;
	  buffer_font_size = 16;
	  autosave = {
        "after_delay" = {
          "milliseconds" = 1000;
		};
	  };
	};
  };
  };
}
