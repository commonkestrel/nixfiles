{ pkgs, ... }:

{
  config = {
    environment.systemPackages = with pkgs; [
	  advantagescope
	  pathplanner
	  choreo
	  wpilib.wpilib-utility
	  wpilib.roborioteamnumbersetter
	  wpilib.sysid
      wpilib.smartdashboard
      wpilib.shuffleboard
    ];
  };
}
