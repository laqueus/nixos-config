{
  description = "NixOS system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
       ./configuration.nix
       ./hardware-configuration.nix
       ({ pkgs, ...}: {
	 environment.systemPackages = with pkgs; [
	    neovim
	    joplin-desktop
	    anki-bin
	 ];
       })
     
      ];
     
    };

    
  };
}
