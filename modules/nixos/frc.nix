{ pkgs, ... }:

{
  config = {
    environment.systemPackages = with pkgs; [
	  advantagescope
	  choreo
      wpilib.smartdashboard
      wpilib.shuffleboard
    ];
  };
}
