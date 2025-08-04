{ config, pkgs, ... }:

{
    home.username = "aeksel";
    home.homeDirectory = "/home/aeksel";
    home.stateVersion = "25.05";

    programs.bash = {
        enable = true;
	shellAliases = {
	    nix-build = "sudo nixos-rebuild switch";
	    nix-home = "sudo nvim /etc/nixos/home.nix";
	    nix-conf = "sudo nvim /etc/nixos/configuration.nix";
	    nix-push = "cd /etc/nixos && git add . && git commit -m 'Update nix config' && git push";
	};
    };
}
