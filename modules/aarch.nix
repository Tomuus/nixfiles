{ ... }:

{
	flake.nixosModules.aarch = { pkgs, ... }: {
			environment.systemPackages = with pkgs; [
		    fex
    		muvm
				squashfuse
				squashfsTools
  	];
	};
}
