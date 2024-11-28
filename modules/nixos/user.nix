{ pkgs, lib, ... }:

{
  config = {
    users.users.kestrel = {
      isNormalUser = true;
      createHome = true;
      initialPassword = "password123!";
      description = "Kestrel";
      extraGroups = [
        "networkManager"
	    "wheel"
		"uinput"
      ];
    };   
	  
    home-manager = {
      useGlobalPkgs = true;
	  useUserPackages = true;

	  users = lib.attrsets.genAttrs ["kestrel"] (_: {});
    };

    programs.bash.interactiveShellInit = ''
      if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
      then
        shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
        exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
      fi
	'';
  };
}
