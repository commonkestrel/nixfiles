{ pkgs, ... }:

{
  config = {
    environment.systemPackages = with pkgs; [
	  advantagescope
	  pathplanner
	  choreo
	  # wpilib.buildBinTool
	  # wpilib.buildJavaTool
	  wpilib.roborioteamnumbersetter
	  wpilib.sysid
      wpilib.smartdashboard
      wpilib.shuffleboard
    ];
  };
}
