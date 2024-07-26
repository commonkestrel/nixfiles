{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;

	mutableExtensionsDir = false;

	extensions = with pkgs.vscode-extensions; [
	  # Language extensions
      ms-vscode.cpptools-extension-pack
	  attilabuti.brainfuck-syntax
	  golang.go
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

	  # Nix
	  bbenoist.nix
	  brettm12345.nixfmt-vscode

	  # Rust
	  tamasfe.even-better-toml
      rust-lang.rust-analyzer

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
	  equinusocio.vsc-material-theme-icons
	] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
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
		hash = "sha256-d8kwQVoG/MOujmvMaX6Y0wl85L2PNdv2EnqTZKo8pGk=";
	  }
	];

	userSettings = {
      "window.titleBarStyle" = "custom";
	  "workbench.colorTheme" = "Pink Panda Theme";
	  "workbench.iconTheme" = "material-icon-theme";
	  "editor.wordWrap" = "off";
	  "diffEditor.wordWrap" = "off";
	  "editor.guides.indentation" = false;
	  "editor.inlineSuggest.enabled" = true;
	  "terminal.integrated.defaultProfile.windows" = "fish";
	  "git.autoFetch" = true;
	  "git.openRepositoryInParentFolders" = "never";
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
	};
  };
}