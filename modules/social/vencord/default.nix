{ config, pkgs, ... }:

 
{
	environment.systemPackages = with pkgs; [
		vesktop
	];

	environment.etc."xdg/Vencord/settings.json".source = ./settings.json;
}
